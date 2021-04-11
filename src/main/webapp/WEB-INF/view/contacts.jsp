<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css" />

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/table-style.css" />

    <title>Książka telefoniczna</title>


</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Twoja Książka Telefoniczna</h2>
    </div>
</div>


<p><b>Kontakty dostępne w Twojej książce zestawiono w poniższej tabeli</b></p>


<table>
    <tr>
        <th>Nazwisko</th>
        <th>Imię</th>
        <th>Nr tel.</th>
        <th>Aktualizuj/Usuń</th>
    </tr>


    <c:forEach var="tempContact" items="${contacts}">

        <c:url var="updateLink" value="/update">
            <c:param name="contactID" value="${tempContact.id}" />
        </c:url>

        <c:url var="deleteLink" value="/delete">
            <c:param name="contactID" value="${tempContact.id}" />
        </c:url>
        <tr>
            <td> ${tempContact.surname} </td>
            <td> ${tempContact.name} </td>
            <td> ${tempContact.phoneNumber} </td>


            <td>

                <a href="${updateLink}"><input type="button" value="Zmień" class="add-button"/></a>

                <a href="${deleteLink}"><input type="button"
                                               onclick="if (!(confirm('Czy na pewno chcesz usunąć ten kontakt?'))) return false" value="Usuń" class="add-button"/></a>

            </td>

        </tr>

    </c:forEach>

</table>

<br><br>

<p>
    <a href="${pageContext.request.contextPath}/home">Wróć do strony głównej</a>
</p>

</body>

</html>