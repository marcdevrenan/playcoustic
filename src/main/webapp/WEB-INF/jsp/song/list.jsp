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
    <c:if test="${not empty message}">
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Done!</strong>${message}
        </div>
    </c:if>

    <h3><a href="/song">Add new song</a></h3>

    <c:if test="${not empty songs}">
        <h2>Song list: ${songs.size()}</h2>

        <form action="/song/order" method="post">
            <div class="input-group">
                <select class="form-control" name="sortBy">
                    <option value="title">Title</option>
                    <option value="artist">Artist</option>
                </select>
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
        </form>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Artist</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="song" items="${songs}" varStatus="id">
                <tr>
                    <td>${id.count}</td>
                    <td>${song.title}</td>
                    <td>${song.artist}</td>
                    <td><a href="/song/${id.count}/delete">Delete</a></td>
                    <td><a href="/song/${song.id}/details">Details</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty songs}">
        <h2>There are no songs registered!</h2>
    </c:if>

</div>

</body>
</html>