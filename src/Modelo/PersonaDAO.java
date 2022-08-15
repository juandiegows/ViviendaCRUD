package Modelo;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class PersonaDAO {

    private int Cedula;
    private String Nombre;
    private int EstadoCivilID;
    private EstadoCivilDAO EstadoCivil;

    public PersonaDAO() {
    }

    public PersonaDAO(int Cedula, String Nombre, int EstadoCivilID) {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
        this.EstadoCivilID = EstadoCivilID;
    }

    public PersonaDAO(int Cedula, String Nombre, int EstadoCivilID, EstadoCivilDAO EstadoCivil) {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
        this.EstadoCivilID = EstadoCivilID;
        this.EstadoCivil = EstadoCivil;
    }

    public EstadoCivilDAO getEstadoCivil() {
        return EstadoCivil;
    }

    public void setEstadoCivil(EstadoCivilDAO EstadoCivil) {
        this.EstadoCivil = EstadoCivil;
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
        return "PersonaDAO{" + "Cedula=" + Cedula + ", Nombre=" + Nombre + ", EstadoCivilID=" + EstadoCivilID + ", EstadoCivil=" + EstadoCivil + '}';
    }

    
}
