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
import modele.Course;

/**
 *
 * @author ts2slam
 */
public class CourseDAO {
    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    public static ArrayList<Course>  getLesCourses(Connection connection){      
        ArrayList<Course> lesCourses = new  ArrayList<Course>();
        try
        {
            //preparation de la requete     
            requete=connection.prepareStatement("SELECT * from course;");
            //executer la requete
            rs=requete.executeQuery();
            
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
               Course uneCourse = new Course();
               uneCourse.setId(rs.getInt("id"));
               uneCourse.setNom(rs.getString("nom"));
               uneCourse.setLieu(rs.getString("lieu"));
               uneCourse.setDate(rs.getString("date"));
               
               lesCourses.add(uneCourse);
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return lesCourses ;    
    } 
    
    
        
    }
    

