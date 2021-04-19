var express = require('express');
var router = express.Router();

let controladoresBuscador = require('../controladores/controladorBuscador');

router.get('/search-results', controladoresBuscador.search);

module.exports = router;