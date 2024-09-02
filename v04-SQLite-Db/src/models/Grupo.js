import * as dbSqlite3 from "../config/dbConnect.js";

const Grupo = dbSqlite3.conecxao().define(
    'grupo_videocurso', 
    {
        id: {
            type: dbSqlite3.DataTypes.INTEGER,
            autoIncrement: true,
            allowNull: false,
            primaryKey: true
        },
        titulo: {
            type: dbSqlite3.DataTypes.STRING,
            allowNull: false
        },
        created_at: {
            type: dbSqlite3.DataTypes.STRING,
            allowNull: false,
            default: 'CURRENT_TIMESTAMP'
        },
        updated_at: {
            type: dbSqlite3.DataTypes.STRING,
            allowNull: true
        },
        deleted_at: {
            type: dbSqlite3.DataTypes.STRING,
            allowNull: true
        }
    }
);

export default Grupo;
