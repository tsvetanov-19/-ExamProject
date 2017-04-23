<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Weather App</title>

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/main.css" rel="stylesheet">
    <script src="js/vendor/jquery/jquery-1.12.1.min.js"></script>
	<script src="js/vendor/bootstrap/bootstrap.min.js"></script>
	<script src="js/main.js"></script>


</head>
<body>

<div class="friends-page">

    <header>
        <div class="container">
            <nav class="navbar navbar-default">

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="current-weather">
                        <div class="img-container">
                            <img src="assets/img/weather_icon.png" style="display:none;"/>
                        </div>
                        <div class="info">
                            <div class="city">Пловдив</div>
                            <div id="current-condition"></div>
                            <div class="pull-right"><span id="current-temperature"></span> ℃</div>
                        </div>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active">
                            <a href="home.html">
                                <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                                <span class="nav-label">Начало</span>
                            </a>
                        </li>
                        <li>
                            <a href="friends.html">
                                <i class="fa fa-users" aria-hidden="true"></i>
                                <span class="nav-label">Приятели</span>
                            </a>
                        </li>
                        <li>
                            <a href="inbox.html">
                                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                                <span class="nav-label">Известия</span>
                            </a>
                        </li>
                        <li>
                            <a href="profile.html">
                                <i class="fa fa-cogs" aria-hidden="true"></i>
                                <span class="nav-label">Профил</span>
                            </a>
                        </li>
                        <li>
                            <a href="index.html">
                                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                                <span class="nav-label">Изход</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </header>


    <div class="container">


        <div class="row" style="margin-top:30px;">

            <div class="col-sm-4">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Добави приятел</h3>
                    </div>
                    <div class="panel-body">

                        <div class="input-group">
                            <input type="text" class="form-control" id="search-friend" placeholder="Търси по име">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        </div>
                        <div id="search-result"></div>

                    </div>
                </div>
            </div>
            <div class="col-sm-8">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Списък с приятели</h3>
                    </div>

                    <table class="table table-striped table-bordered friends-table">
                        <thead>
                        <th>Снимка</th>
                        <th>Име</th>
                        <th class="hidden-xs">Email</th>
                        <th class="remove-col"><span class="hidden-xs">Премахни</span></th>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="friend-img">
                                <img class="img-thumbnail" src="assets/img/user.jpg">
                            </td>
                            <td>
                                <span class="friend-name">
                                    Иван
                                </span>
                            </td>
                            <td class="hidden-xs">
                                <span class="friend-email">ivan@abv.bg</span>
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger pull-right remove-friend">
                                    <span class="glyphicon glyphicon-remove"></span>
                                    <span class="hidden-xs"> Премахни</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img class="img-thumbnail" src="assets/img/user.jpg">
                            </td>
                            <td>
                                        <span class="friend-name">
                                            Марчето
                                        </span>
                            </td>
                            <td class="hidden-xs">
                                <span class="friend-email">marcheto@mail.bg</span>
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger pull-right remove-friend">
                                    <span class="glyphicon glyphicon-remove"></span>
                                    <span class="hidden-xs"> Премахни</span>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>

    </div>

</div>


<div class="found-friend" style="display:none;">
<img class="pull-left img-thumbnail" src="assets/img/user.jpg">
	<span></span>
<button type="button" data-id="" class="add-friend btn btn-primary pull-right">
<span class="glyphicon glyphicon-plus"></span> Добави</button>
</div>


<script>
	bindSearch();
</script>
</body>
</html>

