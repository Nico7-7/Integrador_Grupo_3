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
        num_seguidores: {
            type: DataTypes.INTEGER
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
        fecha: {
            type: DataTypes.DATE
        },
        texto_usuario: {
            type: DataTypes.STRING
        }
    }

    let config = {
        tableName: 'usuarios'
    }

    const Usuario = sequelize.define(alias, cols, config);

    return Usuario
}