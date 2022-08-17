

import Controlador.DepartamentoController;
import Controlador.MunicipioController;
import Modelo.MunicipioDAO;
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
        
        try {
            for(var s :new MunicipioController().Get())  
                System.out.println(s);
        } catch (SQLException ex) {
            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
        }
      
       
      
    }
    
}
