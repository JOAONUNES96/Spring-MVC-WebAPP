<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add a Todo</title>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.rtl.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-grid.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-grid.rtl.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-reboot.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-reboot.rtl.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-utilities.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-utilities.rtl.css" rel="stylesheet">
    </head>
    <body>
<div class="container">
    <H1>Add a Todo to your list</H1>
    <BR/>
    <form action="/myapp/add-todos" method="post">
        <fieldset class="form-group">
            <label>Description</label>
            <input name="desc" type="text" class="form-control" required="required"/>
        </fieldset>
        <BR/>
        <button type="submit" class="btn btn-success">Add</button>
    </form>
</div>

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.esm.js"></script>

</body>
</html>
