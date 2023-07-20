<%--
  Created by IntelliJ IDEA.
  User: aaronbond
  Date: 7/20/23
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess!</title>
</head>
<body>
<form action="/guess" method="POST">
  <label for="number">Guess a number</label>
  <input type="number" id="number" name="number" placeholder="Number between 1-3">
    <input type="submit" name="Submit">
</form>
</body>
</html>
