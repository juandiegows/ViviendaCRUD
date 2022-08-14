
package Modelo;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class PersonaDAO {
     private int Cedula;
     private String Nombre; 
     private int EstadoCivilID;

    public PersonaDAO() {
    }

    public PersonaDAO(int Cedula, String Nombre, int EstadoCivilID) {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
        this.EstadoCivilID = EstadoCivilID;
    }

    public int getCedula() {
        return Cedula;
    }

    public void setCedula(int Cedula) {
        this.Cedula = Cedula;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getEstadoCivilID() {
        return EstadoCivilID;
    }

    public void setEstadoCivilID(int EstadoCivilID) {
        this.EstadoCivilID = EstadoCivilID;
    }

    @Override
    public String toString() {
        return "PersonaDAO{" + "Cedula=" + Cedula + ", Nombre=" + Nombre + ", EstadoCivilID=" + EstadoCivilID + '}';
    }
     
}
