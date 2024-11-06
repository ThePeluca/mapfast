const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
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

// Configurar a conexão com o banco de dados
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',     // seu usuário do MySQL
    password: '', // sua senha do MySQL
    database: 'desfibriladors' // nome do seu banco de dados
});

// Conectar ao banco de dados
db.connect(err => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados: ' + err.stack);
        return;
    }
    console.log('Conectado ao banco de dados MySQL como id ' + db.threadId);
});

// Configurar a rota para renderizar index.ejs com dados do banco
app.get('/', (req, res) => {
    const sql = 'SELECT * FROM desfribiladors';

    db.query(sql, (error, results) => {
        if (error) {
            return res.status(500).json({ error: error.message });
        }
        res.render('index', { desfribiladors: results });
    });
});

// Rota para cadastrar desfibriladores
app.post('/cadastrar', (req, res) => {
    const { nome, endereco, informacoes, latitude, longitude } = req.body;

    const sql = 'INSERT INTO desfibriladores (nome, endereco, informacoes, latitude, longitude) VALUES (?, ?, ?, ?, ?)';
    db.query(sql, [nome, endereco, informacoes, latitude, longitude], (error, results) => {
        if (error) {
            return res.status(500).json({ error: error.message });
        }
        res.status(200).json({ message: 'Desfibrilador cadastrado com sucesso!', id: results.insertId });
    });
});

// Servir arquivos estáticos (CSS, JS)
app.use(express.static(path.join(__dirname, 'public')));

// Iniciar o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
