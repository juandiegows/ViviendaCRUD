
package Controlador;

import Modelo.EstadoCivilDAO;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
    

}
