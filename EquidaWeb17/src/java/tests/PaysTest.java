/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.Client;
import modele.Pays;

/**
 *
 * @author ts2slam
 */
public class PaysTest {
    public static void main(String[] args) {
         Pays unPays1 = new Pays("FRA","France");
         
         Client unClient1 = new Client(1, "Professionnel","Mercure","Fredo","lolelole@gmail.com");
         Client unClient2 = new Client(2, "Amateur","Harel","Hugo","hugoBoss@gmail.com");
        
         unPays1.addUnCLient(unClient1);
         unPays1.addUnCLient(unClient2);
         
         for(int i = 0 ; i<unPays1.getLesClients().size(); i++){
         System.out.println("Le Pays a pour client : " + unPays1.getLesClients().get(i).getNom() + " " + unPays1.getLesClients().get(i).getPrenom());
         }
         
         System.out.println("Le pays a pour nom : " +unPays1.getNom());
    
    }
}
