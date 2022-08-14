
package Modelo;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class EstadoCivilDAO {
    private int ID;
    private String Nombre;

    public EstadoCivilDAO() {
    }

    public EstadoCivilDAO(int ID, String Nombre) {
        this.ID = ID;
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
        return "EstadoCivilDAO{" + "ID=" + ID + ", Nombre=" + Nombre + '}';
    }
    
}
