/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.ArrayList;

/**
 *
 * @author Zakina
 */
public class Vente {
    private int id;
    private String nom;
    private String dateDebutVente;
    private CategVente uneCategVente;
    private Lieu unLieu;
    private ArrayList<Courriel> lesCourriels ;
    private ArrayList<TypeCheval> lesTypes ;
    private ArrayList<Lot> lesLots ;

    public Vente() {
    }

    public Vente(int id, String nom, String dateDebutVente) {
        this.id = id;
        this.nom = nom;
        this.dateDebutVente = dateDebutVente;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getDateDebutVente() {
        return dateDebutVente;
    }

    public CategVente getUneCategVente() {
        return uneCategVente;
    }

    public Lieu getUnLieu() {
        return unLieu;
    }

    public ArrayList<Courriel> getLesCourriels() {
        return lesCourriels;
    }

    public ArrayList<TypeCheval> getLesTypes() {
        return lesTypes;
    }

    public ArrayList<Lot> getLesLots() {
        return lesLots;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setDateDebutVente(String dateDebutVente) {
        this.dateDebutVente = dateDebutVente;
    }

    public void setUneCategVente(CategVente uneCategVente) {
        this.uneCategVente = uneCategVente;
    }

    public void setUnLieu(Lieu unLieu) {
        this.unLieu = unLieu;
    }

    public void setLesCourriels(ArrayList<Courriel> lesCourriels) {
        this.lesCourriels = lesCourriels;
    }

    public void setLesTypes(ArrayList<TypeCheval> lesTypes) {
        this.lesTypes = lesTypes;
    }

    public void setLesLots(ArrayList<Lot> lesLots) {
        this.lesLots = lesLots;
    }
    
    public void addUnCourriel(Courriel unCourriel){
        if (lesCourriels == null){
            lesCourriels = new ArrayList<Courriel>();
        }
        lesCourriels.add(unCourriel);
    }
    
    public void addUnType(TypeCheval unType){
        if (lesTypes == null){
            lesTypes = new ArrayList<TypeCheval>();
        }
        lesTypes.add(unType);
    }
    
    public void addUnLot(Lot unLot){
        if (lesLots == null){
            lesLots = new ArrayList<Lot>();
        }
        lesLots.add(unLot);
    }
    
    public int nbCourriel(){
        return lesCourriels.size();
    }
}
