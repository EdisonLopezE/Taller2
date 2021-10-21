import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import org.aspectj.lang.Signature;

public aspect Log {

    File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
    //Aspecto: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
    pointcut success() : call(* money*(..) );
    after() : success() {
    	Signature sig= thisJoinPoint.getSignature();
    	try(FileWriter fw= new FileWriter(file,true);
    		BufferedWriter bw= new BufferedWriter(fw)){
    		bw.write("Fecha:"+cal.getTime()+","+"Tipo de transacción:"+sig.getName()+"\n");
    		bw.close();
    	}catch(IOException e){
    		System.out.print("Error al escribir");	
    	}
    	System.out.println("***transacción exitosa***");
    }
}