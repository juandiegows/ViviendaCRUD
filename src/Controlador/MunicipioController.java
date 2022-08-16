/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.MunicipioDAO;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Natalia
 */
public class MunicipioController extends Conexion{
    
    public int Create(MunicipioDAO municipio) throws SQLException{
        
        String sql = "INSERT INTO Municipio(Nombre,DepartamentoID) VALUES(?,?)";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, municipio.getNombre());
        oPreparedStatement.setInt(2, municipio.getDepartamentoID());
        
        return oPreparedStatement.executeUpdate();
    }
    
    public MunicipioDAO Get(int ID) throws SQLException{
        MunicipioDAO municipio = new MunicipioDAO();
        String sql = "SELECT * FROM Municipio WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        ResultSet rs = oPreparedStatement.executeQuery();
        if (rs.next()) {
            municipio = new MunicipioDAO(rs.getInt("ID"), rs.getString("Nombre"), rs.getInt("DepartamentoID"));
        }
        
        return municipio;     
    }
    
   
    
    
}