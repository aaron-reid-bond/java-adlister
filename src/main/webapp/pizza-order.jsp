<%--
  Created by IntelliJ IDEA.
  User: aaronbond
  Date: 7/20/23
  Time: 7:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza</title>
</head>
<body>
  <form action="pizza-order" method="POST">
    <p>Choose your favorite Crust</p>
    <input type="radio" id="thin" name="crust" value="thin">
    <label for="thin">Thin</label><br>
    <input type="radio" id="stuffed" name="crust" value="stuffed">
    <label for="stuffed">Stuffed</label><br>
    <input type="radio" id="regular" name="crust" value="regular">
    <label for="regular">Regular</label>
    <p>Choose your favorite Sauce</p>
    <input type="radio" id="marinara" name="sauce" value="marinara">
    <label for="marinara">Marinara</label><br>
    <input type="radio" id="garlic" name="sauce" value="garlic">
    <label for="garlic">Garlic Basil</label><br>
    <p>Choose your Size</p>
    <input type="radio" id="1" name="size" value="1">
    <label for="1">10"</label><br>
    <input type="radio" id="2" name="size" value="2">
    <label for="2">20"</label><br>
    <p>Choose your favorite toppings</p>
    <input type="checkbox" id="t1" name="top" value="-everything-">
    <label for="t1">Everything</label><br>
    <input type="checkbox" id="t2" name="top" value="-kinda everything-">
    <label for="t2">Kinda Everything</label><br>
    <input type="checkbox" id="t3" name="top" value="-not so much everything-">
    <label for="t3">Not So Much Everything</label>
    <p>Delivery Address</p>
    <input type="text" id="address" name="address"><br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>
