const pool = require("../config/velez-db");

const API_PORT = process.env.PORT || 4000;
const API_BASE_URL = `http://localhost:${API_PORT}`;

exports.getAll = async () => {
  const [rows] = await pool.query(`
    SELECT
      id,
      torneos_locales,
      torneos_internacionales,
      img_copas_locales,        
      img_copas_internacionales 
    FROM palmares
  `);

  return rows.map(palmar => {
    
    const imgLocalesUrl = palmar.img_copas_locales
      ? `${API_BASE_URL}/img/copas/locales/${palmar.img_copas_locales}`
      : null;

    
    const imgInternacionalesUrl = palmar.img_copas_internacionales
      ? `${API_BASE_URL}/img/copas/internacionales/${palmar.img_copas_internacionales}`
      : null;

    return {
      id: palmar.id,
      torneos_locales: palmar.torneos_locales,
      torneos_internacionales: palmar.torneos_internacionales,
      imagen_copas_locales_url: imgLocalesUrl,         
      imagen_copas_internacionales_url: imgInternacionalesUrl 
    };
  });
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
