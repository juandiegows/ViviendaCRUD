
package Controlador;

import Modelo.EstadoCivilDAO;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class EstadoCivilController extends Conexion{
    //Recorrer en una lista lo que tenemos
    public ArrayList<EstadoCivilDAO> get(){
        ArrayList<EstadoCivilDAO> lista = new ArrayList<>();
        String query ="SELECT * FROM EstadoCivil order by ID";
        try{
            Statement st= conecta().createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                lista.add(new EstadoCivilDAO(rs.getInt("ID"), rs.getString("Nombre")));
            }
            st.close();
            
        }catch(SQLException e){
            
        }
        return lista;
    }
    
    // Consulta
    public EstadoCivilDAO Get (int ID){
        try{
            String query = "SELECT * FROM EstadoCivil WHERE ID="+ID; 
            Statement sr = conecta().createStatement();
            ResultSet rs = sr.executeQuery(query);
            if(rs.next()){
                return new EstadoCivilDAO(rs.getInt("ID"), rs.getString("Nombre"));
            }else{
                return null;
            }
        }catch(SQLException e){
            
        }
        return null;
    }
    
    public int Add(EstadoCivilDAO E){
        try{
            String query = "INSERT INTO EstadoCivil (ID, Nombre) Values (?,?)";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, E.getID());
            opreparedStatement.setString(2, E.getNombre());
            return opreparedStatement.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
            return 0;
        }
    }
    public int Update(int ID, EstadoCivilDAO E) {
        try {

            String query = "UPDATE EstadoCivil SET ID = ?, Nombre = ? WHERE ID = ?";

            // create the java statement
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
           
            opreparedStatement.setInt(1, E.getID());
            opreparedStatement.setString(2, E.getNombre());
            return opreparedStatement.executeUpdate();

        } catch (SQLException e) {
                 e.printStackTrace();
            return 0;
        }
    }
    public int DELETE (int ID){
        try{
            String query="DELETE FROM EstadoCivil WHERE ID = ? ";
            PreparedStatement opreparedStatement = conecta().prepareStatement(query);
            opreparedStatement.setInt(1, ID);           
            return opreparedStatement.executeUpdate();
            
        }catch(SQLException e){
            e.printStackTrace();
            return 0; 
        }
    }

    int get(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    

}
