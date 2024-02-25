const express = require('express');
const router = express.Router();

const {getProducts, getProductId,getFeaturedProducts} = require('../services/productServices');


router.get('/', async (req,res) => {
   try {
    const searchTerm= req.query.name_like || '' ;
    const result =await getProducts(searchTerm);
    res.json(result);
    }
    catch(error){
         console.log(error.message)
    }
});

router.get('/featured_products', async (req,res) =>{
    try {
        const result = await getFeaturedProducts();
        res.json(result);
    } catch (error) {
         console.log(error.message)
    }
})

router.get('/:id', async(req,res) =>{
  try {
        const {id} = req.params;
        const result = await getProductId(id);
        res.json(result);
  } catch (error) {
        console.log(error)
  }
})


module.exports = router;