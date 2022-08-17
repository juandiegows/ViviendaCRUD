package Modelo;

import java.sql.Date;

/**
 *
 * @author JoseJorgeSarmientoAm
 */
public class PersonaViviendaDAO {
    private int ID;
    private int EscrituraID;
    private int CedulaID;  
    private Date Fecha;
    private ViviendaDAO Vivienda;
    private PersonaDAO persona;

    public PersonaViviendaDAO() {
    }

    public PersonaViviendaDAO(int ID, int EscrituraID, int CedulaID, Date Fecha) {
        this.ID = ID;
        this.EscrituraID = EscrituraID;
        this.CedulaID = CedulaID;
        this.Fecha = Fecha;
    }

    public PersonaViviendaDAO(int ID, int EscrituraID, int CedulaID, Date Fecha, ViviendaDAO Vivienda, PersonaDAO persona) {
        this.ID = ID;
        this.EscrituraID = EscrituraID;
        this.CedulaID = CedulaID;
        this.Fecha = Fecha;
        this.Vivienda = Vivienda;
        this.persona = persona;
    }

    public ViviendaDAO getVivienda() {
        return Vivienda;
    }

    public void setVivienda(ViviendaDAO Vivienda) {
        this.Vivienda = Vivienda;
    }

    public PersonaDAO getPersona() {
        return persona;
    }

    public void setPersona(PersonaDAO persona) {
        this.persona = persona;
    }
    
    
    

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getEscrituraID() {
        return EscrituraID;
    }

    public void setEscrituraID(int EscrituraID) {
        this.EscrituraID = EscrituraID;
    }

    public int getCedulaID() {
        return CedulaID;
    }

    public void setCedulaID(int CedulaID) {
        this.CedulaID = CedulaID;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    @Override
    public String toString() {
        return "PersonaViviendaDAO{" + "ID=" + ID + ", EscrituraID=" + EscrituraID + ", CedulaID=" + CedulaID + ", Fecha=" + Fecha + ", Vivienda=" + Vivienda + ", persona=" + persona + '}';
    }

    
    
    
}
