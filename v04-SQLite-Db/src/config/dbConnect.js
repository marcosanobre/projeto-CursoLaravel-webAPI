//import sqlite3 from "sqlite3";

// Definindo uma CONNECTION por meio
// da criação de um Connection-Pool

import {SqliteDialect} from "@sequelize/sqlite3";
import {Sequelize, DataTypes, Model} from "@sequelize/core";
//import { Attribute, Table, PrimaryKey, AutoIncrement, NotNull } from '@sequelize/core/decorators-legacy';

function conexao() {

    const sequelizeDB = new Sequelize( {
        dialect: SqliteDialect,
        storage: './database/video_cursos.sqlite3'
    });
    return sequelizeDB;
};

export {conexao, SqliteDialect, Sequelize, DataTypes, Model};

/* 
async function conexao() {
        //const sqlite3 = require('sqlite3').verbose();
        const db = new sqlite3.Database(  './database/video_cursos.sqlite3', 
                                          sqlite3.OPEN_READWRITE, 
                                          (err) => {
                                                    if (err) {
                                                        console.error(err.message);
                                                    } else {
                                                        console.log('Connected to the database.');
                                                    };
                                                 } 
                                     );
        return db;
};

export default conexao;
*/   
    