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
import modele.PieceJointe;

/**
 *
 * @author ts2slam
 */
public class PieceJointeDAO {
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    public static ArrayList<PieceJointe> getLesPieceJointe(Connection connection, String codeCourriel){
       ArrayList<PieceJointe> lesPieceJointes = new  ArrayList<PieceJointe>();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT p.chemin , p.description, p.id as idPiecejointe  FROM courriel c, piecejointe p, courrielpiecejointe cp  where c.id=cp.codeCourriel and cp.codePieceJointe=p.id and  c.id = ?");
            requete.setString(1, codeCourriel);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                PieceJointe unePieceJointe = new PieceJointe();
                unePieceJointe.setChemin(rs.getString("chemin"));
                unePieceJointe.setDescription(rs.getString("description"));
                unePieceJointe.setId(rs.getInt("idPiecejointe"));
                               
                lesPieceJointes.add(unePieceJointe);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesPieceJointes ;    
    }
}
