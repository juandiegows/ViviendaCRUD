/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.DepartamentoDAO;
import Modelo.MunicipioDAO;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Natalia
 */
public class MunicipioController extends Conexion {

    public int Create(MunicipioDAO municipio) throws SQLException {

        String sql = "INSERT INTO Municipio(Nombre,DepartamentoID) VALUES(?,?)";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, municipio.getNombre());
        oPreparedStatement.setInt(2, municipio.getDepartamentoID());

        return oPreparedStatement.executeUpdate();
    }

    public MunicipioDAO Get(int ID) throws SQLException {
        String sql = "SELECT M.ID AS MunicipioID,M.Nombre AS NombreMunicipio,DepartamentoID,D.Nombre AS NombreDepartamento FROM Municipio M \n"
                + "INNER JOIN Departamento D ON DepartamentoID = D.ID WHERE M.ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        ResultSet rs = oPreparedStatement.executeQuery();
        if (rs.next()) {
            return new MunicipioDAO(rs.getInt("MunicipioID"), rs.getString("NombreMunicipio"), rs.getInt("DepartamentoID"),
                    new DepartamentoDAO(rs.getInt("DepartamentoID"), rs.getString("NombreDepartamento")));
        }
        return null;
    }

    public ArrayList<MunicipioDAO> Get() throws SQLException {
        ArrayList<MunicipioDAO> municipioList = new ArrayList<>();

        String sql = "SELECT M.ID AS MunicipioID,M.Nombre AS NombreMunicipio,DepartamentoID,D.Nombre AS NombreDepartamento FROM Municipio M \n"
                + "INNER JOIN Departamento D ON DepartamentoID = D.ID";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {

            municipioList.add(new MunicipioDAO(rs.getInt("MunicipioID"), rs.getString("NombreMunicipio"), rs.getInt("DepartamentoID"),
                    new DepartamentoDAO(rs.getInt("DepartamentoID"), rs.getString("NombreDepartamento"))));
        }
        return municipioList;
    }

    public int Update(int ID, MunicipioDAO municipio) throws SQLException {
        String sql = "UPDATE Municipio SET Nombre = ?, DepartamentoID = ? WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, municipio.getNombre());
        oPreparedStatement.setInt(2, municipio.getDepartamentoID());
        oPreparedStatement.setInt(3, ID);

        return oPreparedStatement.executeUpdate();
    }

    public int Delete(int ID) throws SQLException {
        String sql = "DELETE FROM Municipio WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);

        return oPreparedStatement.executeUpdate();

    }

}
