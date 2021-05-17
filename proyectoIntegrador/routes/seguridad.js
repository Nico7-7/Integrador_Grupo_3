var express = require('express');
var router = express.Router();

let controladorSeguridad = require('../controladores/controladorSeguridad');

router.get('/login', controladorSeguridad.login)
router.post('/login', controladorSeguridad.autenticarse);
router.get('/registrarse', controladorSeguridad.registrarse);
router.post('/registrarse', controladorSeguridad.registrarse);
router.get('/logout', controladorSeguridad.logout);

module.exports = router;
