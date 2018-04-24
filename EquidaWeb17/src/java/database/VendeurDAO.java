/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Vendeur;

/**
 *
 * @author ts2slam
 */
public class VendeurDAO {
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
     public static ArrayList<Vendeur>  getLesVendeurs(Connection connection){      
        ArrayList<Vendeur> lesVendeurs = new  ArrayList<Vendeur>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("select * from vendeur, intervenant where intervenant.id=vendeur.codeIntervenant");
            
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                Vendeur unVendeur = new Vendeur();
                unVendeur.setId(rs.getInt("id"));
                unVendeur.setNom(rs.getString("nom"));
                unVendeur.setPrenom(rs.getString("prenom"));
                unVendeur.setMail(rs.getString("mail"));
                
                lesVendeurs.add(unVendeur);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesVendeurs ;    
    }
}