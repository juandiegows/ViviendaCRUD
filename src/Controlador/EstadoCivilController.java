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
public class EstadoCivilController extends Conexion {

    public ArrayList<EstadoCivilDAO> Get() throws SQLException {
        ArrayList<EstadoCivilDAO> lista = new ArrayList<>();
        String query = "SELECT * FROM EstadoCivil order by Nombre";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            lista.add(new EstadoCivilDAO(rs.getInt("ID"), rs.getString("Nombre")));
        }
        st.close();

        return lista;
    }

    // Consulta
    public EstadoCivilDAO Get(int ID) throws SQLException {

        String query = "SELECT * FROM EstadoCivil WHERE ID=" + ID;
        Statement sr = conecta().createStatement();
        ResultSet rs = sr.executeQuery(query);
        if (rs.next()) {
            return new EstadoCivilDAO(rs.getInt("ID"), rs.getString("Nombre"));
        } else {
            return null;
        }
    }

    public int CREATE(EstadoCivilDAO E) throws SQLException {

        String query = "INSERT INTO EstadoCivil (ID, Nombre) Values (?,?)";
        PreparedStatement opreparedStatement = conecta().prepareStatement(query);
        opreparedStatement.setInt(1, E.getID());
        opreparedStatement.setString(2, E.getNombre());
        return opreparedStatement.executeUpdate();
    }

    public int Update(int ID, EstadoCivilDAO E) throws SQLException {

        String query = "UPDATE EstadoCivil SET ID = ?, Nombre = ? WHERE ID = ?";
        PreparedStatement opreparedStatement = conecta().prepareStatement(query);
        opreparedStatement.setInt(1, E.getID());
        opreparedStatement.setString(2, E.getNombre());
        return opreparedStatement.executeUpdate();

    }

    public int DELETE(int ID) throws SQLException {

        String query = "DELETE FROM EstadoCivil WHERE ID = ? ";
        PreparedStatement opreparedStatement = conecta().prepareStatement(query);
        opreparedStatement.setInt(1, ID);
        return opreparedStatement.executeUpdate();

    }

}
