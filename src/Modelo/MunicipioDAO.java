/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Natalia
 */
public class MunicipioDAO {
    private int ID;
    private String Nombre;
    private int DepartamentoID;
    
    private DepartamentoDAO Departamento;

    public MunicipioDAO() {
    }

    public MunicipioDAO(int ID, String Nombre, int DepartamentoID) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.DepartamentoID = DepartamentoID;
    }

    public MunicipioDAO(int ID, String Nombre, int DepartamentoID, DepartamentoDAO Departamento) {
        this.ID = ID;
        this.Nombre = Nombre;
        this.DepartamentoID = DepartamentoID;
        this.Departamento = Departamento;
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

    public int getDepartamentoID() {
        return DepartamentoID;
    }

    public void setDepartamentoID(int DepartamentoID) {
        this.DepartamentoID = DepartamentoID;
    }

    public DepartamentoDAO getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(DepartamentoDAO Departamento) {
        this.Departamento = Departamento;
    }
    
    
    
}
