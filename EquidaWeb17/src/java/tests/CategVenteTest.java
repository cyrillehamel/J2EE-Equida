/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.CategVente;
import modele.Client;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class CategVenteTest {
    public static void main(String[] args) {
        CategVente uneCategVente1 = new CategVente("PS","Pure_sang");
        
        Client unClient1 = new Client(1, "Professionnel","Mercure","Fredo","lolelole@gmail.com");
        Client unClient2 = new Client(2, "Amateur","Boss","Hugo","hugoBoss@gmail.com");
        
        uneCategVente1.addUnClient(unClient1);
        uneCategVente1.addUnClient(unClient2);
        
        Vente uneVente1 = new Vente(1,"Vente1","01/02/2015");
        Vente uneVente2 = new Vente(1,"Vente2","02/02/2015");
        
        uneCategVente1.addUneVente(uneVente1);
        uneCategVente1.addUneVente(uneVente2);
        
        for(int i = 0 ; i<uneCategVente1.getLesClients().size(); i++){
        System.out.println("La catégorie de vente a pour client : " + uneCategVente1.getLesClients().get(i).getNom() + " " + uneCategVente1.getLesClients().get(i).getPrenom());
        }
        
        for(int i = 0 ; i<uneCategVente1.getLesVentes().size(); i++){
        System.out.println("La catégorie de vente a pour vente : " + uneCategVente1.getLesVentes().get(i).getNom());
        }
        
        System.out.println("La catégorie de vente a pour nom : " + uneCategVente1.getLibelle());
    }
}
