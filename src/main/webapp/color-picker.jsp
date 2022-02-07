<%--
  Created by IntelliJ IDEA.
  User: davidstephens
  Date: 2/4/22
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Picker</title>
</head>
<body>
<form action="/pickcolor" method="post">
    <label for="color">What's your favorite color?</label>
    <input type="text" id="color" name="color">
    <input type="submit" value="Submit Color">
</form>
</body>
</html>
