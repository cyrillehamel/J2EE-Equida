/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;


import modele.Enchere;
import modele.Lot;

/**
 *
 * @author ts2slam
 */
public class LotTest {
    
    public static void main(String[] args) {
    Lot unLot1 = new Lot(1,15);
    Lot unLot2 = new Lot(1,500);
    
    Enchere uneEnchere1 = new Enchere(1,100);
    Enchere uneEnchere2 = new Enchere(2,115);
     
   
    
    unLot1.addUneEnchere(uneEnchere1);
    unLot1.addUneEnchere(uneEnchere2);
        
    for(int i = 0 ; i<unLot1.getLesEncheres().size(); i++){
    System.out.println("Le lot a l'enchère suivante : " + unLot1.getLesEncheres().get(i).getMontant());
    }
    
    System.out.println("Nombre d'enchère pour ce lot de vente : " + unLot1.nbEnchere());
    
    System.out.println("Le montant de la dernière enchère est de : " + unLot1.derniereEnchere());
    
    System.out.println("Le moyenne des enchères est de : " + unLot1.avgEnchere());
    
    }
}
