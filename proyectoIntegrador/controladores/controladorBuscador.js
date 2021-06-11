const db = require('../database/models');
const op = db.Sequelize.Op;

const controller = {
    search: function(req, res, next){
        let buscador = req.query.search;
        db.Producto.findAll({
            where: [
                {nombre_producto: {[op.like]: '%'+buscador+'%'}}
            ]
        })
        .then((cripto)=> {
            return res.render('search-results', {
                cripto: cripto,
                buscador: buscador
            })
        })
    }
}

module.exports = controller