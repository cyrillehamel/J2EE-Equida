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
import modele.Cheval;
import modele.Lot;
import modele.Vendeur;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class LotDAO {
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    
    
    // Méthode permettant d'insérer un client en base à partir de l'objet client passé en paramètre
    // Cette méthode renvoie l'objet client
    public static Lot lotAjouter(Connection connection, Lot unLot){      
        int idGenere = -1;
        try
        {
            //preparation de la requete
            // id (clé primaire de la table client) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.

            requete=connection.prepareStatement("INSERT INTO lot ( prixDepart, codeVente, codeCheval, codeVendeur)\n" +
                    "VALUES (?,?,?,?)", requete.RETURN_GENERATED_KEYS );
            
            requete.setInt(1, unLot.getPrixDepart());
            requete.setInt(2, unLot.getUneVente().getId());
            requete.setInt(3, unLot.getUnCheval().getId());
            requete.setInt(4, unLot.getUnVendeur().getId());

           /* Exécution de la requête */
            requete.executeUpdate();
            
             // Récupération de id auto-généré par la bdd dans la table client
            rs = requete.getGeneratedKeys();
            while ( rs.next() ) {
                idGenere = rs.getInt( 1 );
                unLot.setId(idGenere);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unLot ;    
    }
    public static ArrayList<Lot> getLesLots(Connection connection, String codeVente){      
        ArrayList<Lot> lesLots = new  ArrayList<Lot>();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT l.id as idLot, l.prixDepart as prixDepartLot,l.codeVente as codeVenteLot, l.codeCheval as codeChevalLot,l.codeVendeur as codeVendeurLot, c.nom as nomCheval,c.id as idCheval,i.prenom as prenomVendeur, i.nom as nomVendeur, i.id as idIntervenant FROM vente v, lot l, cheval c,vendeur ve,intervenant i where c.id = l.codeCheval and v.id=l.codeVente and l.codeVendeur=ve.codeIntervenant and i.id=ve.codeIntervenant and v.id=? ");
            requete.setString(1, codeVente);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                
                
                Lot unLot = new Lot();
                unLot.setId(rs.getInt("idLot"));
                unLot.setPrixDepart(rs.getInt("prixDepartLot"));
               
                Cheval unCheval=new Cheval();
                unCheval.setId(rs.getInt("idCheval"));
                unCheval.setNom(rs.getString("nomCheval"));
                
                
                Vendeur unVendeur=new Vendeur();
                 unVendeur.setId(rs.getInt("idIntervenant"));
                unVendeur.setNom(rs.getString("nomVendeur"));
                unVendeur.setPrenom(rs.getString("prenomVendeur"));
                unLot.setUnCheval(unCheval);
                unLot.setUnVendeur(unVendeur);
               
                
               
                /*CategVente uneCateg = new CategVente();
                uneCateg.setCode(rs.getString("code"));  // on aurait aussi pu prendre CodeCateg
                uneCateg.setLibelle(rs.getString("libelle"));*/
                
                lesLots.add(unLot);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesLots ;    
    }
}