import {Sequelize} from "sequelize";

const db = new Sequelize('tugas4_pwl', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;