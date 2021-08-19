<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>PlAycoustic</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

<c:set var="title" value="User Registration"/>
<c:set var="route" value="/user/add"/>
<c:set var="method" value="post"/>
<c:set var="button" value="Register"/>

<c:if test="${not empty user}">
    <c:set var="title" value="User Details"/>
    <c:set var="route" value="/goBack"/>
    <c:set var="method" value="get"/>
    <c:set var="button" value="Back"/>
</c:if>

<div class="container">
    <h2>Adding new user</h2>

    <form action="${route}" method="${method}">
        <div class="form-group">
            <label>First name:</label>
            <input type="text" class="form-control" value="${user.firstName}" placeholder="First name" name="firstName">
        </div>

        <div class="form-group">
            <label>Last name:</label>
            <input type="text" class="form-control" value="${user.lastName}" placeholder="last name" name="lastName">
        </div>

        <div class="form-group">
            <label>Birth Date:</label>
            <input type="date" class="form-control" value="${user.birthDate}" name="birthDate">
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="text" class="form-control" value="${user.email}" placeholder="example@test.com" name="email">
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" value="${user.password}" name="password">
        </div>

        <button type="submit" class="btn btn-default">${button}</button>
    </form>

</div>

</body>
</html>