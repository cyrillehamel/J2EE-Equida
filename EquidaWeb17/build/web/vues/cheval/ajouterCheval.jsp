<%-- 
    Document   : ajouterCheval
    Created on : 15 déc. 2017, 10:27:11
    Author     : ts2slam
--%>

<%@page import="modele.TypeCheval"%>
<%@page import="java.util.ArrayList"%>
<%@page import="formulaires.ChevalForm"%>
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
            <h1>NOUVEAU CHEVAL</h1>

            <%
                //Lot lot=(Lot)request.getAttribute("lot");
                ChevalForm form = (ChevalForm)request.getAttribute("form");
            %>

            <form class="form-inline" action="ajouterCheval" method="POST">


                    <label for="nom">Nom :</label><br>
                    <input class="form-control" id="nom" type="String" name="nom"  size="30">
                    <br>
                    
                    <label for="sexe">Sexe :</label><br>
                    <select class="form-control" name="sexe" id="sexe" >
                        <option value ='M'>Mâle</option>
                        <option value ='F'>Femelle</option>
                    </select>
                    <br>
                    
                    <label for="typeCheval">Type de Cheval :</label><br>
                    <select class="form-control" name="typeCheval" id="typeCheval" >
                    <%
                            ArrayList<TypeCheval> lesTypes = (ArrayList)request.getAttribute("pLesTypes");
                            for (int i=0; i<lesTypes.size(); i++){
                                TypeCheval t = lesTypes.get(i);
                                out.println("<option value ='" + t.getId() + "'>" + t.getLibelle()+ "</option>"); 

                            }
                    %>
                    </select>
                    <br>

                    <label for="mere">Mère :</label><br>
                    <input class="form-control" id="mere" type="String" name="mere"  size="30">
                    <br>

                    <label for="pere">Père :</label><br>
                    <input class="form-control" id="pere" type="String" name="pere"  size="30">
                    <br><br>

                    <input class="btn" type="submit" name="valider" id="valider" value="Valider"/>

            </form>
        </div>
    </body>
</html>
