<%--
  Created by IntelliJ IDEA.
  User: markbobrovskih
  Date: 29.10.2022
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="style.css"%>
</style>
<html>
<head>
    <title>Окно скучного пользователя</title>
        <script>
            function clock() {
                var date = new Date();
                var hours = date.getHours();
                var minutes = date.getMinutes();
                var seconds = date.getSeconds();
                //* добавление ведущих нулей */
                if (hours < 10) hours = "0" + hours;
                if (minutes < 10) minutes = "0" + minutes;
                if (seconds < 10) seconds = "0" + seconds;
                document.getElementById("id_clock").innerHTML = hours + ":" + minutes + ":" + seconds;
                setTimeout("digitalClock()", 1000);
            }
        </script>
</head>

<div id="id_clock"></div>
<script>clock();</script>
<form class="form_auth_style" action="#" method="post">
    <button class="form_exit_button" type="submit" name="form_exit_submit">Вiйди отсюда розбiйник</button>
</form>
</html>
