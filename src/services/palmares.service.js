const pool = require("../config/velez-db");

exports.getAll = async () => {
  const [rows] = await pool.query(`
        SELECT * FROM palmares
        `);
  return rows;
};

exports.getById = async (id) => {
  const [rows] = await pool.query(
    `
        SELECT torneos_locales, torneos_internacionales, imgCopas FROM palmares WHERE id = ?`,
    [id]
  );
  return rows[0];
};

exports.create = async ({
  torneos_locales,
  torneos_internacionales,
  imgCopas,
}) => {
  const [result] = await pool.query(
    `
        INSERT INTO palmares (torneos_locales, torneos_internacionales, imgCopas) VALUES(?,?,?) 
        `,
    [torneos_locales, torneos_internacionales, imgCopas]
  );

  return {
    id: result.insertId,
    torneos_locales,
    torneos_internacionales,
    imgCopas,
  };
};

exports.update = async (
  id,
  { torneos_locales, torneos_internacionales, imgCopas }
) => {
  await pool.query(
    `
        UPDATE palmares SET torneos_locales = ?, torneos_internacionales = ?, imgCopas = ? WHERE id = ?`,
    [torneos_locales, torneos_internacionales, imgCopas, id]
  );

  return { id, torneos_locales, torneos_internacionales, imgCopas };
};

exports.delete = async (id) => {
  await pool.query(
    `
        DELETE FROM palmares WHERE id = ? `,
    [id]
  );
  return { deleted: true };
};
