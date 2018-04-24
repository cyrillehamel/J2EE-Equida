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
public class Course {
    private int id;
    private String nom;
    private String lieu;
    private String date;
    private Participer uneParticipation;

    public Course() {
    }

    public Course(int id, String nom, String lieu, String date) {
        this.id = id;
        this.nom = nom;
        this.lieu = lieu;
        this.date = date;
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

    public String getLieu() {
        return lieu;
    }

    public Participer getUneParticipation() {
        return uneParticipation;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setUneParticipation(Participer uneParticipation) {
        this.uneParticipation = uneParticipation;
    }
    
}
