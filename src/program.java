
import Controlador.Conexion;
import Controlador.DepartamentoController;
import Controlador.EstadoCivilController;
import Modelo.DepartamentoDAO;
import Modelo.EstadoCivilDAO;
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
       DepartamentoController d= new DepartamentoController();
       
       EstadoCivilController oEstadoCivilController = new EstadoCivilController();
      // oEstadoCivilController.Add(new EstadoCivilDAO(7, "Gay"));
       System.out.println("Deleted " + oEstadoCivilController.DELETE(6));
       
       ArrayList <EstadoCivilDAO> lista = oEstadoCivilController.get();
       for(EstadoCivilDAO EstadoCivil: lista){
           System.out.println(EstadoCivil.toString());
       }
       
       
       
       
    }
    
}
