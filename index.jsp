<%--
  Created by IntelliJ IDEA.
  User: 王圣杰
  Date: 2020/7/2
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<h1>猜数字</h1>
游戏规则：1.点击【生成一个随机数】按钮随机产生一个1-99的数字。2.然后输入您要猜的数字。3.点击【猜】即可，共有10次机会。
<br />
<br />
<input type="button" id="result" name="result"
       οnclick="GetRandomNum(1,100)" value="生成一个随机数" />
<br />
<br />

<input type="text" id="my_guess_num" name="my_guess_num" />
<input type="button" id="guess" name="guess" οnclick="checknum()"
       value="猜" />

</body>
</html>