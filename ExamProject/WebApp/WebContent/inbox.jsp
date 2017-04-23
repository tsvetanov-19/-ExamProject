<%@page import="java.util.*"%>
<%@page import="com.beans.UserBean"%>
<%@page import="com.beans.NotificationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Weather App</title>

    <meta name="apple-mobile-web-app-capable" content="yes">

    <meta charset="UTF-8">
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
<%
NotificationBean notification2 =
new NotificationBean("Ехо... Аз съм", new UserBean("Петър Иванов"));
NotificationBean notification3 =
new NotificationBean("Здраве", new UserBean("Иван Петров"));

List<NotificationBean> notifications = new ArrayList<>();
notifications.add(new NotificationBean("Здраве. Аз съм",
		new UserBean("Иван Иванов")));
notifications.add(notification2);
notifications.add(notification3);



%>
<div class="inbox-page">

        <header>
            <div class="container">
                <nav class="navbar navbar-default">

                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
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
                        </div><!-- /.navbar-collapse -->
                </nav>
            </div>
        </header>


        <div class="container">


            <div class="row" style="margin-top:30px;">

                <div class="col-sm-12">

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Известия</h3>
                        </div>

                        <ul class="list-group" style="min-height:241px;">

                            
                                    

 <li class="list-group-item template" style="display:none;">
                                <div class="row">
                                    <div class="col-sm-2 col-xs-3">
                                        <img class="img-thumbnail" src="assets/img/user.jpg">                                    </div>
                                    <div class="col-sm-7 col-xs-9">
                                        <h4>
                                        </h4>
                                        <p></p>
                                        </div>
                                    <div class="col-sm-3 col-xs-12">
                                        <button type="button" class="btn btn-danger pull-right remove-post"><span class="glyphicon glyphicon-remove"></span> Откажи</button>
                                        <button type="button" data-id="" class="btn btn-primary pull-right accept-request"><span class="glyphicon glyphicon-plus"></span> Приеми</button>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>

</div>

<script>
	loadInbox();
</script>

</body>
</html>