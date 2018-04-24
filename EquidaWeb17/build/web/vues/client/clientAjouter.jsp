<%-- 
    Document   : ClientAjouter
    Created on : 22/06, 16:35:27
    Author     : Zakina
--%>

<%@page import="modele.CategVente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modele.Pays"%>
<%@page import="formulaires.ClientForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Client Ajouter</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
        <h1>NOUVEAU CLIENT</h1>
        
         <%
            //Client client=(Client)request.getAttribute("client");
            ClientForm form = (ClientForm)request.getAttribute("form");
        %>
        
        <form class="form-inline" action="ajouterClient" method="POST">
                <label for="nom">NOM : </label><br>
                <input class="form-control" id="nom" type="text" name="nom"  size="30" maxlength="30">
                <br>
                
                <label for="prenom">PRENOM : </label><br>
                <input class="form-control" id="prenom"  type="text"  name="prenom" size="30" maxlength="30">      
                 <br>
                
                <label for="rue">rue : </label><br>
                <input class="form-control" id="rue"  type="text"  name="rue" size="30" maxlength="50">
                 <br>
                               
                
                <label for="copos">Code postal : </label><br>
                <input class="form-control" id="copos"  type="text"  name="copos" size="30" maxlength="5">
                <br>
                
                <label for="ville">Ville : </label><br>
                <input class="form-control" id="ville"  type="text"  name="ville" size="30" maxlength="40">
                <br>
                
                <%-- Champ Liste des pays --%>
                <label for="pays">Pays : </label><br>
                <select class="form-control"  name="pays" id="pays" >
                
                    <%
                        ArrayList<Pays> lesPays = (ArrayList)request.getAttribute("pLesPays");
                        for (int i=0; i<lesPays.size();i++){
                            Pays p = lesPays.get(i);
                            out.println("<option value='" + p.getCode()+"'>" + p.getNom()+"</option>" );
                        }
                    %>
                </select>
                <br>         
                
                <label for="categVente">Categorie Vente : </label><br/>
                <select class="form-control" name="categVente" size="5" multiple>
                <%
                        ArrayList<CategVente> lesCategVente = (ArrayList)request.getAttribute("pLesCategVente");
                        for (int i=0; i<lesCategVente.size();i++){
                            CategVente cv = lesCategVente.get(i);
                            out.println("<option value ='" + cv.getCode() + "'>" + cv.getLibelle() + "</option>"); 
                           
                        }
                    %>
                </select>
                <br><br>
                
                
                
                <%-- Cases à cocher permettant de choisir les différentes catégories de vente auxquelles le client souhaite s'inscrire 
                <label for="categVente">Categories de vente : </label><br>
                 <%
                        ArrayList<CategVente> lesCategVente = (ArrayList)request.getAttribute("pLesCategVente");
                        for (int i=0; i<lesCategVente.size();i++){
                            CategVente cv = lesCategVente.get(i);
                            out.println("<input type='checkbox' id='cb" + i + "' name='" + cv.getCode() + "'>"); 
                            out.println(cv.getLibelle()); 
                            out.println("</label><br>");
                        }
                    %>
                    <br>
                    --%>
                 
                
                <input class="form-control btn" type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        </div>    
    </body>
</html>
