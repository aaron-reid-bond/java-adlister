<%--
  Created by IntelliJ IDEA.
  User: aaronbond
  Date: 7/20/23
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick!</title>
</head>
<body>
<form action="/pickcolor" method="post">
  <label for="color">Color:</label>
  <input type="text" name="color" id="color">
  <button type="submit">Submit</button>
</form>
</body>
</html>
