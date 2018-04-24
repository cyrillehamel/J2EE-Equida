package modele;
import java.util.ArrayList;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Zakina
 */
public class CategVente {
    private String code;
    private String libelle ;
    private ArrayList<Client> lesClients ;
    private ArrayList<Vente> lesVentes ;

    public CategVente() {
    }
    
    public CategVente(String code, String libelle) {
        this.code = code;
        this.libelle = libelle;
    }

    public String getCode() {
        return code;
    }

    public String getLibelle() {
        return libelle;
    }

    public ArrayList<Client> getLesClients() {
        return lesClients;
    }

    public ArrayList<Vente> getLesVentes() {
        return lesVentes;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public void setLesClients(ArrayList<Client> lesClients) {
        this.lesClients = lesClients;
    }

    public void setLesVentes(ArrayList<Vente> lesVentes) {
        this.lesVentes = lesVentes;
    }

    public void addUnClient(Client unClient){
        if (lesClients == null){
            lesClients = new ArrayList<Client>();
        }
        lesClients.add(unClient);
    }
    
    public void addUneVente(Vente uneVente){
        if (lesVentes == null){
            lesVentes = new ArrayList<Vente>();
        }
        lesVentes.add(uneVente);
    }
    
    
}
