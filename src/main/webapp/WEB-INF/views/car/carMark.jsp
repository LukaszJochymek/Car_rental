<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 14.04.2023
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CAR MARK LIST</title>
</head>
<body>

</body>
</html><table border="1">
    <thead>
    <th>CAR MARK NAME</th>
    <th>DELETED</th>



    </thead>
    <tbody>

    <c:forEach items="${carMark}" var="carMarks">
        <tr>
            <td><c:out value="${carMarks.name}"/></td>
            <td><a href='<c:url value="/car/mark/delete/${carMarks.id}"/>'> DEL </a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<a href="/car/mark/add">ADD CAR MARK</a>
