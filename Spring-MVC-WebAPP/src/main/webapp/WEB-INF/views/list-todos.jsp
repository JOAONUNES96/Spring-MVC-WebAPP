<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.rtl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-grid.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-grid.rtl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-reboot.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-reboot.rtl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-utilities.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-utilities.rtl.css" rel="stylesheet">


    <title>Todos for ${name}</title>

</head>
<body>
<div class="container">
    <caption>Your Todos are</caption>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Description</th>
            <th>Date</th>
            <th>Completed</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.desc}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
                <td><a href="/myapp/edit-todo?id=${todo.id}" class="btn btn-warning">Update</a></td>
                <td><a href="/myapp/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div>
        <a class="btn btn-success" href="/myapp/add-todos">Add</a>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.esm.js"></script>

</body>
</html>