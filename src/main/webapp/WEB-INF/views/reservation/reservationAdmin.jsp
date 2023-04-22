<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 19.04.2023
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Reservation</title>
</head>
<body>
<table border="1">
  <thead>
  <th>Date of Booking</th>
  <th>User Client</th>
  <th>CAR</th>
  <th>STATUS</th>
  <th>Date of Start Rental</th>
  <th>Date of Return</th>
  <th>cost</th>
  <th>CAR PICKUP LOCATION</th>
  <th>USER ADMIN</th>
  </thead>
  <tbody>

  <c:forEach items="${reservations}" var="res">
    <tr>
      <td><c:out value="${res.dateOfBooking}"/></td>
      <td><c:out value="${res.userClient.firstName}"/></td>
      <td><c:out value="${res.car.carModel.name}"/></td>
      <td><c:out value="${res.status}"/></td>
      <td><c:out value="${res.dateStartRental}"/></td>
      <td><c:out value="${res.dateOfReturn}"/></td>
      <td><c:out value="${res.cost}"/></td>
      <td><c:out value="${res.carPickupLocation}"/></td>
      <td><c:out value="${res.userAdmin}"/></td>


      <td><a href='<c:url value="/reservation/delete/${res.id}"/>'> DEL </a></td>
      <td><a href='<c:url value="/reservation/changeStatus/${res.id}"/>'> Car released </a></td>
      <td><a href='<c:url value="/reservation/changeStatus/${res.id}"/>'> Car returned </a></td>
    </tr>
  </c:forEach>

  </tbody>
</table>
<a href="/reservation/addUserClient/2">ADD RESERVATION (przez Klienta)</a><br>
<a href="/reservation/addUserAdmin/2">ADD RESERVATION (przez Admina)</a>
</body>
</html>