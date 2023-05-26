<%--
  Created by IntelliJ IDEA.
  User: joaonunes
  Date: 16/05/2023
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
    <body>
<div class="container">
    <H1>Add a Todo to your list</H1>
    <BR/>
    <form:form action="/myapp/add-todos" method="post" commandName="todo">

        <form:hidden path="id"/>


        <fieldset class="form-group">
            <form:label path="desc">Description</form:label>
            <form:input path="desc" type="text" class="form-control" required="required"/>
            <form:errors path="desc" cssClass="text-bg-warning" />
        </fieldset>

        <fieldset class="form-group">
            <form:label path="targetDate">TargetDate</form:label>
            <form:input path="targetDate" type="text" class="form-control" required="required"/>
            <form:errors path="targetDate" cssClass="text-bg-warning" />
        </fieldset>



        <BR/>
        <button type="submit" formmethod="post" class="btn btn-success">Submit</button>
    </form:form>
</div>

<%@ include file="common/footer.jspf"%>