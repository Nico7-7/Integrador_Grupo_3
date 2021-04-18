let cripto = require('../data/productos');
const controller = {
    index: function(req, res, next){
        res.render('index', {
            'cripto': cripto.lista
        })
    }
}

module.exports = controller; 