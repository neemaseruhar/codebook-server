const express = require('express');
const app = express();
const cors = require('cors');

const bootstrap = require('./services/queryServices')

const productRoutes = require('./Routes/productsroute');
const registerRoutes = require('./Routes/registerRoutes');


app.use(cors());
app.use(express.json());


bootstrap().then(() => {
    console.log('Tables created and data inserted successfully');
}).catch(error => {
    console.error('Error bootstrapping the database:', error);
});
app.use('/products',productRoutes);
app.use('/register',registerRoutes);



app.listen(5000,() => {
    console.log('server is listening on port 5000');
});