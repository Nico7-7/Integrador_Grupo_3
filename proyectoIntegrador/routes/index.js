var express = require('express');
var router = express.Router();

let cripto = require('../data/productos'); 
let controladorProducts = require('../controladores/controladorProducts');

/* GET home page. */
router.get('/', controladorProducts.index)
router.get('/detalleProduct', controladorProducts.detalleProduct);
router.get('/product-add', controladorProducts.agregarProducto);

module.exports = router;
