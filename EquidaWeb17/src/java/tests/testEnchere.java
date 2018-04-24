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
public class testEnchere {
    public static void main(String[] args) {
        Enchere uneEnchere1 = new Enchere(1,100);
        uneEnchere1.setUnLot(new Lot(1,15));
        
        System.out.println("Le montant de l'enchère est de : " + uneEnchere1.getMontant() + " et le prix de base était de : " + uneEnchere1.getUnLot().getPrixDepart());
    }
}
