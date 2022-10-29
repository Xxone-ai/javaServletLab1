<%--
  Created by IntelliJ IDEA.
  User: markbobrovskih
  Date: 29.10.2022
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="style.css"%>
</style>
<div class="form_auth_block">
    <div class="form_auth_block_content">
        <p class="form_auth_block_head_text">Авторизация</p>
        <form class="form_auth_style" action="#" method="post">
            <label>Введите логин</label>
            <input type="text" name="auth_login" placeholder="Введите логин" required >
            <label>Введите пароль</label>
            <input type="password" name="auth_pass" placeholder="Введите пароль" required >
            <label>Мемчик хочется?<input type = "checkbox" name = "auth_meme"></label>
            <button class="form_auth_button" type="submit" name="form_auth_submit">Войти</button>
        </form>
    </div>
</div>
