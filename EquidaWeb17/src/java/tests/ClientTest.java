/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;


import modele.CategVente;
import modele.Client;
import modele.Pays;

/**
 *
 * @author Zakina
 */
public class ClientTest {
    
    public static void main(String[] args) {
        
        Client unClient1 = new Client(1, "proffesionnel", "dupont", "luc", "luc.dupont@gmail.com");
        unClient1.setUnPays(new Pays("FRA", "FRANCE"));  
        
        CategVente uneCategVente1 = new CategVente("26A", "Catégorie1");
        CategVente uneCategVente2 = new CategVente("35B", "Catégorie2");
        
        unClient1.addUneCategVente(uneCategVente1);
        unClient1.addUneCategVente(uneCategVente2);
        
        for(int i = 0 ; i<unClient1.getLesCategVentes().size(); i++){
        System.out.println("Le client a pour catégorie de vente : " + unClient1.getLesCategVentes().get(i).getLibelle());
        }
        
        System.out.println(unClient1.getNom() + " " + unClient1.getPrenom() + " a pour titre " + unClient1.getTitre() + ", pour messagerie : " +
        unClient1.getMail() + " et habite dans le pays suivant :" + unClient1.getUnPays().getNom());
        
        System.out.println("Nombre de catégories de vente : " + unClient1.nbCategVente());
        
        
    }
    
}
