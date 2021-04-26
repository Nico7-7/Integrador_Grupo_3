var express = require('express');
var router = express.Router();

let cripto = require('../data/productos'); 
let controladorProducts = require('../controladores/controladorProducts');

/* GET home page. */
router.get('/', controladorProducts.index)
router.get('/productosGenerales', controladorProducts.productosGenerales);
router.get('/detalleProduct/:id', controladorProducts.detalleProduct);
router.get('/product-add', controladorProducts.agregarProducto);

module.exports = router;
