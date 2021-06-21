var express = require('express');
var router = express.Router();
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images/products')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname))
    }
});

const upload = multer({storage: storage})



let controladorProducts = require('../controladores/controladorProducts');

/* GET home page. */
router.get('/', controladorProducts.index)
router.get('/producto/productosGenerales', controladorProducts.productosGenerales);
router.get('/producto/detalleProduct/:id', controladorProducts.detalleProduct);
router.post('/producto/agregarComentario/:id', controladorProducts.agregarComentario);
router.get('/producto/product-add', controladorProducts.agregarProducto);
router.post('/producto/product-add', upload.single('url_imagen'), controladorProducts.productoBaseDatos);
router.get('/producto/product-edit/:id', controladorProducts.editarProducto);
router.post('/producto/product-edit/:id', upload.single('url_imagen'), controladorProducts.productoEditado);
router.all('/producto/product-delete/:id', controladorProducts.eliminarProducto);


module.exports = router;
