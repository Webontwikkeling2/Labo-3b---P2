<%@ page import="domain.model.Student" %>
<%@ page import="domain.db.StudentDB" %><%--
  Created by IntelliJ IDEA.
  User: angelolemmens
  Date: 26/02/2020
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Student overzicht</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Labo 3b - Student overzicht</h1>
    <div class="picture-header"></div>
</header>
<main>
    <section>
        <h2>Overzicht van alle studenten</h2>
        <table>
            <thead>
            <tr>
                <td>Naam</td>
                <td>Voornaam</td>
                <td>Leeftijd</td>
                <td>Studierichting</td>
            </tr>
            </thead>
            <tbody>
            <%
                StudentDB Databank = new StudentDB();
            %>
            <% for (Student student:Databank.getStudents()) { %>
            <tr>
                <td><%= student.getNaam() %></td>
                <td><%= student.getVoornaam() %></td>
                <td><%= student.getLeeftijd() %></td>
                <td><%= student.getStudierichting() %></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </section>
</main>
</body>
</html>
