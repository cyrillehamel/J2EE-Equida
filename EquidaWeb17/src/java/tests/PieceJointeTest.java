/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.Courriel;
import modele.PieceJointe;

/**
 *
 * @author ts2slam
 */
public class PieceJointeTest {
    public static void main(String[] args) {
        
        PieceJointe unePieceJointe1 = new PieceJointe(1, "cheminl", "c'est une pièce jointe"); 
        
        Courriel unCourriel1 = new Courriel(1,"17/02/2015","SIO2","SLAM4");
        Courriel unCourriel2 = new Courriel(1,"17/02/2015","SIO2","SLAM5");
        
        unePieceJointe1.addUnCourriel(unCourriel1);
        unePieceJointe1.addUnCourriel(unCourriel2);
        
        for(int i = 0 ; i<unePieceJointe1.getLesCourriels().size(); i++){
        System.out.println("La pièce jointe a pour  : " + unePieceJointe1.getLesCourriels().get(i).getCorps());
        }
        
        System.out.println("La pièce jointe a pour description : " +unePieceJointe1.getDescription());
        
}
}
