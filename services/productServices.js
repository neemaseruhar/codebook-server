const pool = require('../db');

// const getProducts = async() =>{
//     const result = await  pool.query('SELECT * FROM products');
//     return result.rows;
// }

const getProducts = async(searchTerm) =>{
    const result = await  pool.query(`SELECT * FROM products WHERE name ILIKE '%' || $1 || '%'`,[searchTerm]);
    return result.rows;
}


const getProductId = async (id) =>{
    const result = await pool.query('SELECT * FROM products WHERE product_id = $1',[id]);
    return result.rows[0];
}




const getFeaturedProducts =  async () =>{
    const result = await pool.query('SELECT * FROM products WHERE featured_products = TRUE');
    return result.rows;
}
module.exports= {
    getProducts,
    getProductId,
    getFeaturedProducts
};