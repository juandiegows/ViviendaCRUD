/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.DepartamentoDAO;
import Modelo.MunicipioDAO;
import Modelo.TipoViviendaDAO;
import Modelo.ViviendaDAO;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Natalia
 */
public class ViviendaController extends Conexion {

    public int Create(ViviendaDAO vivienda) throws SQLException {
        String sql = "INSERT INTO Vivienda(Escritura,TipoViviendaID, Dirección, MunicipioID) VALUES(?,?,?,?)";

        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, vivienda.getEscritura());
        oPreparedStatement.setInt(2, vivienda.getTipoViviendaID());
        oPreparedStatement.setString(3, vivienda.getDireccion());
        oPreparedStatement.setInt(4, vivienda.getMunicipioID());

        return oPreparedStatement.executeUpdate();
    }

    public ViviendaDAO Get(int Escritura) throws SQLException {
        String sql = "SELECT Escritura,TipoViviendaID,TipoVivienda.Nombre AS NombreTipoVivienda,\n"
                + "Dirección,MunicipioID, Municipio.Nombre AS NombreMunicipio, \n"
                + "Departamento.ID AS DepartamentoID, Departamento.Nombre AS NombreDepartamento\n"
                + "FROM Vivienda\n"
                + "INNER JOIN TipoVivienda\n"
                + "ON Vivienda.TipoViviendaID = TipoVivienda.ID\n"
                + "INNER JOIN Municipio\n"
                + "ON Vivienda.MunicipioID = Municipio.ID\n"
                + "INNER JOIN Departamento \n"
                + "ON Municipio.DepartamentoID = Departamento.ID WHERE Escritura = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, Escritura);
        ResultSet rs = oPreparedStatement.executeQuery();

        if (rs.next()) {
            return new ViviendaDAO(rs.getInt(1), rs.getInt(2), new TipoViviendaDAO(
                    rs.getString(3)), rs.getString(4), rs.getInt(5),
                    new MunicipioDAO(rs.getString(6),
                            new DepartamentoDAO(rs.getInt(8), rs.getString(9))));
        }
        return null;
    }

    public ArrayList<ViviendaDAO> Get() throws SQLException {
        ArrayList<ViviendaDAO> viviendaList = new ArrayList<>();

        String sql = "SELECT Escritura,TipoViviendaID,TipoVivienda.Nombre AS NombreTipoVivienda,\n" +
"                Dirección,MunicipioID, Municipio.Nombre AS NombreMunicipio, \n" +
"                Departamento.ID AS DepartamentoID, Departamento.Nombre AS NombreDepartamento\n" +
"                FROM Vivienda\n" +
"                INNER JOIN TipoVivienda\n" +
"                ON Vivienda.TipoViviendaID = TipoVivienda.ID\n" +
"                INNER JOIN Municipio\n" +
"                ON Vivienda.MunicipioID = Municipio.ID\n" +
"                INNER JOIN Departamento \n" +
"                ON Municipio.DepartamentoID = Departamento.ID";
        Statement st = conecta().createStatement();
        ResultSet rs = st.executeQuery(sql);

        while (rs.next()) {

            viviendaList.add(new ViviendaDAO(rs.getInt("Escritura"), rs.getInt("TipoViviendaID"), 
                    new TipoViviendaDAO(rs.getString("NombreTipoVivienda")), rs.getString("Dirección"),rs.getInt("MunicipioID"),
                    new MunicipioDAO(rs.getString("NombreMunicipio"), new DepartamentoDAO(rs.getInt("DepartamentoID"),
                    rs.getString("NombreDepartamento")))));
        }
        return viviendaList;
    }

    public int Update(int Escritura, ViviendaDAO vivienda) throws SQLException{
        String sql = "UPDATE Vivienda SET Escritura=?,TipoViviendaID=?,Dirección=?,MunicipioID=? WHERE Escritura=?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, vivienda.getEscritura());
        oPreparedStatement.setInt(2, vivienda.getTipoViviendaID());
        oPreparedStatement.setString(3, vivienda.getDireccion());
        oPreparedStatement.setInt(4, vivienda.getMunicipioID());
        oPreparedStatement.setInt(5, Escritura);
        
        return oPreparedStatement.executeUpdate();   
    }
    
    public int Delete(int Escritura) throws SQLException{
        String sql = "DELETE FROM Vivienda WHERE Escritura = ?";
        PreparedStatement oPreparedStatement = conecta().prepareStatement(sql);
        oPreparedStatement.setInt(1, Escritura);
        
        return oPreparedStatement.executeUpdate();    
    }
}
