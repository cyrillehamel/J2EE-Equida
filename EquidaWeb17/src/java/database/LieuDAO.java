/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import static database.VenteDAO.requete;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.CategVente;
import modele.Lieu;
import modele.Vente;

/**
 *
 * @author ts2slam
 */
public class LieuDAO {

    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    public static ArrayList<Lieu> getLesLieu(Connection connection) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
        ArrayList<Lieu> lesLieux = new  ArrayList<Lieu>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("select * from lieu");          
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                Lieu unLieu = new Lieu();
                unLieu.setId(rs.getInt("id"));
                unLieu.setVille(rs.getString("ville"));
                unLieu.setNbBoxes(rs.getInt("nbBoxes"));
                unLieu.setCommentaires(rs.getString("commentaires"));
                
                lesLieux.add(unLieu);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return lesLieux; 
        
    }
    
}
