
import Controlador.PersonaController;
import Controlador.PersonaViviendaController;
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
    public static void main(String[] args) {
        try {
            for(PersonaViviendaDAO pv: new PersonaViviendaController().Get()){
                System.out.println(pv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
        }
         
       
    
    }

}
