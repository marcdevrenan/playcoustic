<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Playcoustic</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <c:if test="${not empty message}">
        <div class="alert alert-danger">
            <strong>Error!</strong> ${message}
        </div>
    </c:if>

</div>

<div class="container">
    <h2>Playcoustic Login</h2>
    <form action="/login" method="post">
        <div class="form-group">
            <label>Email:</label>
            <input type="email" class="form-control" placeholder="example@test.com" name="email">
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" name="password">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>

</body>
</html>
