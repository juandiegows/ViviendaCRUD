
import Controlador.Conexion;
import Controlador.DepartamentoController;
import Controlador.EstadoCivilController;
import Controlador.PersonaController;
import Controlador.PersonaViviendaController;
import Modelo.DepartamentoDAO;
import Modelo.EstadoCivilDAO;
import Modelo.PersonaDAO;
import Modelo.PersonaViviendaDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author mejia
 */
public class program {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)  {
       /*DepartamentoController d= new DepartamentoController();
       
       EstadoCivilController oEstadoCivilController = new EstadoCivilController();
       oEstadoCivilController.Add(new EstadoCivilDAO(7, "Gay"));
       System.out.println("Deleted " + oEstadoCivilController.DELETE(6));
       
       ArrayList <EstadoCivilDAO> lista = oEstadoCivilController.get();
       for(EstadoCivilDAO EstadoCivil: lista){
           System.out.println(EstadoCivil.toString());
       }
       
       PersonaController oPersonaController = new PersonaController();
       ArrayList <PersonaDAO> lista = oPersonaController.Get();
       oPersonaController.Add(new PersonaDAO(27008373, "Martha Amaya", 1));  
       System.out.println("Deleted "+oPersonaController.DELETE(27008373));o 
       for(PersonaDAO persona: lista){
            System.out.println(persona.toString());
        }
       System.out.println("Updated : " + oPersonaController.UPDATE(27008373,new PersonaDAO(27008373,"Marta cuello", 2)));
       
       */
       
       //PersonaViviendaController oPersonaViviendaController = new PersonaViviendaController();
       
      // new PersonaViviendaDAO(1, 1, 1, new java.sql.Date(2022,8,31));
       
    }
    
}
