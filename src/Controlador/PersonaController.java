
package Controlador;

import Modelo.PersonaDAO;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.PreparedStatement;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class PersonaController extends Conexion{
    
     public ArrayList<PersonaDAO> Get(){
        ArrayList<PersonaDAO> lista = new ArrayList<PersonaDAO>();
        String query = "SELECT * FROM Persona";
        try{
            Statement st = conecta().createStatement();
            ResultSet rs= st.executeQuery(query);      
            while(rs.next()){
                lista.add(new PersonaDAO(rs.getInt("Cedula"), rs.getString("Nombre"),rs.getInt("EstadoCivilID"),new EstadoCivilController().Get(rs.getInt("EstadoCivilID"))));
            }
            st.close();
        }catch(SQLException E){
            
        }
        return lista;
    }
    
    public boolean Add(PersonaDAO p){
        try{
            String query ="INSERT INTO Persona (Cedula, Nombre, EstadoCivilID) VALUES (?,?,?)";
            PreparedStatement stt = conecta().prepareStatement(query);
            stt.setInt(1, p.getCedula());
            stt.setString(2, p.getNombre());
            stt.setInt(3, p.getEstadoCivilID());
            return stt.executeUpdate() >= 1;
            
        }catch(SQLException E){
            E.getLocalizedMessage();
            return false;
        }
    }
    
    public int  UPDATE (int Cedula, PersonaDAO a){ 
        try {
            String query="UPDATE Persona SET Cedula = ?, Nombre = ?, EstadoCivilID = ? Where Cedula = ?";
            PreparedStatement ppST = conecta().prepareStatement(query);      
            ppST.setInt(1, a.getCedula());
            ppST.setString(2, a.getNombre());
            ppST.setInt(3, a.getEstadoCivilID());
            ppST.setInt(4, Cedula);
            return ppST.executeUpdate();
            
        } catch (SQLException ex) {
            
            return 0;
        }
        
    }
    
    public int DELETE (int Cedula){
        try{
            String query="DELETE FROM Persona WHERE Cedula = ? ";
            PreparedStatement ppst = conecta().prepareStatement(query);
            ppst.setInt(1, Cedula);
            
            return ppst.executeUpdate();
        }catch(SQLException e){
            return 0; 
        }
    }
    
    public PersonaDAO Get(int Cedula) {

        try {

            String query = "SELECT * FROM Persona where ID = " + Cedula;
            
            Statement st = conecta().createStatement();
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                return new PersonaDAO(rs.getInt("Cedula"), rs.getString("Nombre"),rs.getInt("EstadoCivilID"),new EstadoCivilController().Get(rs.getInt("EstadoCivilID")));
            } else {
                return null;
            }

        } catch (SQLException e) {

        }

        return null;
    }
    
}
