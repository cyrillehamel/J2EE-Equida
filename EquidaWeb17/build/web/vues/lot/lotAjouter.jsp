<%-- 
    Document   : lotAjouter
    Created on : 17 nov. 2017, 07:22:15
    Author     : ts2slam
--%>

<%@page import="modele.Vente"%>
<%@page import="modele.Vendeur"%>
<%@page import="modele.Cheval"%>
<%@page import="java.util.ArrayList"%>
<%@page import="formulaires.LotForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Formulaire d'ajout de lot</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
        <h1>NOUVEAU LOT</h1>
        
        <%
            //Lot lot=(Lot)request.getAttribute("lot");
            LotForm form = (LotForm)request.getAttribute("form");
        %>
         
        <form class="form-inline" action="lotAjouter" method="POST">
                <label for="prixDepart">PRIX DE DEPART : </label><br>
                <input class="form-control" id="nom" type="int" name="prixDepart"  size="30">
                <br>
                
                <label for="cheval">Cheval : </label><br>
                <select class="form-control" name="cheval" id="cheval">
                <%
                        ArrayList<Cheval> lesChevaux = (ArrayList)request.getAttribute("pLesChevaux");
                        for (int i=0; i<lesChevaux.size();i++){
                            Cheval c = lesChevaux.get(i);
                            out.println("<option value ='" + c.getId() + "'>" + c.getNom() + "</option>"); 
                           
                        }
                    %>
                </select>
                <br>
                
                <label for="vendeur">Vendeur : </label><br>
                <select class="form-control" name="vendeur" id="vendeur" >
                <%
                    ArrayList<Vendeur> lesVendeurs = (ArrayList)request.getAttribute("pLesVendeurs");
                    for (int i=0; i<lesVendeurs.size();i++){
                        Vendeur v = lesVendeurs.get(i);
                        out.println("<option value ='" + v.getId() + "'>" + v.getNom() + "</option>"); 

                    }
                %>
                </select>
                <br>
                
                <label for="vente">Vente : </label><br>
                <select class="form-control" name="vente" id="vente" >
                <%
                        ArrayList<Vente> lesVentes = (ArrayList)request.getAttribute("pLesVentes");
                        for (int i=0; i<lesVentes.size();i++){
                            Vente ve = lesVentes.get(i);
                            out.println("<option value ='" + ve.getId() + "'>" + ve.getNom() + "</option>"); 
                           
                        }
                    %>
                </select>
                <br><br>
                               
                <input class="form-control btn" type="submit" name="valider" id="valider" value="Valider"/>
        
        </form>
        </div>
    </body>
</html>