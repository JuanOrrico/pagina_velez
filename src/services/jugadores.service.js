const pool = require("../config/velez-db");
// Get para toda la tabla jugadores
exports.getAll = async () => {
  const [rows] = await pool.query(`
        SELECT * FROM jugadores
        `);
  return rows;
};

// Get para llamar por id a cada jugador
exports.getById = async (id) => {
  const [rows] = await pool.query(
    `
        SELECT nombre, apellido, edad, posicion, trayectoria, dorsal, imgJugadores FROM jugadores WHERE id = ?
        `,
    [id]
  );
  return rows[0];
};

// POST para agregar un jugador
exports.create = async ({
  nombre,
  apellido,
  edad,
  posicion,
  trayectoria,
  dorsal,
  imgJugadores,
}) => {
  const [result] = await pool.query(
    `
        INSERT INTO jugadores (nombre, apellido, edad, posicion, trayectoria, dorsal, imgJugadores) VALUES (?,?,?,?,?,?,?)`,
    [nombre, apellido, edad, posicion, trayectoria, dorsal, imgJugadores]
  );
  return {
    id: result.insertId,
    nombre,
    apellido,
    edad,
    posicion,
    trayectoria,
    dorsal,
    imgJugadores,
  };
};

//PUT para actualizar un jugador

exports.update = async (
  id,
  { nombre, apellido, edad, posicion, trayectoria, dorsal, imgJugadores }
) => {
  await pool.query(
    `
        UPDATE jugadores SET nombre = ? , apellido = ? , edad = ? , posicion = ?, trayectoria = ?, dorsal = ?, imgJugadores = ? WHERE id = ?
        `,
    [nombre, apellido, edad, posicion, trayectoria, dorsal, imgJugadores, id]
  );

  return {
    id,
    nombre,
    apellido,
    edad,
    posicion,
    trayectoria,
    dorsal,
    imgJugadores,
  };
};

//DELETE un jugador

exports.delete = async (id) => {
  await pool.query(`DELETE FROM jugadores WHERE id = ?`, [id]);
  return { deleted: true };
};
