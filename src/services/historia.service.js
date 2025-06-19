const pool = require('../config/velez-db')

exports.getAll = async () =>{
    const [rows]  = await pool.query(`SELECT * FROM historia`)
    return rows
}

exports.update = async ({descripcion,nombreEstadio,locacionEstadio,capacidad,historiaEstadio}) =>{
    const [update] = await pool.query(`
        UPDATE historia SET descripcion = ?  , nombreEstadio = ?, locacionEstadio = ?, capacidad = ?, historiaEstadio = ?
        `, [descripcion, nombreEstadio, locacionEstadio,capacidad,historiaEstadio])
        return {update}
}

