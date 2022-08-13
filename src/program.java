
import Controlador.Conexion;
import Controlador.DepartamentoController;
import Modelo.DepartamentoDAO;
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
       DepartamentoController d= new DepartamentoController();
       
        try {
            
            if(d.Create(new DepartamentoDAO(0,"NatyEGO"))>0){
                
                System.out.println("El registro fue guardado exitosamente");
            }else{
                System.out.println("El registro no fue guardado");
            }
        } catch (SQLException ex) {
            Logger.getLogger(program.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
