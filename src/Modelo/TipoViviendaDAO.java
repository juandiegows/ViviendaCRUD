/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Natalia
 */
public class TipoViviendaDAO {
    private int ID;
    private String Nombre;

    public TipoViviendaDAO() {
    }

    public TipoViviendaDAO(int ID, String Nombre) {
        this.ID = ID;
        this.Nombre = Nombre;
    }

    public TipoViviendaDAO(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
    

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNombre() {
        return Nombre;
    }
    

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    @Override
    public String toString() {
        return "TipoViviendaDAO{" + "ID=" + ID + ", Nombre=" + Nombre + '}';
    }
    
}
