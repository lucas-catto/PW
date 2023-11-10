
const express = require('express');
const mysql   = require('mysql');
const cors    = require('cors');

const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'mcdonalds'
});

db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Conexão com o banco de dados estabelecida.');
});

const app = express();

app.use(cors());

app.get('/lanches', (req, res) => {
    let sql = 'SELECT * FROM lanches';
    db.query(sql, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
});

app.get('/lanche/:id', (req, res) => {
    let sql = `
    SELECT
        lanches.lancheNome,
        ingredientes.ingredienteNome,
        ingredientes_lanches.quantidade
    FROM lanches
    INNER JOIN ingredientes_lanches ON lanches.lancheId = ingredientes_lanches.lancheId
    INNER JOIN ingredientes ON ingredientes.ingredienteId = ingredientes_lanches.ingredienteId
    WHERE lanches.lancheId = ${db.escape(req.params.id)}`;

    db.query(sql, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            res.json(result);
        }
    });
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
