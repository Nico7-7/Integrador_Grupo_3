var express = require('express');
var router = express.Router();
const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/images/users')
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.fieldname + path.extname(file.originalname))
    }
});

const upload = multer({storage: storage})


let controladorSeguridad = require('../controladores/controladorSeguridad');

router.get('/login', controladorSeguridad.login)
router.post('/login', controladorSeguridad.autenticarse);
router.get('/registrarse', controladorSeguridad.registrarse);
router.post('/registrarse', upload.single('url_imagen_usuario'), controladorSeguridad.registrarse);
router.get('/logout', controladorSeguridad.logout);

module.exports = router;
