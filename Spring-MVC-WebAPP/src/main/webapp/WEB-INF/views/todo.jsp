<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a ToDo</title>
</head>
<body>
<form action="/myapp/add-todos" method="POST">
    Description : <input name="desc" type="text" /> <input type="submit" value="add" />
</form>
</body>
</html>
