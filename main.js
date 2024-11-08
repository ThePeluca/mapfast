const express = require("express");
const bodyParser = require("body-parser");
const { Client } = require("pg"); // Usando pg para PostgreSQL
const cors = require("cors");
const path = require("path");
const axios = require("axios").default;

const app = express();
const PORT = process.env.PORT || 3000;

// Configurar middleware
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.json());

// Configurar o motor de visualização
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Configurar a conexão com o banco de dados PostgreSQL
const client = new Client({
  connectionString:
    "postgres://default:Ft7RevzkB0nP@ep-solitary-mode-a4wbee0i.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require",
});

client.connect((err) => {
  if (err) {
    console.error("Erro ao conectar ao banco de dados PostgreSQL:", err.stack);
    return;
  }
  console.log("Conectado ao banco de dados PostgreSQL");
});

// Configurar a rota para renderizar index.ejs com dados do banco
app.get("/", (req, res) => {

  let sql = "";
  if (req.query.busca) {
    sql = `SELECT * FROM desfribiladors WHERE nome ILIKE '%${req.query.busca}%' OR cidade ILIKE '%${req.query.busca}%' OR bairro ILIKE '%${req.query.busca}%' OR rua ILIKE '%${req.query.busca}%' OR numero ILIKE '%${req.query.busca}%'`;
  } else {
    sql = "SELECT * FROM desfribiladors";
  }

  client.query(sql, (err, result) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.render("index", { 
        desfribiladors: result.rows,
        busca: req.query.busca
    });
  });
});

// Rota para cadastrar desfibriladores
app.post("/cadastrar", async (req, res) => {
  const { nome, cidade, bairro, rua, numero } = req.body; // extraímos os dados da requisição

  // Configuração da requisição para a API de geolocalização
  const options = {
    method: "GET",
    url: "https://api.opencagedata.com/geocode/v1/json",
    params: {
      q: `${rua}, ${numero}, ${bairro}, ${cidade}, Brazil`, // Formatação do endereço
      key: "03c48dae07364cabb7f121d8c1519492", // Sua chave de API
      no_annotations: "1",
      language: "en",
    },
    headers: {
      "Content-Type": "application/json",
      "User-Agent":
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36",
      authority: "www.latlong.net",
      origin: "https://www.latlong.net",
    },
  };

  try {
    // Faz a requisição para obter as coordenadas
    const response = await axios.request(options);
    const { lat, lng } = response.data.results[0]?.bounds?.northeast || {}; // Adicionando checagem para valores indefinidos

    const longitude = lng || 0; // Valor padrão em caso de erro
    const latitude = lat || 0; // Valor padrão em caso de erro

    const values = [
      nome,
      cidade,
      bairro,
      rua,
      numero,
      latitude,
      longitude,
      new Date(),
      new Date(),
      0,
    ];

    // SQL para inserir os dados no banco
    const sql = `
        INSERT INTO desfribiladors (nome, cidade, bairro, rua, numero, latitude, longitude, "createdAt", "updatedAt", status)
        VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10)
      `;

    // Executando a query no banco de dados
    await client.query(sql, values);

    // Retorno de sucesso para o cliente
    return res.render("cadastrar", {
      success: "Desfibrilador cadastrado com sucesso",
    });
  } catch (error) {
    // Retorno de erro em caso de falha
    console.error(
      "Erro ao fazer requisição para API de geolocalização:",
      error
    );
    return res.render("cadastrar", {
      error: "Erro ao cadastrar desfibrilador",
    });
  }
});

app.get("/cadastrar", (req, res) => {
  res.render("cadastrar");
});

// Servir arquivos estáticos (CSS, JS)
app.use(express.static(path.join(__dirname, "public")));

// Iniciar o servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
