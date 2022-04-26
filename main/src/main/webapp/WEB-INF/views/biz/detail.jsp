<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <link href="<%=request.getContextPath()%>/css/header.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/detail.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/like.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/css/star.css" rel="stylesheet" type="text/css"/>

    <!--引入videoJS插件样式、videoJS插件文件-->
    <%--    <link href="../../../js/video-js.min.css" rel="stylesheet">--%>
    <%--    <script src="../../../js/video.min.js"></script>--%>
    <!--引入videoJS插件播放m3u8格式视频的HLS功能-->
    <%--    <script src="../../../js/videojs-contrib-hls.js"></script>--%>
    <link href="https://vjs.zencdn.net/7.4.1/video-js.css" rel="stylesheet">
    <script src='https://vjs.zencdn.net/7.4.1/video.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/videojs-contrib-hls/5.15.0/videojs-contrib-hls.min.js"
            type="text/javascript"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.js"/>

    <script>
        // videojs 简单使用
        var myVideo = videojs('myVideo', {
            bigPlayButton: true,
            textTrackDisplay: false,
            posterImage: false,
            errorDisplay: false,
        })
        myVideo.play()
        var changeVideo = function (vdoSrc) {
            if (/\.m3u8$/.test(vdoSrc)) { //判断视频源是否是m3u8的格式
                myVideo.src({
                    src: vdoSrc,
                    type: 'application/x-mpegURL' //在重新添加视频源的时候需要给新的type的值
                })
            } else {
                myVideo.src(vdoSrc)
            }
            myVideo.load();
            myVideo.play();
        }
        var src = "${movie.video}";
        document.querySelector('.qiehuan').addEventListener('click', function () {
            changeVideo(src);
        })
    </script>
    <style>
        .video-js .vjs-tech {
            position: relative !important;
        }
    </style>
</head>

<body>

<c:import url="header.jsp"></c:import>

<div class="body">
    <!--movieId, movieName, movieImgUrl, movieScore, movieDirector, movieStar, movieType, movieArea,movieYear, movieSumary, moviePlayUrl-->
    <%--    <c:set var="movie" value="${movie}"></c:set>--%>
    <!--定义一个全局变量movie,但这句声明是否有都不影响直接使用movie对象-->
    <div class="movie-name">
        <h2>${movie.name}</h2>
    </div>
    <div class="info">
        <div class="info-img">
            <img class="info-img" src="${movie.img}" alt="">
        </div>
        <div class="info-list">
            <p>导演：${movie.director}</p>
            <p>主演：<a href="<%=request.getContextPath()%>/movie/starInfo?starName=${movie.star}">${movie.star}</a></p>
            <p>类型：${movie.type}</p>
            <p>制片国家/地区：${movie.area}</p>
            <p>语言：${movie.area}</p>
            <p>年份：${movie.year}</p>
            <p>评分：${movie.score}</p>
            <div class="heart-btn">
                <!-- 内容 -->
                <div class="content">
                    <!-- 爱心 -->
                    <span class="heart"></span>
                    <!-- 文字Liek -->
                    <span class="like">Like</span>
                    <!-- 数字 -->
                    <span class="numb"></span>
                </div>
                <script>
                    $(document).ready(function () {
                        // 根据类名添加点击事件
                        $('.content').click(function () {
                            // 根据类切换类名
                            $(this).toggleClass('heart-active')
                            $('.like').toggleClass('heart-active')
                            $('.heart').toggleClass('heart-active')
                            $('.numb').toggleClass('heart-active')
                        })
                    })
                </script>
            </div>
            <div id="scoremark" class="scoremark scores">
                <em class="score">${movie.score}</em>
                <span class="star">
       <span class="ystar" style="width:80%"></span>
       <ul>
        <li><a href="javascript:void(0)" data-name="很差" class="one-star">1</a></li>
        <li><a href="javascript:void(0)" data-name="较差" class="two-stars">2</a></li>
        <li><a href="javascript:void(0)" data-name="一般" class="three-stars">3</a></li>
        <li><a href="javascript:void(0)" data-name="较好" class="four-stars">4</a></li>
        <li><a href="javascript:void(0)" data-name="很好" class="five-stars">5</a></li>
       </ul>
      </span>
                <div style="left: 0px; display: none;" class="tips"></div>
            </div>
            <script>
                //星星评分
                starScore($(".scoremark"));

                function starScore(star) {
                    star.find(".star ul li a").mouseenter(function () {
                        var txt = $(this).attr("data-name");
                        var x = $(this).parent("li").index();
                        star.find(".tips").html(txt).css("left", -6 + x * 24).show();
                    });
                    star.find(".star ul li a").mouseleave(function () {
                        star.find(".tips").html("").css("left", 0).hide();
                    });
                }
            </script>
        </div>
    </div>
    <div class="intro">
        <p class="title">剧情简介</p>
        <p>&nbsp;${movie.sumary}</p>
    </div>

    <div class="play">在线播放</div>
    <div class="vedio">
        <video id="myVideo" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="auto"
               data-setup='{}' style='width: 100%;height: auto'>
            <source id="source" src="${movie.video}" type="application/x-mpegURL"></source>
        </video>
    </div>

    <div class="Comment">
        <div class="comment-title">影片评论</div>
        <form action="<%=request.getContextPath()%>/user/comment?movieId=${movie.id}" method="post">
            <textarea rows="" cols="" name="comment"></textarea>
            <input type="submit" value="发表影评">
        </form>
    </div>


    <c:forEach items="${comments}" var="comment">
        <div class="conmentUnit">
            <div class="commentHeader">
                <sapn class="userName">${comment.userName}</sapn>
                <span>&nbsp;&nbsp;看过&nbsp;&nbsp;</span>
                <spqn class="createTime">${comment.commentDataTime}</spqn>
            </div>
            <div class="content">
                    ${comment.comment}
            </div>
        </div>
    </c:forEach>
    <p>><span class="more">更多短评</span></p>
    <div class="bottom"></div>


</div>
</body>
</html>
