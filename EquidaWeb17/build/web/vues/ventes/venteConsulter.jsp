<%-- 
    Document   : venteConsulter
    Created on : 17 oct. 2017, 16:03:31
    Author     : ts2slam
--%>

<%@page import="modele.TypeCheval"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modele.Vente"%>
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
        <h1>Infos Vente</h1>
        
         <%
        Vente uneVente = (Vente)request.getAttribute("pVente");
        %>
        
         <table class="table table-bordered table-striped table-condensed">
            <tr><td>Nom :</td><td><% out.println(uneVente.getNom());%></td></tr>
            <tr><td>Date :</td><td><%  out.println(uneVente.getDateDebutVente());%></td>  </tr>
            <tr><td>Lieu  :</td><td><%  out.println(uneVente.getUnLieu().getVille());%></td>  </tr>
            <tr><td>Catégorie  :</td><td><%  out.println(uneVente.getUneCategVente().getLibelle());%></td>  </tr>
            <%
              /*      ArrayList<TypeCheval> lesTypesCheval = (ArrayList)request.getAttribute("pLesTypesCheval");
                    for (int i=0; i<lesTypesCheval.size();i++){
                        
                        TypeCheval unType = lesTypesCheval.get(i);
                        out.println("<tr><td>Type de cheval  :</td><td>");
                        out.println(uneVente.getLesTypes().get(i));
                        out.println("</td></tr>");

                    } */
                %>
        </table>
        </div>
    </body>
</html>
