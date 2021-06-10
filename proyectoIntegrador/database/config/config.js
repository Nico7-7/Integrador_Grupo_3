require('dotenv').config();
module.exports = {
  "development": {
    "username": "root",
    "password": "root",
    "database": "proyecto_integrador",
    "host": "127.0.0.1",
    "port": process.env.DB_PORT,
    "dialect": "mysql",
    "operatorsAliases": false
  }
}
