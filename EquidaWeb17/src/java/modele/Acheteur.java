/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.ArrayList;

/**
 *
 * @author ts2slam
 */
public class Acheteur extends Intervenant {

    private ArrayList<Enchere> lesEncheres ;
    
    public Acheteur() {
        super();
    }

    public Acheteur(int id, String nom, String prenom, String mail) {
        super(id, nom, prenom, mail);
    }

    public ArrayList<Enchere> getLesEncheres() {
        return lesEncheres;
    }

    public void setLesEncheres(ArrayList<Enchere> lesEncheres) {
        this.lesEncheres = lesEncheres;
    }
    
    public void addUneEnchere(Enchere uneEnchere){
        if (lesEncheres == null){
            lesEncheres = new ArrayList<Enchere>();
        }
        lesEncheres.add(uneEnchere);
    }
   
}
