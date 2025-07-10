import React, { JSX, useEffect, useState } from 'react';
import './cardJugadores.css'; 



interface Jugador {
  id: number;
  nombre: string;
  apellido: string;
  posicion_id: string;
  edad: number;
  dorsal: number;
  imagen_url: string;
  trayectoria: string[]; 
}


function Jugadores(): JSX.Element {
  const [jugadores, setJugadores] = useState<Jugador[]>([]); 
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchJugadores = async () => {
      try {
        const response = await fetch('http://localhost:4000/jugadores');
        if (!response.ok) {
                throw new Error(`Error HTTP: ${response.status} - ${response.statusText}`);
        }

        const data = await response.json();
        setJugadores(data);
      } catch (err) {
        console.error("Hubo un problema con la petición fetch:", err);
        setError("No se pudieron cargar los jugadores. Inténtalo de nuevo más tarde.");
      } finally {
        setLoading(false); 
      }
    };

    fetchJugadores();
  }, []);

  if (loading) {
    return <div className="jugadores-container">Cargando jugadores...</div>;
  }

  if (error) {
    return <div className="jugadores-container error-message">{error}</div>;
  }

  if (jugadores.length === 0) {
    return <div className="jugadores-container no-data-message">No hay jugadores para mostrar.</div>;
  }

  return (
    <div className="jugadores-container">
      <h2>Jugadores Plantel Profesional</h2>
      <div className="jugadores-grid">
        {jugadores.map((jugador) => (
         
          <div key={jugador.id} className="jugador-card">
            
            <img src={jugador.imagen_url} alt={jugador.nombre} className="jugador-imagen" />
            <h3>{jugador.nombre} {jugador.apellido}</h3>
            <p><strong>Posición:</strong> {jugador.posicion_id}</p>
            <p><strong>Edad:</strong> {jugador.edad}</p>
            <p><strong>Dorsal:</strong> {jugador.dorsal}</p>
            <p><strong>Trayectoria:</strong> {jugador.trayectoria}</p>
            
          </div>
        ))}
      </div>
    </div>
  );
}

export default Jugadores;