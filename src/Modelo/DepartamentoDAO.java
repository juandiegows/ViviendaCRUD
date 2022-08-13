/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author mejia
 */
public class DepartamentoDAO {
    private int ID;
    private String Nombre;

    public DepartamentoDAO() {
    }

    public DepartamentoDAO(int ID, String Nombre) {
        this.ID = ID;
        this.Nombre = Nombre;
    }

    @Override
    public String toString() {
        return "DepartamentoDAO{" + "ID=" + ID + ", Nombre=" + Nombre + '}';
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

    
    
    
}
