<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 13/05/2023
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title text-center">Welcome ${name}!</h2>
                    <p class="card-text text-center">You are now authenticated.</p>
                    <div class="d-grid gap-2">
                        <a href="myapp/list-todos?name=${name}" class="btn btn-primary btn-lg">Manage your todos</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="common/footer.jspf"%>