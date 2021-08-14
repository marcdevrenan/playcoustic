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

<div class="container">
    <h2>Adding music to setlist</h2>

    <form action="/song/add" method="post">
        <div class="form-group">
            <label>Title:</label>
            <input type="text" class="form-control" placeholder="Song title" name="title">
        </div>

        <div class="form-group">
            <label>Album:</label>
            <input type="text" class="form-control" placeholder="Album title" name="album">
        </div>

        <div class="form-group">
            <label>Artist:</label>
            <input type="text" class="form-control" placeholder="Artist name" name="artist">
        </div>

        <div class="form-group">
            <label>Release Date:</label>
            <input type="date" class="form-control" name="releaseDate">
        </div>

        <div class="form-group">
            <label>Difficulty Level:</label>
            <select class="form-control" name="difficultyLevel">
                <option>Easy</option>
                <option>Medium</option>
                <option>Hard</option>
            </select>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>

</div>

</body>
</html>