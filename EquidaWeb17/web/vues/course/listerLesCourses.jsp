<%-- 
    Document   : listerLesCourses
    Created on : 15 déc. 2017, 08:18:25
    Author     : ts2slam
--%>

<%@page import="modele.Course"%>
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
            <h1>LISTE DES COURSES</h1>
            <%
                ArrayList<Course> lesCourses = (ArrayList)request.getAttribute("pLesCourses");
            %>
            <table  class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>Id</th>
                        <th>Nom</th>
                        <th>Lieu</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesCourses.size();i++)
                        {

                            Course uneCourse = lesCourses.get(i);

                            out.println("<tr><td>");
                            out.println(uneCourse.getId());
                            out.println("</a></td>");

                            out.println("<td>");
                            out.println(uneCourse.getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneCourse.getLieu());
                            out.println("</td>");                        

                            out.println("<td>");
                            out.println(uneCourse.getDate());
                            out.println("</td>");                        

                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
