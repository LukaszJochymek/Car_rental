<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 14.04.2023
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="carModel">
    MODEL NAME :   <form:input path="name"/>
    MARK :  <form:select path="carMark" items="${carMarks}" itemLabel="name" itemValue="id"/><br/>
    <input type="submit" value="ADD MODEL"><br>
</form:form>
</body>
</html>
