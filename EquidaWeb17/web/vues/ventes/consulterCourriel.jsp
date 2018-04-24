<%-- 
    Document   : consulterCourriel
    Created on : 20 oct. 2017, 07:45:35
    Author     : ts2slam
--%>

<%@page import="modele.Courriel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Consultation Courriel</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>Consultation Courriel</h1>

            <%
            Courriel unCourriel = (Courriel)request.getAttribute("pUnCourriel");
            out.println("<p>");
            out.println(unCourriel.getDate());
            out.println("</p>");

            out.println("<p>");
            out.println(unCourriel.getObjet());
            out.println("</p>");

            out.println("<p>");
            out.println(unCourriel.getCorps());
            out.println("</p>");

            if(unCourriel.getLesPiecesJointes()!= null){
                for(int i = 0; i<unCourriel.getLesPiecesJointes().size(); i++){
                    out.println("<p><a href ='"+ unCourriel.getLesPiecesJointes().get(i).getChemin() + "'>");
                    out.println(unCourriel.getLesPiecesJointes().get(i).getDescription());
                    out.println("</p>");
                }  
            }

            %>
        </div>    
    </body>
</html>
