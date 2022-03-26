<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
    <link href="../../../css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<section class="galaxy">
    <ul class="orbit">
        <li class="sun"><span></span></li>
        <li class="mercury"><span></span></li>
        <li class="venus"><span></span></li>
        <li class="earth"><span><span class="moon"></span></span></li>
        <li class="mars"><span></span></li>
        <li class="asteroids"><span></span></li>
        <li class="jupiter"><span></span></li>
        <li class="saturn"><span><span class="ring"></span></span></li>
        <li class="uranus"><span></span></li>
        <li class="neptune"><span></span></li>
        <li class="pluto"><span></span></li>
    </ul>
<div class="login">
    <div class="header">
        <h1>
            <a href="/user/login">登录</a> <a href="/user/regist">注册</a>
        </h1>
        <%
            String username="";
            //获取登录失败的提示信息
            String msg="";
            if(request.getAttribute("msg")!=null){
                msg=(String)request.getAttribute("msg");
            }
        %>
        <h3 style="color: red;"><%=msg%></h3>

    </div>
    <form action="/user/toLogin" method="post">
        <table>
            <tr>
                <td><input type="text" class="input1" name="userName"  placeholder="用户名" vlaue="<%=username%>"></td>
            </tr>
            <tr>
                <td><input type="password" class="input1" name="userPassword" placeholder="密码"></td>
            </tr>
            <tr>
                <td class="td1" colspan="2">
                    <input type="checkbox" name="remember" value="true" checked="checked"> 记住用户名</td>
            </tr>
            <tr>
                <td colspan="2">
                    <div>
                        <input type="submit" value="登录" id="login-btn">
                    </div>
                </td>
            </tr>
        </table>

    </form>
</div>
</body>
</html>
