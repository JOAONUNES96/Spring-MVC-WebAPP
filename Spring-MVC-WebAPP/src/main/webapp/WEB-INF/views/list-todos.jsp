<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>


<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<body>
<div class="container">
    <caption></caption>
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
                <td><ftm:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}"/></td>
                <td>${todo.isDone}</td>
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
<%@ include file="common/footer.jspf"%>
