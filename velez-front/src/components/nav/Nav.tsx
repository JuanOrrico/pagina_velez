import {Link} from "react-router-dom"
import "./nav.css"


export default function Nav (){

    return(
        
        <header>
            <div className="div-container-header">
                <h1>Club Atlético Vélez Sarsfield</h1>
            </div>
            <nav>
                <ul className="link-ul">
                    <Link to="/">Inicio</Link>
                    <Link to="/Jugadores">Primer Equipo</Link>
                    <Link to="/Palmares">Palmarés</Link>
                    
                   
                </ul>
            </nav>
        
        
        </header>

    )
}