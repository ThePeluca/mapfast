const express = require('express');
const bodyParser = require('body-parser');
const sqlite3 = require('sqlite3').verbose(); // Usando sqlite3
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

// Configurar a conexão com o banco de dados SQLite
const db = new sqlite3.Database('./database.db', (err) => { // Conexão com o banco SQLite
    if (err) {
        console.error('Erro ao conectar ao banco de dados SQLite:', err.message);
        return;
    }
    console.log('Conectado ao banco de dados SQLite');
});

// Configurar a rota para renderizar index.ejs com dados do banco
app.get('/', (req, res) => {
    const sql = 'SELECT * FROM desfribiladors';
    db.all(sql, [], (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.render('index', { desfribiladors: rows });
    });
});

// Rota para cadastrar desfibriladores
app.post('/cadastrar', (req, res) => {
    const { nome, endereco, informacoes, latitude, longitude } = req.body;
    const sql = 'INSERT INTO desfribiladors (nome, endereco, informacoes, latitude, longitude) VALUES (?, ?, ?, ?, ?)';

    db.run(sql, [nome, endereco, informacoes, latitude, longitude], function (err) {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.status(200).json({ message: 'Desfibrilador cadastrado com sucesso!', id: this.lastID });
    });
});

// Servir arquivos estáticos (CSS, JS)
app.use(express.static(path.join(__dirname, 'public')));

// Iniciar o servidor
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
