const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const saltRounds = 10;

const { getRegisteredUsers } = require('../services/registerServices');

router.post('/', async(req,res) => {
   try{
    const {user_name,password,user_email,}= req.body;
    const user_password = await bcrypt.hash(password,saltRounds);
     await getRegisteredUsers(user_name,user_password,user_email);
    res.status(200).send('sucessful')
   }
   catch(error){
    console.log(error);
   }
})

module.exports= router;

