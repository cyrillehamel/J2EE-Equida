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
import modele.Courriel;
import modele.PieceJointe;

/**
 *
 * @author ts2slam
 */
public class CourrielDAO {
    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    
    
    public static ArrayList<Courriel>  getLesCourriels(Connection connection, String codeVente){      
        ArrayList<Courriel> lesCourriels = new  ArrayList<Courriel>();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT c.id as idCourriel,c.date as dateCourriel ,c.objet,c.corps,c.codeVente FROM courriel c, vente v where v.id=c.codeVente and v.id=? ");
            requete.setString(1, codeVente);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                Courriel unCourriel = new Courriel();
                unCourriel.setId(rs.getInt("idCourriel"));
                unCourriel.setDate(rs.getString("dateCourriel"));
                unCourriel.setCorps(rs.getString("corps"));
                unCourriel.setObjet(rs.getString("objet"));
                unCourriel.setLesPiecesJointes(PieceJointeDAO.getLesPieceJointe(connection,Integer.toString(rs.getInt("idCourriel"))));
                
                lesCourriels.add(unCourriel);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesCourriels ;    
    } 
     
     
    public static Courriel  getUnCourriels(Connection connection, String codeCourriel){      
        Courriel unCourriel = new Courriel();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT c.id as idCourriel, c.date as dateCourriel , c.objet ,c.corps  FROM courriel c where id = ? ");
            requete.setString(1, codeCourriel);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                
                unCourriel.setId(rs.getInt("idCourriel"));
                unCourriel.setDate(rs.getString("dateCourriel"));
                unCourriel.setCorps(rs.getString("corps"));
                unCourriel.setObjet(rs.getString("objet"));
                unCourriel.setLesPiecesJointes(PieceJointeDAO.getLesPieceJointe(connection,Integer.toString(rs.getInt("idCourriel"))));
                
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        
        return unCourriel ;    
    } 
    public static Courriel ajouterCourriel(Connection connection, Courriel unCourriel){      
        int idGenere = -1;
        try
        {
            //preparation de la requete
            // id (clé primaire de la table client) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.
            requete=connection.prepareStatement("INSERT INTO courriel ( date,objet,corps,codeVente)\n" +
                    "VALUES (?,?,?,?)", requete.RETURN_GENERATED_KEYS );
            requete.setString(1, unCourriel.getDate());
            requete.setString(2, unCourriel.getObjet());
            requete.setString(3, unCourriel.getCorps());
            requete.setString(4, Integer.toString(unCourriel.getUneVente().getId()));
           

          
            requete.executeUpdate();
            
             // Récupération de id auto-généré par la bdd dans la table client
            rs = requete.getGeneratedKeys();
            while ( rs.next() ) {
                idGenere = rs.getInt( 1 );
                unCourriel.setId(idGenere);
            }
            
            
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unCourriel ;    
    } 
}
