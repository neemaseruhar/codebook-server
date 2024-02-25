const pool = require('../db');

const getRegisteredUsers = async(user_name,user_email,user_password) =>{
    const result = await  pool.query('INSERT INTO users (user_name,user_password,user_email) VALUES($1, $2, $3)',[user_name,user_password,user_email]);
    
};

module.exports ={getRegisteredUsers}