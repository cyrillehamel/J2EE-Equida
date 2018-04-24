/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import static database.ClientDAO.requete;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Cheval;
import modele.Course;
import modele.Participer;
import modele.Pays;
import modele.TypeCheval;

/**
 *
 * @author ts2slam
 */
public class ChevalDAO {

    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    public static ArrayList<Cheval>  getLesChevaux(Connection connection){      
        ArrayList<Cheval> lesChevaux = new  ArrayList<Cheval>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("SELECT c.*, tc.id as idType, tc.libelle, tc.description FROM cheval c, typecheval tc where c.codeTypeCheval=tc.id");
            
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                Cheval unCheval = new Cheval();
                unCheval.setId(rs.getInt("id"));
                unCheval.setNom(rs.getString("nom"));
                unCheval.setSexe(rs.getString("sexe"));
                unCheval.setPere(rs.getString("pere"));
                unCheval.setMere(rs.getString("mere"));
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setId(rs.getInt("idType"));
                unTypeCheval.setLibelle(rs.getString("libelle"));
                unTypeCheval.setDescription(rs.getString("description"));
                unCheval.setUnType(unTypeCheval);
                
                lesChevaux.add(unCheval);
                
                
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesChevaux ;    
    } 
    
    public static Cheval getDetailCheval(Connection connection, int codeCheval) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("Select che.*, p.place, cou.id as couId, cou.nom as couNom, cou.lieu as couLieu, cou.date as couDate, typ.id as typId, typ.libelle as typLibelle, typ.description as typDescription\n" +
                "from cheval as che, participer as p, course as cou, typecheval as typ \n" +
                "where che.codeTypeCheval = typ.id \n" +
                "and p.codeCheval = che.id \n" +
                "and p.codeCourse = cou.id \n" +
                "and che.id = ?");
             requete.setInt(1, codeCheval);
            System.out.println(requete);
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            if ( rs.next() ) {  
                Cheval unCheval = new Cheval();
                unCheval.setId(rs.getInt("id"));
                unCheval.setNom(rs.getString("nom"));
                unCheval.setSexe(rs.getString("sexe"));
                unCheval.setPere(rs.getString("pere"));
                unCheval.setMere(rs.getString("mere"));
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setId(rs.getInt("typId"));
                unTypeCheval.setLibelle(rs.getString("typLibelle"));
                unTypeCheval.setDescription(rs.getString("typDescription"));
                unCheval.setUnType(unTypeCheval);
                
                Course uneCourse = new Course();
                uneCourse.setId(rs.getInt("couId"));
                uneCourse.setNom(rs.getString("couNom"));
                uneCourse.setLieu(rs.getString("couLieu"));
                uneCourse.setDate(rs.getString("couDate"));
                
                Participer uneParticipation = new Participer();
                uneParticipation.setPlace(rs.getInt("place"));
               // uneParticipation.setUnCheval(unCheval);
                uneParticipation.setUneCourse(uneCourse);
                
                unCheval.addUneParticipation(uneParticipation);
                
               return unCheval;
                
            }
            else
                return null;
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            return null;
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        
    }
    
    public static Cheval getUnCheval(Connection connection, int codeCheval) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("Select che.*, p.place, typ.id as typId, typ.libelle as typLibelle, typ.description as typDescription\n" +
                "from cheval as che, participer as p, typecheval as typ \n" +
                "where che.codeTypeCheval = typ.id \n" +
                "and p.codeCheval = che.id \n" +
                "and che.id = ?");
             requete.setInt(1, codeCheval);
            System.out.println(requete);
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            if ( rs.next() ) {  
                Cheval unCheval = new Cheval();
                unCheval.setId(rs.getInt("id"));
                unCheval.setNom(rs.getString("nom"));
                unCheval.setSexe(rs.getString("sexe"));
                unCheval.setPere(rs.getString("pere"));
                unCheval.setMere(rs.getString("mere"));
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setId(rs.getInt("typId"));
                unTypeCheval.setLibelle(rs.getString("typLibelle"));
                unTypeCheval.setDescription(rs.getString("typDescription"));
                unCheval.setUnType(unTypeCheval);
                
               return unCheval;
                
            }
            else
                return null;
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            return null;
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        
    }
    
    public static ArrayList<TypeCheval> getLesTypesCheval(Connection connection){      
        ArrayList<TypeCheval> LesTypes = new  ArrayList<TypeCheval>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("SELECT * FROM typecheval");
            
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setId(rs.getInt("id"));
                unTypeCheval.setLibelle(rs.getString("libelle"));
                unTypeCheval.setDescription(rs.getString("description"));
                //System.out.println(unTypeCheval.getLibelle());
                
                LesTypes.add(unTypeCheval);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return LesTypes;    
    }
    
    public static Cheval ajouterCheval(Connection connection, Cheval unChaval){      
        int idGenere = -1;
        try
        {
            //preparation de la requete
            // id (clé primaire de la table client) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.
            requete=connection.prepareStatement("INSERT INTO cheval (nom, sexe, codeTypeCheval, mere, pere) VALUES (?,?,?,?,?)"
                    , requete.RETURN_GENERATED_KEYS );
            requete.setString(1, unChaval.getNom());
            requete.setString(2, unChaval.getSexe());
            requete.setInt(3, unChaval.getUnType().getId());
            requete.setString(4, unChaval.getMere());
            requete.setString(5, unChaval.getPere());

           /* Exécution de la requête */
            requete.executeUpdate();
            
             // Récupération de id auto-généré par la bdd dans la table client
            rs = requete.getGeneratedKeys();
            while ( rs.next() ) {
                idGenere = rs.getInt( 1 );
                unChaval.setId(idGenere);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unChaval;    
    }
    
        
}
