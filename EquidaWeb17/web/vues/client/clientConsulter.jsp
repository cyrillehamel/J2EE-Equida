<%-- 
    Document   : consulterClient
    Created on : 23 juin 2017, 10:33:23
    Author     : Zakina
--%>

<%@page import="modele.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Consultation Client</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>Infos clients</h1>

            <%
                Client unClient = (Client)request.getAttribute("pClient");
            %>


            <table class="table table-bordered table-striped table-condensed">
                <tr><td>NOM :</td><td><% out.println(unClient.getNom());%></td></tr>
                <tr><td>PRENOM :</td><td><%  out.println(unClient.getPrenom());%></td>  </tr>
                <tr><td>ADRESSE  :</td><td><%  out.println(unClient.getRue());%></td>  </tr>
                <tr><td> CODE POSTAL  :</td><td><%  out.println(unClient.getCopos());%></td>  </tr>
              <tr><td> VILLE  :</td><td><%  out.println(unClient.getVille());%></td>  </tr>
              <tr>
                  <td> Catégories selectionnées</td><td>
                    <% for (int i=0; i<unClient.getLesCategVentes().size(); i++){
                         out.println(unClient.getLesCategVentes().get(i).getCode() + "</br>"); 
                    }
                    %>
                  </td>
              </tr>
            </table>
    </div>    
    </body>
</html>
