const {Pool} = require('pg');


const pool = new Pool({
    database:'codebook',
    user:'postgres',
    password:'Neema',
    port:5433,
    host:'localhost'

})

module.exports = pool;