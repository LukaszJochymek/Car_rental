<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 14.04.2023
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CAR MODEL</title>
</head>
<body>
<table border="1">
  <thead>
  <th>CAR MODEL</th>
  <th>CAR MARK</th>
  <th>DELETED</th>



  </thead>
  <tbody>

  <c:forEach items="${carModels}" var="carModel">
    <tr>
      <td><c:out value="${carModel.name}"/></td>
      <td><c:out value="${carModel.carMark.name}"/></td>

      <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> DEL </a></td>
    </tr>
  </c:forEach>

  </tbody>
</table>
<a href="/car/model/add">ADD CAR MODEL</a>
</body>
</html>
