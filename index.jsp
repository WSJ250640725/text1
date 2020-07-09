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
<%
    int target = 0;
    if (session.getAttribute("target") == null) {

        target = (int) (Math.random() * 100) + 1;

        session.setAttribute("target", target);
    } else {

        target = (int) session.getAttribute("target");
    }
    int count = 0;
    if (session.getAttribute("count") == null) {

        session.setAttribute("count", 0);
    } else {

        count = (int) session.getAttribute("count");
    }
     String message = "";
    try {

        int num = Integer.parseInt(request.getParameter("num"));

        count++;

        if (num > target) {

            session.setAttribute("count", count);

            if (count > 1) {
                message = "很接近了, 但不对. Try <b>lower</b>. You have made " + count + " guesses.";
            } else {
                message = "很接近了, 但不对. Try <b>lower</b>. You have made " + count + " guess.";
            }
        } else if (num < target) {

            session.setAttribute("count", count);

            if (count > 1) {
                message = "很接近了, 但不对. Try <b>higher</b>. You have made " + count + " guesses.";
            } else {
                message = "很接近了, 但不对. Try <b>higher</b>. You have made " + count + " guess.";
            }
        } else {

            message = "恭喜你，猜对了. And after just " + count + " tries.<br/>" +
                    "Care to <a href='numguess.jsp'>try again</a>?";

            session.removeAttribute("target");
            session.removeAttribute("count");
        }
    } catch (NumberFormatException e) {
        System.err.println(e.getMessage());
    }
%>

</html>

