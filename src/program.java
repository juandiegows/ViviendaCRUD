

import Controlador.MunicipioController;
import Modelo.MunicipioDAO;
import java.sql.SQLException;
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
        
        try {
            new MunicipioController().Create(new MunicipioDAO("Natalia",19));
        } catch (SQLException ex) {
            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
        }
     
      
       
      
    }
    
}
