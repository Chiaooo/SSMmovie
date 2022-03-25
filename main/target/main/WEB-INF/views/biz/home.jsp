<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/css/home.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/header.css"  rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/footer.css" rel="stylesheet" type="text/css"/>
    <title>home</title>
</head>


<body>
<c:import url="header.jsp"></c:import>

<!--轮播图-->

<!--影片分类推荐-->
<div class="movie">

    <div class="movie-category">
        <a href="<%=request.getContextPath()%>/movie/category?movieType=动作" class="name">动作片</a>
        <a href="<%=request.getContextPath()%>/movie/category?movieType=动作" class="more">更多>>></a>
    </div>
    <div class="movie-list">
        <ul>
            <c:forEach items="${actionMovies}" var="movie">
                <li>
                    <a href="/movie/detail?movieId=${movie.movieId}">
                        <img src="${movie.movieImgUrl}" alt="">
                        <p>${movie.movieName}</p>
                    </a>
                </li>
            </c:forEach>

        </ul>
        <div class="clear"></div>
    </div>


    <div class="movie-category">
        <a href="<%=request.getContextPath()%>/movie/category?movieType=喜剧" class="name">喜剧片</a>
        <a href="<%=request.getContextPath()%>/movie/category?movieType=喜剧" class="more">更多>>></a>
    </div>
    <div class="movie-list">
        <ul>
            <c:forEach items="${comedyMovies}" var="movie">
                <li>
                    <a href="/movie/detail?movieId=${movie.movieId}">
                        <img src="${movie.movieImgUrl}" alt="">
                        <p>${movie.movieName}</p>
                    </a>
                </li>
            </c:forEach>
        </ul>
        <div class="clear"></div>
    </div>


    <div class="movie-category">
        <a href="<%=request.getContextPath()%>/movie/category?movieType=爱情" class="name">爱情片</a>
        <a href="<%=request.getContextPath()%>/movie/category?movieType=爱情" class="more">更多>>></a>
    </div>
    <div class="movie-list">
        <ul>
            <c:forEach items="${LoveMovies}" var="movie">
                <li>
                    <a href="/movie/detail?movieId=${movie.movieId}">
                        <img src="${movie.movieImgUrl}" alt="">
                        <p>${movie.movieName}</p>
                    </a>
                </li>
            </c:forEach>
        </ul>
        <div class="clear"></div>
    </div>

</div>


<c:import url="footer.jsp"></c:import>
</body>
</html>

