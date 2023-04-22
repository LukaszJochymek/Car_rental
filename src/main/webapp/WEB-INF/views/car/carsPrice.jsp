<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 20.04.2023
  Time: 09:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CAR SORTED PRICE</title>
</head>
<body>
<table border="1">
    <thead>
    <th>MODEL</th>
    <th>MARK</th>
    <th>DESCRIPTION</th>
    <th>ENGINE</th>
    <th>OVERVIEW_DATE</th>
    <th>PRICE OF DAY</th>
    <th>YEAR PRODUCTION</th>
    <th>CLASS</th>
    <th>TYPE</th>
    <th>FUEL</th>
    <th>AVAILABILITY</th>




    </thead>
    <tbody>

    <c:forEach items="${carsPrice}" var="car">
        <tr>
            <td><c:out value="${car.carModel.name}"/></td>
            <td><c:out value="${car.carModel.carMark.name}"/></td>
            <td><c:out value="${car.description}"/></td>
            <td><c:out value="${car.engineCapacity}"/></td>
            <td><c:out value="${car.overviewDate}"/></td>
            <td><c:out value="${car.priceOfDay}"/></td>
            <td><c:out value="${car.yearOfProduction}"/></td>
            <td><c:out value="${car.carClass.name}"/></td>
            <td><c:out value="${car.carType.name}"/></td>
            <td><c:out value="${car.fuelType.name}"/></td>
            <td><c:out value="${car.availability}"/></td>

            <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> DELETE </a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
