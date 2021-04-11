<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/form-style.css">

    <title>Strona główna</title>

</head>


<body>
<div id="wrapper">
    <div id="header">
        <h2>Twoja Książka Telefoniczna</h2>
    </div>
</div>

<div id="container">

    <p>
        <a href="${pageContext.request.contextPath}/list">Wyświetl kontakty</a>
    </p>


    <p>
        <a href="${pageContext.request.contextPath}/newContact">Dodaj nowy kontakt</a>
    </p>

    <br><br>

    <p><b>Podaj nazwisko osoby, której numer chcesz wyszukać w bazie: </b></p>

    <form:form action="search"  method="POST">
        Podaj nazwisko: <input name="surname" type="text" required />
        <br><br>
        <input type="submit" value="Wyszukaj" class="save" />
    </form:form>


</div>

</body>
</html>
