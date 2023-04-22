<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 18.04.2023
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="opinion">
    CAR:   <form:select path="car" items="${cars}" itemLabel="carModel.name" itemValue="id"/><br/>
    RATING :  <form:select path="rating" items="${rating}" itemLabel="grade" itemValue="id"/><br/>
    OPINIONS : <form:textarea  rows="10"  cols="80" path="description"/><br>
    <input type="submit" value="ADD OPINIONS"><br>

</form:form>
</body>
</html>
