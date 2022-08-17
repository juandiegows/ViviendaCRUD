package Controlador;

import Modelo.PersonaViviendaDAO;
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
    
      public ArrayList<PersonaViviendaDAO> get() throws SQLException{
        ArrayList<PersonaViviendaDAO> lista = new ArrayList<PersonaViviendaDAO>();
        String query ="SELECT * FROM PersonaVivienda order by ID";
            Statement st= conecta().createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){  
                lista.add(new PersonaViviendaDAO(rs.getInt("ID"), rs.getInt("EscrituraID"), rs.getInt("CedulaID"),rs.getDate("Fecha"), null, new PersonaController().Get(rs.getInt("CedulaID"))));
            }
            st.close();
        return lista;
    }
    
    public PersonaViviendaDAO Get (int ID) throws SQLException{

            String query = "SELECT * FROM PersonaViviendaDAO WHERE ID="+ID; 
            Statement sr = conecta().createStatement();
            ResultSet rs = sr.executeQuery(query);
            if(rs.next()){            
                return new PersonaViviendaDAO(rs.getInt("ID"), rs.getInt("EscrituraID"), rs.getInt("CedulaID"),rs.getDate("Fecha"), null, new PersonaController().Get(rs.getInt("CedulaID")));
            }else{
                return null;
            }
    }
    
    public int Add(PersonaViviendaDAO E) throws SQLException{

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
    
    public int DELETE (int ID) throws SQLException{
      
            String query="DELETE FROM PersonaVivienda WHERE ID = ? ";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, ID);           
            return opreparedStatement.executeUpdate();  
    }
}
