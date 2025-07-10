const pool = require('../config/velez-db');

const API_PORT = process.env.PORT || 4000;
const API_BASE_URL = `http://localhost:${API_PORT}`;

exports.getAll = async () => {
  const [rows] = await pool.query(`
    SELECT 
      j.id,
      j.nombre,
      j.apellido,
      j.edad,
      p.nombre_posicion AS posicion,
      j.dorsal,
      j.imgJugadores
    FROM jugadores j
    JOIN posiciones p ON j.posicion_id = p.id
  `);

  

const [trayectorias] = await pool.query(`SELECT jugador_id, club FROM trayectorias`);
  const mapTrayectorias = {};


  trayectorias.forEach(({ jugador_id, club }) => {
    if (!mapTrayectorias[jugador_id]) mapTrayectorias[jugador_id] = [];
    mapTrayectorias[jugador_id].push(club);
  });

  
  return rows.map(jugador => {
   
    const imageUrl = jugador.imgJugadores
      ? `${API_BASE_URL}/img/${jugador.imgJugadores}`
      : null; 

    return {
      ...jugador,
      trayectoria: (mapTrayectorias[jugador.id] || []).join(', '), 
      imagen_url: imageUrl 
    };
  });
};


exports.getById = async (id) => {
  const [rows] = await pool.query(`
    SELECT 
      j.id,
      j.nombre,
      j.apellido,
      j.edad,
      p.nombre_posicion AS posicion,
      j.dorsal,
      j.imgJugadores
    FROM jugadores j
    JOIN posiciones p ON j.posicion_id = p.id
    WHERE j.id = ?
  `, [id]);

  if (rows.length === 0) return null;

  const [trayectoria] = await pool.query(`SELECT club FROM trayectorias WHERE jugador_id = ?`, [id]);

  return {
    ...rows[0],
    trayectoria: trayectoria.map(t => t.club)
  };
};


exports.create = async ({ nombre, apellido, edad, posicion_id, dorsal, imgJugadores, trayectoria }) => {
  const [result] = await pool.query(`
    INSERT INTO jugadores (nombre, apellido, edad, posicion_id, dorsal, imgJugadores)
    VALUES (?, ?, ?, ?, ?, ?)
  `, [nombre, apellido, edad, posicion_id, dorsal, imgJugadores]);

  const jugadorId = result.insertId;

  if (trayectoria && trayectoria.length > 0) {
    const values = trayectoria.map(club => [jugadorId, club]);
    await pool.query(`INSERT INTO trayectorias (jugador_id, club) VALUES ?`, [values]);
  }

  return jugadorId;
};


exports.delete = async (id) => {
  await pool.query(`DELETE FROM trayectorias WHERE jugador_id = ?`, [id]);
  await pool.query(`DELETE FROM jugadores WHERE id = ?`, [id]);
};


exports.update = async (id, { nombre, apellido, edad, posicion_id, dorsal, imgJugadores, trayectoria }) => {
  await pool.query(`
    UPDATE jugadores SET nombre = ?, apellido = ?, edad = ?, posicion_id = ?, dorsal = ?, imgJugadores = ?
    WHERE id = ?
  `, [nombre, apellido, edad, posicion_id, dorsal, imgJugadores, id]);

  await pool.query(`DELETE FROM trayectorias WHERE jugador_id = ?`, [id]);

  if (trayectoria && trayectoria.length > 0) {
    const values = trayectoria.map(club => [id, club]);
    await pool.query(`INSERT INTO trayectorias (jugador_id, club) VALUES ?`, [values]);
  }
};