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
public class Cheval {
    private int id;
    private String nom;
    private String sexe;
    private String pere;
    private String mere;
    private ArrayList<Participer> lesParticipations;
    private TypeCheval unType;
    private ArrayList<Lot> lesLots ;

    public Cheval() {
    }

    public Cheval(int id, String nom, String sexe, String pere, String mere) {
        this.id = id;
        this.nom = nom;
        this.sexe = sexe;
        this.pere = pere;
        this.mere = mere;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getPere() {
        return pere;
    }

    public void setPere(String pere) {
        this.pere = pere;
    }

    public String getMere() {
        return mere;
    }

    public void setMere(String mere) {
        this.mere = mere;
    }

    public TypeCheval getUnType() {
        return unType;
    }

    public void setUnType(TypeCheval unType) {
        this.unType = unType;
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

    public ArrayList<Participer> getLesParticipations() {
        return lesParticipations;
    }

    public void setLesParticipations(ArrayList<Participer> lesParticipations) {
        this.lesParticipations = lesParticipations;
    }
    
    public void addUneParticipation(Participer uneParticipation){
        if (lesParticipations == null){
            lesParticipations = new ArrayList<Participer>();
        }
        lesParticipations.add(uneParticipation);
    }
    
    
    
}
