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

<c:set var="title" value="Song Registration"/>
<c:set var="route" value="/song/add"/>
<c:set var="method" value="post"/>
<c:set var="button" value="Register"/>

<c:if test="${not empty song}">
    <c:set var="title" value="Song Details"/>
    <c:set var="route" value="/song/list"/>
    <c:set var="method" value="get"/>
    <c:set var="button" value="Back"/>
</c:if>

<div class="container">
    <h2>Adding music to setlist</h2>

    <form action="/song/add" method="post">
        <div class="form-group">
            <label>Title:</label>
            <input type="text" class="form-control" value="${song.title}" placeholder="Song title" name="title">
        </div>

        <div class="form-group">
            <label>Album:</label>
            <input type="text" class="form-control" value="${song.album}" placeholder="Album title" name="album">
        </div>

        <div class="form-group">
            <label>Artist:</label>
            <input type="text" class="form-control" value="${song.artist}" placeholder="Artist name" name="artist">
        </div>

        <div class="form-group">
            <label>Release Date:</label>
            <input type="date" class="form-control" value="${song.releaseDate}" name="releaseDate">
        </div>

        <div class="form-group">
            <label>Difficulty Level:</label>
            <select class="form-control" value="${song.difficultyLevel}" name="difficultyLevel">
                <option>Easy</option>
                <option>Medium</option>
                <option>Hard</option>
            </select>
        </div>

        <button type="submit" class="btn btn-default">${button}</button>
    </form>

</div>

</body>
</html>