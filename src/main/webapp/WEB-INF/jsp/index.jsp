<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <h2>Music is the universal language of people</h2>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">

            <div class="item active">
                <img src="img/acoustic-guitar.jpg" alt="acoustic-guitar" style="width:100%;">
                <div class="carousel-caption">
                    <p>Lorem Ipsum</p>
                </div>
            </div>

            <div class="item">
                <img src="img/guitar.jpg" alt="guitar" style="width:100%;">
                <div class="carousel-caption">
                    <p>Lorem Ipsum</p>
                </div>
            </div>

            <div class="item">
                <img src="img/music-sheet.jpg" alt="music-sheet" style="width:100%;">
                <div class="carousel-caption">
                    <p>Lorem Ipsum</p>
                </div>
            </div>

        </div>

        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

</body>
</html>
