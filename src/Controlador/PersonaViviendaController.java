package Controlador;

import Modelo.PersonaDAO;
import Modelo.PersonaViviendaDAO;
import Modelo.ViviendaDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class PersonaViviendaController extends Conexion{
    
      public ArrayList<PersonaViviendaDAO> Get() throws SQLException{
        ArrayList<PersonaViviendaDAO> lista = new ArrayList<PersonaViviendaDAO>();
        String query ="SELECT ID,EscrituraID, CedulaID, Fecha, Nombre, EstadoCivilID, TipoViviendaID, Dirección,MunicipioID"
                + " FROM PersonaVivienda "
                + "INNER JOIN Persona ON PersonaVivienda.CedulaID = Persona.Cedula "
                + "INNER JOIN Vivienda ON PersonaVivienda.EscrituraID = Vivienda.Escritura order by Nombre;";
            Statement st= conecta().createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){  
                lista.add(new PersonaViviendaDAO(rs.getInt("ID"), rs.getInt("EscrituraID"), 
                        rs.getInt("CedulaID"),rs.getDate("Fecha"),
                        new ViviendaDAO(rs.getInt("EscrituraID"), rs.getInt("TipoViviendaID"), 
                        rs.getString("Dirección"), rs.getInt("MunicipioID")),
                        new PersonaDAO(rs.getInt("CedulaID"), rs.getString("Nombre"), rs.getInt("EstadoCivilID"))));
            }
            st.close();
        return lista;
    }
    
    public PersonaViviendaDAO Get (int ID) throws SQLException{

            String query = "SELECT ID,EscrituraID, CedulaID, Fecha, Nombre, EstadoCivilID,"
                    + " TipoViviendaID, Dirección,MunicipioID FROM PersonaVivienda "
                    + "INNER JOIN Persona ON PersonaVivienda.CedulaID = Persona.Cedula "
                    + "INNER JOIN Vivienda ON PersonaVivienda.EscrituraID = Vivienda.Escritura order by Nombre;";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, ID);
            ResultSet rs = opreparedStatement.executeQuery();
            if(rs.next()){            
                return new PersonaViviendaDAO(rs.getInt("ID"), rs.getInt("EscrituraID"), rs.getInt("CedulaID"),
                        rs.getDate("Fecha"),
                        new ViviendaDAO(rs.getInt("EscrituraID"), rs.getInt("TipoViviendaID"), rs.getString("Dirección"), 
                                rs.getInt("MunicipioID")),
                        new PersonaDAO(rs.getInt("CedulaID"), rs.getString("Nombre"), rs.getInt("EstadoCivilID")));
            }else{
                return null;
            }
    }
    
    public int Create(PersonaViviendaDAO E) throws SQLException{

            String query = "INSERT INTO PersonaVivienda (EscrituraID,CedulaID,Fecha) Values (?,?,?)";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, E.getEscrituraID());
            opreparedStatement.setInt(2, E.getCedulaID());
            opreparedStatement.setDate(3, E.getFecha());
            return opreparedStatement.executeUpdate();
    
    }
    public int Update(int ID, PersonaViviendaDAO E) throws SQLException {
            String query = "UPDATE PersonaVivienda SET EscrituraID = ?,CedulaID = ? ,Fecha = ? WHERE ID = ?";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);          
            opreparedStatement.setInt(1, E.getEscrituraID());
            opreparedStatement.setInt(2, E.getCedulaID());
            opreparedStatement.setDate(3, E.getFecha());
            return opreparedStatement.executeUpdate();   
    }
    
    public int Delete (int ID) throws SQLException{
      
            String query="DELETE FROM PersonaVivienda WHERE ID = ? ";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, ID);           
            return opreparedStatement.executeUpdate();  
    }
}
