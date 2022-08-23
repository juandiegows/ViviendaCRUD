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
        MunicipioDAO municipio = new MunicipioDAO();

        String sql = "SELECT * FROM Municipio INNER JOIN Departamento\n"
                + "ON DepartamentoID = Departamento.ID WHERE Municipio.ID =?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        ResultSet rs = oPreparedStatement.executeQuery();
        if (rs.next()) {
            municipio = new MunicipioDAO(rs.getInt(1), rs.getString(2), rs.getInt(3),
                    new DepartamentoDAO(rs.getInt(4), rs.getString(5)));
        }
        return municipio;
    }

    public ArrayList<MunicipioDAO> Get() throws SQLException {
        ArrayList<MunicipioDAO> municipioList = new ArrayList<>();

        String sql = "SELECT  * FROM Municipio as M INNER JOIN Departamento as D  ON  M.DepartamentoID = D.ID ORDER BY M.Nombre";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {

            municipioList.add(new MunicipioDAO(rs.getInt(1), rs.getString(2), rs.getInt(3),
                    new DepartamentoDAO(rs.getInt(4), rs.getString(5))));
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
