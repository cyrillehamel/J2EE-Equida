<%-- 
    Document   : ajouterVente
    Created on : 17 oct. 2017, 11:37:11
    Author     : ts2slam
--%>

<%@page import="modele.CategVente"%>
<%@page import="modele.TypeCheval"%>
<%@page import="modele.Lieu"%>
<%@page import="java.util.ArrayList"%>
<%@page import="formulaires.VenteForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
        <h1>NOUVELLE VENTE</h1>
        
         <%
                //Client client=(Client)request.getAttribute("client");
                VenteForm form = (VenteForm)request.getAttribute("form");
         %>
        
        <form class="form-inline" action="ajouterVente" method="POST">
                <label for="nom">Nom : </label><br>
                <input class="form-control" id="nom" type="text" name="nom"  size="30" maxlength="30">
                <br>
                
                <label for="dateDebut">Date : </label><br>
                <input class="form-control" id="dateDebut"  type="text"  name="dateDebut" size="30" maxlength="30">      
                <br>
                
                <%-- Champ Liste des lieux --%>
                <label for="lieu">Lieu : </label><br>
                <select class="form-control" id="lieu">
                    <%
                        ArrayList<Lieu> lesLieux = (ArrayList)request.getAttribute("pLesLieux");
                        for (int i=0; i<lesLieux.size();i++){
                            Lieu l = lesLieux.get(i);
                            out.println("<option value='" + l.getId()+"'>" + l.getVille()+"</option>" );
                        }
                    %>
                </select>
                <br>           
                
                <label for="categVente">Catégorie de vente : </label><br>
                <select class="form-control" name="categVente">
                <%
                        ArrayList<CategVente> lesCategVente = (ArrayList)request.getAttribute("pLesCategVente");
                        for (int i=0; i<lesCategVente.size();i++){
                            CategVente cv = lesCategVente.get(i);
                            out.println("<option value ='" + cv.getCode()+ "'>" + cv.getLibelle()+ "</option>"); 
                           
                        }
                    %>
                </select>
                
                
                <!--<label for="typeCheval">Types de Cheval : </label>
                <select name="typeCheval"> -->
                <%
                  /*  ArrayList<TypeCheval> lesTypesCheval = (ArrayList)request.getAttribute("pLesTypesCheval");
                    for (int i=0; i<lesTypesCheval.size();i++){
                        TypeCheval tc = lesTypesCheval.get(i);
                        out.println("<option value ='" + tc.getId()+ "'>" + tc.getLibelle()+ "</option>"); 

                    }*/
                %>
                <!--</select><br/><br/>-->
                
                
                
                <%-- Cases à cocher permettant de choisir les différentes catégories de vente auxquelles le client souhaite s'inscrire 
                <label for="categVente">Categories de vente : </label></br>
                 <%
                        ArrayList<CategVente> lesCategVente = (ArrayList)request.getAttribute("pLesCategVente");
                        for (int i=0; i<lesCategVente.size();i++){
                            CategVente cv = lesCategVente.get(i);
                            out.println("<input type='checkbox' id='cb" + i + "' name='" + cv.getCode() + "'>"); 
                            out.println(cv.getLibelle()); 
                            out.println("</label></br>");
                        }
                    %>
                    </br>
                    --%>
                 
                    <br><br>
                <input class="form-control btn" type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        </div>
    </body>
</html>
