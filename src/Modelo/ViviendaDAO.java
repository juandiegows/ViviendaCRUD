/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Natalia
 */
public class ViviendaDAO {
    private int Escritura;
    private int TipoViviendaID;
    private TipoViviendaDAO TipoVivienda;
    private String Direccion;
    private int MunicipioID;
    private MunicipioDAO Municipio;

    public ViviendaDAO() {
    }

    public ViviendaDAO(int Escritura, int TipoViviendaID, String Direccion, int MunicipioID) {
        this.Escritura = Escritura;
        this.TipoViviendaID = TipoViviendaID;
        this.Direccion = Direccion;
        this.MunicipioID = MunicipioID;
    }

    
    public ViviendaDAO(int Escritura, int TipoViviendaID, TipoViviendaDAO TipoVivienda, String Direccion, int MunicipioID, MunicipioDAO Municipio) {
        this.Escritura = Escritura;
        this.TipoViviendaID = TipoViviendaID;
        this.TipoVivienda = TipoVivienda;
        this.Direccion = Direccion;
        this.MunicipioID = MunicipioID;
        this.Municipio = Municipio;
    }

    public int getEscritura() {
        return Escritura;
    }

    public void setEscritura(int Escritura) {
        this.Escritura = Escritura;
    }

    public int getTipoViviendaID() {
        return TipoViviendaID;
    }

    public void setTipoViviendaID(int TipoViviendaID) {
        this.TipoViviendaID = TipoViviendaID;
    }

    public TipoViviendaDAO getTipoVivienda() {
        return TipoVivienda;
    }

    public void setTipoVivienda(TipoViviendaDAO TipoVivienda) {
        this.TipoVivienda = TipoVivienda;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public int getMunicipioID() {
        return MunicipioID;
    }

    public void setMunicipioID(int MunicipioID) {
        this.MunicipioID = MunicipioID;
    }

    public MunicipioDAO getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(MunicipioDAO Municipio) {
        this.Municipio = Municipio;
    }

    @Override
    public String toString() {
        return "ViviendaDAO{" + "Escritura=" + Escritura + ", TipoViviendaID=" + TipoViviendaID + ", TipoVivienda=" + TipoVivienda + ", Direccion=" + Direccion + ", MunicipioID=" + MunicipioID + ", Municipio=" + Municipio + '}';
    }
    
    
    
}
