import mysql from "mysql2";

// create the connection to database
const db = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '',
    database: 'pos_db'
});

export default db;