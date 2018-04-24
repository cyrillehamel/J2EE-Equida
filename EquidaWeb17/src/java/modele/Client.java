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
public class Client {
    
    private int id;
    private String titre;
    private String nom;
    private String prenom ;
    private String rue;
    private String copos ;
    private String ville;
    private String mail;
    private Pays unPays ;
    private ArrayList<CategVente> lesCategVentes ;

    public Client() {
    }

    public Client(int id, String titre, String nom, String prenom, String mail) {
        this.id = id;
        this.titre = titre;
        this.nom = nom;
        this.prenom = prenom;
        this.mail = mail;
    }

    public int getId() {
        return id;
    }

    public String getTitre() {
        return titre;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getRue() {
        return rue;
    }

    public String getCopos() {
        return copos;
    }

    public String getVille() {
        return ville;
    }

    public String getMail() {
        return mail;
    }

    public Pays getUnPays() {
        return unPays;
    }

    public ArrayList<CategVente> getLesCategVentes() {
        return lesCategVentes;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setRue(String rue) {
        this.rue = rue;
    }

    public void setCopos(String copos) {
        this.copos = copos;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setUnPays(Pays unPays) {
        this.unPays = unPays;
    }

    public void setLesCategVentes(ArrayList<CategVente> lesCategVentes) {
        this.lesCategVentes = lesCategVentes;
    }

    
          
    public void addUneCategVente(CategVente uneCategVente){
        if (lesCategVentes == null){
            lesCategVentes = new ArrayList<CategVente>();
        }
        lesCategVentes.add(uneCategVente);
    }
    
    public int nbCategVente(){
        return lesCategVentes.size();
    }
}
