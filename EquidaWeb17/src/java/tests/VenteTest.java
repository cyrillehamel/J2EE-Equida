/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import modele.CategVente;
import modele.Courriel;
import modele.Lieu;
import modele.TypeCheval;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class VenteTest {
    public static void main(String[] args) {
        Vente uneVente1 = new Vente(1,"Vente1","13/8/1998");
        uneVente1.setUnLieu(new Lieu(1,"Caen",3,"Commentaire 1"));
        uneVente1.setUneCategVente(new CategVente("PS","Pure-sang"));
        
        Courriel unCourriel1 = new Courriel(1,"10/03/2016","Objet 1","Corps 1");
        Courriel unCourriel2 = new Courriel(2,"12/03/2016","Objet 2","Corps 2");
        
        uneVente1.addUnCourriel(unCourriel1);
        uneVente1.addUnCourriel(unCourriel2);
        
        for(int i = 0 ; i<uneVente1.getLesCourriels().size(); i++){
        System.out.println("La vente est associé au courriel(objet) : " + uneVente1.getLesCourriels().get(i).getObjet());
        }
        
        TypeCheval unType1 = new TypeCheval(1,"Pure-Sang","description1");
        TypeCheval unType2 = new TypeCheval(2,"Pas Pure-Sang","description2");
        
        uneVente1.addUnType(unType1);
        uneVente1.addUnType(unType2);
        
        for(int i = 0 ; i<uneVente1.getLesCourriels().size(); i++){
        System.out.println("La vente est associé au type de cheval suivant) : " + uneVente1.getLesTypes().get(i).getLibelle());
        }
        
        System.out.println("La vente a pour nom : " +uneVente1.getNom() + ", pour lieu : " + uneVente1.getUnLieu().getVille() + " et une catégorie de vente : " + uneVente1.getUneCategVente().getLibelle());
        
        System.out.println(uneVente1.nbCourriel());
    }
}
