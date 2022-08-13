/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;


import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author mejia
 */
public class Conexion {
    private String usuario = "juandiegows";
    private String contraseña = "12345";
    private String bd = "Viviendas";
    private final String Servidor = "JUANDIEGOWS";
    private final String puerto = "1433";
    private String connectionUrl = "jdbc:sqlserver://"+Servidor+":"+puerto
            +";TrustServerCertificate=True;databaseName=" 
            + bd + ";user=" + usuario + ";password=" 
            + contraseña;

    Connection conecta = null;

    public Connection conecta() {

        try  {
            java.sql.Connection con = DriverManager.getConnection(connectionUrl);
               
            System.out.println("Conectado ");
            
            return con;
         
        } // Handle any errors that may have occurred.
        catch (SQLException e) {
            System.out.println("  Error "+e.getMessage());
            e.printStackTrace();
        }
     
        return null;
    }

    
}
