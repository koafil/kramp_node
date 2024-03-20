const mysql = require('mysql');
const config = {
  host: '192.168.50.2',
  user: 'user',
  password: '',
  database: 'kramp'
};

const pool = mysql.createPool(config);

module.exports = pool;