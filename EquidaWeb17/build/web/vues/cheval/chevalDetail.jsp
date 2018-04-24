<%-- 
    Document   : detailCheval
    Created on : 20 oct. 2017, 07:07:20
    Author     : ts2slam
--%>

<%@page import="modele.Participer"%>
<%@page import="modele.Cheval"%>
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
            <h1>Détail du cheval</h1>
            <%
                Cheval unCheval = (Cheval)request.getAttribute("pUnCheval");
            %>
            <table  class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <!--<th>Id</th>-->
                        <th>Nom</th>
                        <th>Sexe</th>
                        <th>Père</th>
                        <th>Mère</th>
                        <th>Type de cheval</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                            /*out.println("<tr><td>");
                            out.println(unCheval.getId());
                            out.println("</a></td>");*/

                            out.println("<td>");
                            out.println(unCheval.getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getSexe());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getPere());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getMere());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getUnType().getLibelle());
                            out.println("</td>");

                        %>
                    </tr>
                </tbody>
            </table>
            <p>Toutes les courses auxquelles le cheval a participé.</p>

            <table  class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>Nom de la course</th>
                        <th>Lieu</th>
                        <th>Place</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < unCheval.getLesParticipations().size();i++)
                        {


                            Participer uneParticipation = unCheval.getLesParticipations().get(i);
                            out.println("<tr><td>");
                            out.println(uneParticipation.getUneCourse().getNom());
                            out.println("</a></td>");

                            out.println("<td>");
                            out.println(uneParticipation.getUneCourse().getLieu());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneParticipation.getPlace());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneParticipation.getUneCourse().getDate());
                            out.println("</td>");                        

                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
