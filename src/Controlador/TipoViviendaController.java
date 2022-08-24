/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.TipoViviendaDAO;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Natalia
 */
public class TipoViviendaController extends Conexion {
    
    public int Create(TipoViviendaDAO tipoVivienda) throws SQLException{
        String sql = "INSERT INTO TipoVivienda(Nombre) VALUES(?)";
        
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, tipoVivienda.getNombre());
        
        return oPreparedStatement.executeUpdate();
        
    }
    
    public TipoViviendaDAO Get(int ID) throws SQLException{
        TipoViviendaDAO tipoVivienda = new TipoViviendaDAO();
        String sql = "SELECT * FROM TipoVivienda WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        
        ResultSet rs = oPreparedStatement.executeQuery();
        
        if(rs.next()){
            tipoVivienda = new TipoViviendaDAO(rs.getInt("ID"), rs.getString("Nombre"));   
        }
        return tipoVivienda;
    }
    
    public ArrayList<TipoViviendaDAO> Get() throws SQLException{
        ArrayList<TipoViviendaDAO> tipoViviendaList = new ArrayList<>();
        String sql = "SELECT * FROM TipoVivienda ORDER BY Nombre";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(sql);
        
        while(rs.next()){
            
            tipoViviendaList.add(new TipoViviendaDAO(rs.getInt("ID"), rs.getString("Nombre")));
        }
        return tipoViviendaList;    
    }
    
    public int Update(int ID, TipoViviendaDAO tipoVivienda) throws SQLException{
        String sql = "UPDATE TipoVivienda SET Nombre = ? WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setString(1, tipoVivienda.getNombre());
        oPreparedStatement.setInt(2, ID);
        
        return oPreparedStatement.executeUpdate();    
    }
    
    public int Delete(int ID) throws SQLException{
        String sql = "DELETE FROM TipoVivienda WHERE ID = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, ID);
        
        return oPreparedStatement.executeUpdate();
        
    }
}
