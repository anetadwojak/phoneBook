<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <title>Książka telefoniczna</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Twoja Książka Telefoniczna</h2>
    </div>
</div>

<div id="container">
    <h3>Wynik wyszukiwania</h3>

    <c:choose>
        <c:when test="${resultOfsearching == null}">
            <c:out value="Nie znaleziono kontaktu w bazie!"/>
        </c:when>

        <c:otherwise>
            <c:out value="${resultOfsearching.name} ${resultOfsearching.surname} ${resultOfsearching.phoneNumber}"/>
        </c:otherwise>
    </c:choose>

    <br><br>

    <p>
        <a href="${pageContext.request.contextPath}/home">Powrót do strony głównej</a>
    </p>

</div>

</body>

</html>
