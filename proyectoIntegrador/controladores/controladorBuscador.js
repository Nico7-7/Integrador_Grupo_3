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
            return res.render('resultados-busqueda', {
                cripto,
                buscador
            })
        })
    }
}

module.exports = controller