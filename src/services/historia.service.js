const pool = require('../config/velez-db')

exports.getAll = async () =>{
    const [rows] = await pool.query(`
            SELECT * FROM historia
        `)

        return rows
}

exports.getDescripcionHistoria = async () =>{

    const [rows] = await pool.query(`
        SELECT descripcion FROM historia

        `)
      return [rows]
}

exports.getNombreEstadioHistoria = async () =>{

    const [rows] = await pool.query(`
        SELECT nombreEstadio FROM historia
        `)
      return [rows]
}

exports.getLocacionEstadioHistoria = async () =>{

    const [rows] = await pool.query(`
        SELECT locacionEstadio FROM historia

        `)
      return [rows]
}

exports.getCapacidadHistoria = async () =>{

    const [rows] = await pool.query(`
        SELECT capacidad FROM historia

        `)
      return [rows]
}

exports.getHistoriaEstadio = async () =>{

    const [rows] = await pool.query(`
        SELECT hisotiraEstadio FROM historia

        `)
      return [rows]
}





exports.updateHistoria = async ({descripcion, nombreEstadio,locacionEstadio,capacidad,historiaEstadio}) =>{
    await pool.query(`
        UPDATE historia SET descripcion = ?, nombreEstadio = ?,locacionEstadio = ?,capacidad = ?, historiaEstadio =?
        ` [descripcion, nombreEstadio,locacionEstadio,capacidad,historiaEstadio])
        return [descripcion, nombreEstadio, locacionEstadio, capacidad, historiaEstadio]
}


exports.deleteHistoria = async ({descripcion, nombreEstadio, locacionEstadio,capacidad,historiaEstadio}) => {

    await pool.query(`
        ALTER TABLE historia DROP COLUMN  `)

    



}

