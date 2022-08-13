/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.DepartamentoDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;

/**
 *
 * @author mejia
 */
public class DepartamentoController extends Conexion {
    
    public int Create(DepartamentoDAO departamento) throws SQLException {
      //crear la consulta
      String  sql = "insert into Departamento(Nombre) values(?)";
      //prepara la consulta
     PreparedStatement oPreparedStatement =  conecta().prepareStatement(sql);
     oPreparedStatement.setString(1, departamento.getNombre());
     
        return oPreparedStatement.executeUpdate();
        
    }
      
    
    public ArrayList<DepartamentoDAO> Get(){
        return null;
        
    }
    
    public DepartamentoDAO Get(int ID){
        return null;
        
    }
    
    public int Update(){
        return 0;
        
    }
    
    public int Delete(int ID){
        return 0;
    }
    
}
