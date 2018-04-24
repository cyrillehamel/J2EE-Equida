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
public class Lot {
    private int id;
    private int prixDepart;
    private Vendeur unVendeur;
    private Cheval unCheval;
    private Vente uneVente;
    private ArrayList<Enchere> lesEncheres ;

    public Lot() {
    }

    public Lot(int id, int prixDepart) {
        this.id = id;
        this.prixDepart = prixDepart;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrixDepart() {
        return prixDepart;
    }

    public void setPrixDepart(int prixDepart) {
        this.prixDepart = prixDepart;
    }

    public Vendeur getUnVendeur() {
        return unVendeur;
    }

    public void setUnVendeur(Vendeur unVendeur) {
        this.unVendeur = unVendeur;
    }

    public Cheval getUnCheval() {
        return unCheval;
    }

    public void setUnCheval(Cheval unCheval) {
        this.unCheval = unCheval;
    }

    public Vente getUneVente() {
        return uneVente;
    }

    public void setUneVente(Vente uneVente) {
        this.uneVente = uneVente;
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
    
    public int nbEnchere(){
        return lesEncheres.size();
    }
    
    public int derniereEnchere(){
        return lesEncheres.get(lesEncheres.size()-1).getMontant();
    }
    
    public int avgEnchere(){
        
        int somme = 0 ;
        
        for(int i = 0; i<lesEncheres.size(); i++){
        
            somme = somme + lesEncheres.get(i).getMontant();
            
        }
        
        return somme/lesEncheres.size();
    }
    
    
}
