/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package alprueba;

import java.io.File;

/**
 *
 * @author Dary Castillo
 */
public class ALprueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        File file= new File("C:/Users/Maare/Downloads/ppmp/ElCompiIE/src/alprueba/lex.flex");
        jflex.Main.generate(file);
//Visual a=new Visual();
//a.setVisible(true);
//a.setLocationRelativeTo(null);
//        
        // TODO code application logic here
    }
    
}
