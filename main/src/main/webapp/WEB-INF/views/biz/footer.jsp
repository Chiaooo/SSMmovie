<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="<%=request.getContextPath()%>/js/wordcloud2.js"></script>
<!--页脚-->
<div class="footer">
    <canvas id="canvas" width="1096.3px" height="266px">
        <script src="<%=request.getContextPath()%>/js/data.js"></script>
    </canvas>
    <div class="clear"></div>
</div>