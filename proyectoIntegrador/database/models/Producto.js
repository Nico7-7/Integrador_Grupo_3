module.exports = (sequelize, DataTypes) => {
    let alias = 'Producto';

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        url_imagen: {
            type: DataTypes.STRING
        },
        nombre_producto: {
            type: DataTypes.STRING
        },
        fecha_publicacion: {
            type: DataTypes.DATE
        },
        id_usuario: {
            type: DataTypes.INTEGER
        },
        descripcion_larga: {
            type: DataTypes.STRING
        },
        descripcion_corta: {
            type: DataTypes.STRING
        },
        num_comentarios: {
            type: DataTypes.INTEGER
        }
    }

    let config = {
        tableName: 'productos',
        timestamps: false
    }

    const Producto = sequelize.define(alias, cols, config);

    Producto.associate = function(models){
        Producto.belongsTo(models.Usuario, {
            as: 'producto_usuario',
            foreignKey: 'id_usuario'
        })
    }

    return Producto
}