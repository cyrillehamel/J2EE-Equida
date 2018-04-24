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
public class Vendeur extends Intervenant {

    private ArrayList<Lot> lesLots ;
    
    public Vendeur() {
        super();
    }

    public Vendeur(int id, String nom, String prenom, String mail) {
        super(id, nom, prenom, mail);
    }

    public ArrayList<Lot> getLesLots() {
        return lesLots;
    }

    public void setLesLots(ArrayList<Lot> lesLots) {
        this.lesLots = lesLots;
    }
    
    public void addUnLot(Lot unLot){
        if (lesLots == null){
            lesLots = new ArrayList<Lot>();
        }
        lesLots.add(unLot);
    }
}
