<%-- 
    Document   : listerLesLieux
    Created on : 17 oct. 2017, 15:23:29
    Author     : ts2slam
--%>

<%@page import="modele.Lieu"%>
<%@page import="java.util.ArrayList"%>
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
            <h1>LISTE DES lieux</h1>
            <%
                ArrayList<Lieu> lesLieux = (ArrayList)request.getAttribute("pLesLieux");
            %>
            <table class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>id</th>
                        <th>ville</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesLieux.size();i++)
                        {
                            Lieu unLieu = lesLieux.get(i);
                            out.println("<tr><td>");
                            out.println(unLieu.getId());
                            out.println("</a></td>");

                            out.println("<td>");
                            out.println(unLieu.getVille());
                            out.println("</td>");
                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
