<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="/static/js/story.form.js"></script>
</head>
<body>
    <h1><spring:message code="Update priority"/></h1>
    <div class="well page-content">
        <form:form action="/priority/update" commandName="priority" method="POST" enctype="utf8">
            <form:hidden path="id"/>
            <div id="control-group-name" class="control-group">
                <label for="priority-name"><spring:message code="Name"/>:</label>

                <div class="controls">
                    <form:input id="priority-name" path="name"/>
                    <form:errors id="error-title" path="name" cssClass="help-inline"/>
                </div>
            </div>
            
            <div class="action-buttons">
                <a href="/priority/${priority.id}" class="btn"><spring:message code="label.cancel"/></a>
                <button id="update-priority-button" type="submit" class="btn btn-primary"><spring:message
                        code="Update priority Button"/></button>
            </div>
        </form:form>
    </div>
</body>
</html>