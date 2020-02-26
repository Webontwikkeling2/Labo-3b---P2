<%--
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
    <title>Student gevonden</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<header>
    <h1>Labo 3b - Student opzoeken</h1>
    <div class="picture-header"></div>
</header>
<main>
    <section>
        <h2>Servlet</h2>
        <p id="antwoord">Je vroeg naar volgende gegevens: <%=request.getAttribute("resultAchternaam")%> <%=request.getAttribute("resultVoornaam")%> (<%=request.getAttribute("resultLeeftijd")%> jaar): <%=request.getAttribute("resultJob")%></p>
    </section>
</main>
</body>
</html>
