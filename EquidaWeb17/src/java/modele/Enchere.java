/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author ts2slam
 */
public class Enchere {
    private int numero;
    private int montant;
    private Lot unLot;
    private Acheteur unAcheteur;

    public Enchere() {
    }

    public Enchere(int numero, int montant) {
        this.numero = numero;
        this.montant = montant;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    public Lot getUnLot() {
        return unLot;
    }

    public void setUnLot(Lot unLot) {
        this.unLot = unLot;
    }

    public Acheteur getUnAcheteur() {
        return unAcheteur;
    }

    public void setUnAcheteur(Acheteur unAcheteur) {
        this.unAcheteur = unAcheteur;
    }
    
    
}
