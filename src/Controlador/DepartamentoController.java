/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.DepartamentoDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author mejia
 */
public class DepartamentoController extends Conexion {

    /**
     * Permite insertar un nuevo departamento en la base de dato
     *
     * @param departamento
     * @return
     * @throws java.sql.SQLException
     */
    public int Create(DepartamentoDAO departamento) throws SQLException {
        String sql = "insert into Departamento(Nombre) values(?)";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, departamento.getNombre());
        return oPreparedStatement.executeUpdate();

    }

    /**
     * Obtiene una lista de departamentos
     *
     * @return
     * @throws java.sql.SQLException
     */
    public ArrayList<DepartamentoDAO> Get() throws SQLException {
        ArrayList<DepartamentoDAO> departamentosList = new ArrayList<>();
        String query = "SELECT * FROM Departamento order by Nombre";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            departamentosList.add(new DepartamentoDAO(rs.getInt("ID"), rs.getString("Nombre")));
        }
        st.close();

        return departamentosList;

    }

    /**
     * Obtiene un departamento por ID
     *
     * @param ID
     * @return
     * @throws java.sql.SQLException
     */
    public DepartamentoDAO Get(int ID) throws SQLException {
        DepartamentoDAO departamento = new DepartamentoDAO();
        String query = "SELECT * FROM Departamento WHERE ID = " + ID;
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(query);
        if (rs.next()) {
            departamento = new DepartamentoDAO(rs.getInt("ID"), rs.getString("Nombre"));
        }
        return departamento;

    }

    /**
     * Actualiza un departamento por ID
     *
     * @param ID
     * @param departamento
     * @return
     * @throws java.sql.SQLException
     */
    public int Update(int ID, DepartamentoDAO departamento) throws SQLException {
        String sql = "UPDATE Departamento SET  Nombre = ? WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, departamento.getNombre());
        oPreparedStatement.setInt(2, ID);
        return oPreparedStatement.executeUpdate();

    }

    /**
     * Eliminar un departamento por ID sino hay municipio registrado con ese departamento
     * @param ID
     * @return
     * @throws java.sql.SQLException
     * @throws SQLException*
     */
    public int Delete(int ID) throws SQLException {
        String sql = "DELETE FROM Departamento WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        return oPreparedStatement.executeUpdate();
    }

}
