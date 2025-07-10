import React, { useState, useEffect } from 'react';
import "./home.css" 



interface HistoriaData {
  descripcion: string;
  nombreEstadio: string;
  locacionEstadio: string;
  capacidad: string;
  historiaEstadio: string;
  
}

function Home() {
  
  const [historia, setHistoria] = useState<HistoriaData[]>([]);
  const [loading, setLoading] = useState<boolean>(true); 
  const [error, setError] = useState<string | null>(null); 

  useEffect(() => {
    const fetchHistoria = async () => {
      try {
        const response = await fetch('http://localhost:4000/historia'); 
        if (!response.ok) {
          throw new Error(`Error HTTP: ${response.status}`);
        }
        const data: HistoriaData[] = await response.json(); 
        setHistoria(data);
      } catch (err) {
        console.error("Error fetching historia:", err);
       
        if (err instanceof Error) {
          setError(`Error al cargar la historia del club: ${err.message}`);
        } else {
          setError("Error desconocido al cargar la historia del club.");
        }
      } finally {
        setLoading(false);
      }
    };
    fetchHistoria();
  }, []); 

  if (loading) {
    return <div>Cargando historia...</div>;
  }

  if (error) {
    return <div>{error}</div>;
  }

 
  const historiaDelClub: HistoriaData | undefined = historia[0];

  if (!historiaDelClub) {
    return <div>No se encontró información de la historia.</div>;
  }

  return (

    <>
    <div className="historia-container">
      <h2>Historia del Club</h2>
      <p>{historiaDelClub.descripcion}</p>

      <h3>Estadio: {historiaDelClub.nombreEstadio}</h3>
      <p>Ubicación: {historiaDelClub.locacionEstadio}</p>
      <p>Capacidad: {historiaDelClub.capacidad}</p>
      <p>Historia del Estadio: {historiaDelClub.historiaEstadio}</p>

    </div>
  
  </>
  );
}

export default Home;