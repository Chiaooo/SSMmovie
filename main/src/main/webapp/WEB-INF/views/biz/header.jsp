<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--导航栏-->
<div class="bg">
    <div class="header">
        <div class="web-logo">
            <img src="<%=request.getContextPath()%>/img/logo.jpg" alt="">
        </div>
        <div class="category-list">
            <ul>
                <li><a href="<%=request.getContextPath()%>/movie/home">首页</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=动作">动作片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=爱情">爱情片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=动漫">动漫片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=剧情">剧情片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=伦理">伦理片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=科幻">科幻片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=纪录">纪录片</a></li>
                <li><a href="<%=request.getContextPath()%>/movie/category?type=街拍">街拍</a></li>
            </ul>
        </div>

        <div class="search" id="search">
            <form action="/movie/movie/search" method="post">
                <input type="text" name="name" class="input-movieName" placeholder="请输入影片名或主演名">
                <input type="submit" value="搜索" class=".submitName">
            </form>
        </div>


        <div class="log-reg">
            <ul>
                <li><a href="/movie/user/login"><img src="<%=request.getContextPath()%>/img/login.png" alt=""></a></li>
                <li><a href="/movie/user/login">
                    <c:choose>
                        <c:when test="${empty sessionScope.user.userName}">
                            注册登录
                        </c:when>
                        <c:otherwise>
                            ${sessionScope.user.userName}
                        </c:otherwise>
                    </c:choose>
                </a>
                    <a href="../../jsp/index.jsp">
                        后台
                    </a>
                </li>
            </ul>


        </div>
        <div class="clear"></div>
    </div>
</div>