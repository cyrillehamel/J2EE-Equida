/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.Courriel;
import modele.PieceJointe;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class CourrielTest {
    public static void main(String[] args) {
        Courriel unCourriel1 = new Courriel(1,"10/03/2016","Objet 1","Corps 1");
        unCourriel1.setUneVente(new Vente(1,"Vente1","03/12/2013"));
        
        PieceJointe unePieceJointe1 = new PieceJointe(1,"Chemin1","Description1");
        PieceJointe unePieceJointe2 = new PieceJointe(2,"Chemin2","Description2");
        
        unCourriel1.addUnePieceJointe(unePieceJointe1);
        unCourriel1.addUnePieceJointe(unePieceJointe2);
        
        for(int i = 0 ; i<unCourriel1.getLesPiecesJointes().size(); i++){
        System.out.println("Le courriel a pour description de pièce jointe : " + unCourriel1.getLesPiecesJointes().get(i).getDescription());
        }
        
        System.out.println("Le courriel a pour objet : " +unCourriel1.getObjet() + " et pour date de début de vente : " + unCourriel1.getUneVente().getDateDebutVente());
        
    }
}
