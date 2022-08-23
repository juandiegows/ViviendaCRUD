

import Controlador.TipoViviendaController;
import Modelo.TipoViviendaDAO;
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
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) {
        
        try {
            System.out.println(new TipoViviendaController().Delete(2));
        } catch (SQLException ex) {
            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
        }
       
      
    }
        
        
        
//        try {
//            
//            ArrayList<MunicipioDAO> mp = new MunicipioController().Get();
//            for(MunicipioDAO m:mp){
//                System.out.println(m);
//            }
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
//        }
 

       
    }
    

