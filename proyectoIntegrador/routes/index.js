var express = require('express');
var router = express.Router();

let cripto = require('../data/productos'); 
let controladorProducts = require('../controladores/controladorProducts');

/* GET home page. */
router.get('/', controladorProducts.index)
router.get('/producto/productosGenerales', controladorProducts.productosGenerales);
router.get('/producto/detalleProduct/:id', controladorProducts.detalleProduct);
router.get('/producto/product-add', controladorProducts.agregarProducto);

module.exports = router;
