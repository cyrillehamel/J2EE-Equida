/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.Lieu;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class LieuTest {
    public static void main(String[] args) {
        Lieu unLieu1 = new Lieu(1,"Caen",4,"C'est un lieu");
        
        Vente uneVente1 = new Vente(1,"Vente1","01/02/2015");
        Vente uneVente2 = new Vente(2,"Vente2","02/02/2015");
        
        unLieu1.addUneVente(uneVente1);
        unLieu1.addUneVente(uneVente2);
        
        for(int i = 0 ; i<unLieu1.getLesVentes().size(); i++){
        System.out.println("Le lieu a pour Vente : " + unLieu1.getLesVentes().get(i).getNom());
        }
        
        System.out.println("Le lieu se situs dans la ville de : " +unLieu1.getVille());
    }
}
