const express = require('express');
const bodyParser = require('body-parser');
const { Client } = require('pg'); // Usando pg para PostgreSQL
const cors = require('cors');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Configurar middleware
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Configurar o motor de visualização
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Configurar a conexão com o banco de dados PostgreSQL
const client = new Client({
    connectionString: 'postgres://default:Ft7RevzkB0nP@ep-solitary-mode-a4wbee0i.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require',
});

client.connect((err) => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados PostgreSQL:', err.stack);
        return;
    }
    console.log('Conectado ao banco de dados PostgreSQL');
});

// Configurar a rota para renderizar index.ejs com dados do banco
app.get('/', (req, res) => {
    const sql = 'SELECT * FROM desfribiladors';
    client.query(sql, (err, result) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.render('index', { desfribiladors: result.rows });
    });
});

// Rota para cadastrar desfibriladores
app.post('/cadastrar', (req, res) => {
    const { nome, endereco, informacoes, latitude, longitude } = req.body;
    const sql = 'INSERT INTO desfribiladors (nome, endereco, informacoes, latitude, longitude) VALUES ($1, $2, $3, $4, $5) RETURNING id';
    const values = [nome, endereco, informacoes, latitude, longitude];

    client.query(sql, values, (err, result) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.status(200).json({ message: 'Desfibrilador cadastrado com sucesso!', id: result.rows[0].id });
    });
});

// Servir arquivos estáticos (CSS, JS)
app.use(express.static(path.join(__dirname, 'public')));

// Iniciar o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
