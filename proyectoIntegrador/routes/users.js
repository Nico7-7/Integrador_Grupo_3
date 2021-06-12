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


let controladorUser = require('../controladores/controladorUser');

router.get('/profile/:id', controladorUser.profile);
router.get('/profileUsuario/:id', controladorUser.profileUsuario);
router.get('/profile-edit/:id', controladorUser.profileEdit);
router.post('/profile-edit/:id', upload.single('url_imagen_usuario'), controladorUser.profileEditConfirm);

module.exports = router;
