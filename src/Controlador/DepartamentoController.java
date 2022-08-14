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
        //crear la consulta
        String sql = "insert into Departamento(Nombre) values(?)";
        //prepara la consulta
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        //ingresamos los parametros
        oPreparedStatement.setString(1, departamento.getNombre());

        return oPreparedStatement.executeUpdate();

    }

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

    public DepartamentoDAO Get(int ID) throws SQLException {
        DepartamentoDAO departamento = new DepartamentoDAO();
        String query = "SELECT * FROM Departamento WHERE ID = "+ID;

        Statement st = conecta().createStatement();

        ResultSet rs = st.executeQuery(query);

        if (rs.next()) {
            departamento = new DepartamentoDAO(rs.getInt("ID"), rs.getString("Nombre"));
        }

        return departamento;

    }

    public int Update() {
        return 0;

    }

    public int Delete(int ID) {
        return 0;
    }

    
}
