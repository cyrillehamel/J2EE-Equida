/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.CategVenteDAO;
import database.ChevalDAO;
import database.ClientDAO;
import database.CourrielDAO;
import database.LieuDAO;
import database.LotDAO;
import database.PaysDAO;
import database.TypeChevalDAO;
import database.Utilitaire;
import database.VenteDAO;
import formulaires.ClientForm;
import formulaires.VenteForm;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modele.CategVente;
import modele.Cheval;
import modele.Client;
import modele.Courriel;
import modele.Lieu;
import modele.Lot;
import modele.Pays;
import modele.TypeCheval;
import modele.Vente;

/**
 *
 * @author Zakina
 */
public class ServletVentes extends HttpServlet {
    
     Connection connection ;
      
        
    @Override
    public void init()
    {     
        ServletContext servletContext=getServletContext();
        connection=(Connection)servletContext.getAttribute("connection");
    }
    
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
        //try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletVentes</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletVentes at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = request.getRequestURI();
        
        // Récup et affichage par date décroissante de toutes les ventes       
        if(url.equals("/EQUI01/ServletVentes/listerLesVentes"))
        {  
            ArrayList<Vente> lesVentes = VenteDAO.getLesVentes(connection);
            request.setAttribute("pLesVentes", lesVentes);
            getServletContext().getRequestDispatcher("/vues/ventes/listerLesVentes.jsp").forward(request, response);
        }
        
        // Récup et affichage des clients interessés par une certaine catégorie de ventes
        if(url.equals("/EQUI01/ServletVentes/listerLesClients"))
        {  
           
            String codeCat = (String)request.getParameter("codeCat");
           
            
            ArrayList<Client> lesClients = VenteDAO.getLesClients(connection, codeCat);
            request.setAttribute("pLesClients", lesClients);
            getServletContext().getRequestDispatcher("/vues/ventes/listerLesClients.jsp").forward(request, response);
        }
        if(url.equals("/EQUI01/ServletVentes/listerLesLots"))
        {  
           
            String codeVente = (String)request.getParameter("codeVente");
           
            
            ArrayList<Lot> lesLots = LotDAO.getLesLots(connection, codeVente);
            request.setAttribute("pLesLots", lesLots);
            getServletContext().getRequestDispatcher("/vues/ventes/listerLesLots.jsp").forward(request, response);
        }
        
        // Implémente la fonctionnalité « Saisie d'une vente de chevaux »
        if(url.equals("/EQUI01/ServletVentes/ajouterVente"))
        {
            ArrayList<Lieu> lesLieux = LieuDAO.getLesLieux(connection);
            request.setAttribute("pLesLieux", lesLieux);
            
            ArrayList<CategVente> lesCategVente = CategVenteDAO.getLesCategVentes(connection);
            request.setAttribute("pLesCategVente", lesCategVente);
            
            System.out.println("Servlet");
            
            this.getServletContext().getRequestDispatcher("/vues/ventes/venteAjouter.jsp" ).forward( request, response );
        }
        // liste les lieux
        if(url.equals("/EQUI01/ServletVentes/listerLesLieux"))
        {
            ArrayList<Lieu> lesLieux = LieuDAO.getLesLieux(connection);
            request.setAttribute("pLesLieux", lesLieux);
            this.getServletContext().getRequestDispatcher("/vues/ventes/listerLesLieux.jsp" ).forward( request, response );
        }
       
        // Récup et affichage des courriels concernant une certaine vente et de leur pieces jointe
        if(url.equals("/EQUI01/ServletVentes/listerLesCourriels"))
        {  
           
            String codeVente = (String)request.getParameter("codeVente");
           
            
            ArrayList<Courriel> lesCourriels = CourrielDAO.getLesCourriels(connection, codeVente);
            request.setAttribute("pLesCourriels", lesCourriels);
            getServletContext().getRequestDispatcher("/vues/ventes/listerLesCourriels.jsp").forward(request, response);
        }
        
        if(url.equals("/EQUI01/ServletVentes/consulterCourriel")){
             
            String codeCourriel = (String)request.getParameter("codeCourriel");
           
            Courriel unCourriel = CourrielDAO.getUnCourriels(connection, codeCourriel);
            request.setAttribute("pUnCourriel", unCourriel);
            getServletContext().getRequestDispatcher("/vues/ventes/consulterCourriel.jsp").forward(request, response);
        }
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        /* Préparation de l'objet formulaire */
        VenteForm form = new VenteForm();
		
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        Vente uneVente = form.ajouterVente(request);
        
      
        
        /* Stockage du formulaire et de l'objet dans l'objet request */
        request.setAttribute( "form", form );
        request.setAttribute( "pVente", uneVente );
		
        if (form.getErreurs().isEmpty()){
            // Il n'y a pas eu d'erreurs de saisie, donc on renvoie la vue affichant les infos du client 
            
            System.out.println("go to lister");
            VenteDAO.ajouterVente(connection, uneVente);
            
            ArrayList<Vente> lesVentes = VenteDAO.getLesVentes(connection);
            request.setAttribute("pLesVentes", lesVentes);
            
            this.getServletContext().getRequestDispatcher("/vues/ventes/listerLesVentes.jsp" ).forward( request, response );
        }
        else
        { 
		// il y a des erreurs. On réaffiche le formulaire avec des messages d'erreurs
            ArrayList<Lieu> lesLieux = LieuDAO.getLesLieux(connection);
            request.setAttribute("pLesLieux", lesLieux);
            
            ArrayList<CategVente> lesCateg = CategVenteDAO.getLesCategVentes(connection);
            request.setAttribute("pLesTypesCheval", lesCateg);
            
            System.out.println("retour form");
            
           this.getServletContext().getRequestDispatcher("/vues/ventes/venteAjouter.jsp" ).forward( request, response );
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
  public void destroy(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {
        try
        {
            //fermeture
            System.out.println("Connexion fermée");
        }
        catch (Exception e) 
        {
            e.printStackTrace();
            System.out.println("Erreur lors de l’établissement de la connexion");
        }
        finally
        {
            //Utilitaire.fermerConnexion(rs);
            //Utilitaire.fermerConnexion(requete);
            Utilitaire.fermerConnexion(connection);
        }
    }
}
