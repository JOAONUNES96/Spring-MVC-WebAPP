<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Todos for ${name}</title>
</head>
<body>
<H1>Your Todos</H1>
<div>
    <table>
        <caption>Your Todos are</caption>

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
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<a class="button" href="/myapp/add-todos">Add</a>
</body>
</html>