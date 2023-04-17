<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 16.04.2023
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <thead>
    <th>FIRST NAME</th>
    <th>LAST NAME</th>
    <th>CITY</th>








    </thead>
    <tbody>

    <c:forEach items="${users}" var="user">
        <tr>
            <td><c:out value="${user.firstName}"/></td>
            <td><c:out value="${user.lastName}"/></td>
            <td><c:out value="${user.city}"/></td>

            <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> DEL </a></td>
            <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> EDIT </a></td>
            <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> DETAILS </a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<a href="/car/model/add">ADD USER</a>
</body>
</html>
