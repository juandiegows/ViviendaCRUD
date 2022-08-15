/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.MunicipioDAO;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Natalia
 */
public class MunicipioController extends Conexion{
    
    
    public int Create(MunicipioDAO municipio) throws SQLException {
        String sql = "insert into Departamento(Nombre,DepartamentoID) values(?,?)";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, municipio.getNombre());
        return oPreparedStatement.executeUpdate();

    }
    
    
}
