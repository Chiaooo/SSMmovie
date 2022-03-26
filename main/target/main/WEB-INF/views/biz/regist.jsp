<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>注册</title>
    <link href="../../../css/regist.css" rel="stylesheet" type="text/css"/>
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
<div class="reg">
    <div class="header">
        <h1>
            <a href="/user/login">登录</a> <a href="/user/regist">注册</a>
        </h1>
    </div>

    <h3 style="color: red;">${msg}</h3>
    <!--前端H5校验-->
    <form action="/user/toRegist" method="post" >
        <table>
            <tr>
                <td><input type="text" name="userName" pattern="[a-zA-Z]{6,12}"
                           required="required" placeholder="请输入6-12位的字母的用户名"></td>
            </tr>
            <tr>
                <td><input type="password" name="userPassword" pattern="[0-9]{6,}"
                           required="required" placeholder="请输入至少6位数字的密码"></td>
            </tr>
            <tr>
                <td><input type="text" name="userPhone" pattern="1[35678]\d{9}"
                           required="required" placeholder="请输入以1[35678]开头手机号"></td>
            </tr>
            <tr>
                <td><input type="email" name="userEmail" placeholder="请输入邮箱"
                           required="required"></td>
            </tr>
            <tr>
                <td class="td1">
                    <input type="radio" name="userSex" value="male" class="td1">男
                    <input type="radio" name="userSex" value="female" class="td1">女
                </td>
            </tr>

            <!--
            <tr>
                <td>上传头像:enctype="multipart/form-data"</td>
                <td><input type="file" id="photo" name="upImg"></td>
            </tr>
            -->

            <tr>
                <td colspan="2">
                    <div>
                        <input type="submit" value="注册" id="reg-btn">
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
