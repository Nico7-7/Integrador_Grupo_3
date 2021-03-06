module.exports = (sequelize, DataTypes) => {
    let alias = 'Usuario';

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: DataTypes.INTEGER
        },
        nombre_usuario: {
            type: DataTypes.STRING
        },
        apellido_usuario: {
            type: DataTypes.STRING
        },
        num_comentarios_hechos: {
            type: DataTypes.INTEGER
        },
        cant_productos: {
            type: DataTypes.INTEGER
        },
        url_imagen_usuario: {
            type: DataTypes.STRING
        },
        mail: {
            type: DataTypes.STRING
        },
        fecha_registracion: {
            type: DataTypes.DATE
        },
        editar_perfil: {
            type: DataTypes.DATE
        },
        texto_usuario: {
            type: DataTypes.STRING
        },
        contrasenia: {
            type: DataTypes.STRING
        },
        fecha_nacimiento: {
            type: DataTypes.DATE
        },
    }

    let config = {
        tableName: 'usuarios',
        timestamps: false
    }

    const Usuario = sequelize.define(alias, cols, config);

    Usuario.associate = function(models){
        Usuario.hasMany(models.Comentario, {
            as: 'comentario',
            foreignKey: 'id_usuario_comentador'
        });
        Usuario.hasMany(models.Producto, {
            as: 'producto',
            foreignKey: 'id_usuario'
        })
    }

    return Usuario
}