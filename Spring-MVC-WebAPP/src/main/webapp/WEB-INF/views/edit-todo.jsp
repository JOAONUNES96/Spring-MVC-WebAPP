<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 23/05/2023
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>


<body>
<div class="container">
  <H1>Edit your todo</H1>
  <BR/>
  <form:form action="/myapp/edit-todo" method="post" commandName="todo">
    <fieldset class="form-group">
      <form:label path="desc">Description</form:label>
      <form:input path="desc" type="text" class="form-control" required="required"/>
      <form:errors path="desc" cssClass="text-bg-warning" />
    </fieldset>
    <BR/>
    <button type="submit" formmethod="post" class="btn btn-success">Submit</button>
  </form:form>

  <%@ include file="common/footer.jspf"%>
