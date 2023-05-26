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
Welcome ${name}. You are now authenticated. <BR/>

Now, you can <a href="/myapp/list-todos?name=${name}">manage your todos</a>

<%@ include file="common/footer.jspf"%>