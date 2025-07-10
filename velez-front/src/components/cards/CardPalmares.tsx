import React, { JSX, useEffect, useState } from 'react';
import './cardPalmares.css'; 



interface Palmares {
  torneos_locales: string;
  torneos_internacionales: string;
  imagen_copas_locales_url: string;
  imagen_copas_internacionales_url:string;
  id: number; 
}


function Palmares(): JSX.Element {
  const [palmares, setCopas] = useState<Palmares[]>([]); 
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchPalmares = async () => {
      try {
        const response = await fetch('http://localhost:4000/palmares');
        if (!response.ok) {
                throw new Error(`Error HTTP: ${response.status} - ${response.statusText}`);
        }

        const data = await response.json();
        setCopas(data);
      } catch (err) {
        console.error("Hubo un problema con la petición fetch:", err);
        setError("No se pudieron cargar los torneos. Inténtalo de nuevo más tarde.");
      } finally {
        setLoading(false); 
      }
    };

    fetchPalmares();
  }, []);

  if (loading) {
    return <div className="palmares-container">Cargando Torneos...</div>;
  }

  if (error) {
    return <div className="palmares-container error-message">{error}</div>;
  }

  if (palmares.length === 0) {
    return <div className="palmares-container no-data-message">No hay torneos para mostrar.</div>;
  }

  return (
    <>
      <div className="palmares-container">
        <h2>Torneos Locales</h2>
        <div className="palmares-grid">
          
          {palmares.filter(item => item.torneos_locales && item.imagen_copas_locales_url).length > 0 ? (
            palmares
              .filter(item => item.torneos_locales && item.imagen_copas_locales_url)
              .map(torneo_local => (
                <div key={torneo_local.id} className="palmares-locales-card">
                  <img
                    src={torneo_local.imagen_copas_locales_url}
                    alt={torneo_local.torneos_locales}
                    className="palmares-imagen"
                  />
                  <h3>{torneo_local.torneos_locales}</h3>
                </div>
              ))
          ) : (
            <p>No hay torneos locales para mostrar.</p>
          )}
        </div>
      </div>

      <div className="palmares-container">
        <h2>Torneos Internacionales</h2>
        <div className="palmares-grid">
        
          {palmares.filter(item => item.torneos_internacionales && item.imagen_copas_internacionales_url).length > 0 ? (
            palmares
              .filter(item => item.torneos_internacionales && item.imagen_copas_internacionales_url)
              .map(torneo_int => (
                <div key={torneo_int.id} className="palmares-internacionales-card">
                  <h3>{torneo_int.torneos_internacionales}</h3>
                  <img
                    src={torneo_int.imagen_copas_internacionales_url}
                    alt={torneo_int.torneos_internacionales}
                    className="palmares-imagen"
                  />
                </div>
              ))
          ) : (
            <p>No hay torneos internacionales para mostrar.</p>
          )}
        </div>
      </div>
    </>
  );
}

export default Palmares;