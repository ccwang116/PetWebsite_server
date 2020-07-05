const mysql = require("mysql2");

const pool = mysql.createPool({
    host: "localhost",
    port:"8889",
    user: "root",
    password: "root",
    database: "pet_website_db",
    waitForConnections: "true",
    connectLimit: 10,
    queneLimit: 0
});

module.exports = pool.promise();