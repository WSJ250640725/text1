<%--
  Created by IntelliJ IDEA.
  User: 王圣杰
  Date: 2020/7/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>猜数字小游戏</title>
</head>
<body>
<p id="prompt"></p>
<form id="frmNumGuess" method="get">
    想一个介于1和100之间的数字<br/>
    你猜呢?
    <br />
    <br />
    <input type="button" id="result" name="result"
           οnclick="GetRandomNum(1,100)" value="生成一个随机数" />
    <input type="text" name="num">
    <input type="submit" value="猜">
</form>

</html>

