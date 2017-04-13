<%--
  Created by IntelliJ IDEA.
  User: fyy
  Date: 4/13/17
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>验证码</title>
    <script type="text/javascript">
        function reloadCode() {
            var sr = document.getElementById("image").src;
            document.getElementById("image").src = sr + '?d=' + new Date();


        }
        function doSomething() {

            alert("hello");
        }
    </script>


</head>

<body>

<form action="servlet/LoginServlet" method="get">

    验证码 ： <img alt="验证码" id="image" src="servlet/ImageServlet"/><br>
    <input type="text" name="checkcode"/>
    <a href="javascript:reloadCode()">看不清楚</a><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
