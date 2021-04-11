<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/form-style.css">

    <title>Książka telefoniczna</title>

</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Twoja Książka Telefoniczna</h2>
    </div>
</div>

<div id="container">
    <h3>Wprowadź dane</h3>

    <form:form action="save" modelAttribute="contact" method="POST">

        <form:hidden path="id" />

        <table>
            <tbody>
            <tr>
                <td><label>Imię:</label></td>
                <td><form:input path="name" required="true"/></td>
            </tr>

            <tr>
                <td><label>Nazwisko:</label></td>
                <td><form:input path="surname" required="true"/></td>
            </tr>

            <tr>
                <td><label>Numer telefonu:</label></td>
                <td><form:input path="phoneNumber" required="true"/></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Zapisz" class="save" /></td>
            </tr>


            </tbody>
        </table>


    </form:form>

    <br><br>

    <p>
        <a href="${pageContext.request.contextPath}/list">Pokaż kontakty</a>
    </p>

</div>

</body>

</html>



