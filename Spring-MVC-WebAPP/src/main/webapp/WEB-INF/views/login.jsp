<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 12/05/2023
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yahoo!!</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
<form action="/login.do/" method="POST">
    Name : <input name="name" type="text" /> Password : <input name="password" type="password" /> <input type="submit" />
</form>
</body>
</html>
