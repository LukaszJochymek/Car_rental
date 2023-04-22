<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>add Reservation</title>
</head>
<body>
<form:form method="post" modelAttribute="reservation">
    CAR:   <form:select path="car" items="${cars}" itemLabel="carModel.name" itemValue="id"/><br/>
    DATE OF START RENTAL :<form:input type="datetime-local" path="DateStartRental"/><br>
    DATE OF RETURN : <form:input type="datetime-local" path="DateOfReturn"/><br>
    CAR LOCATION PICKUP : <form:textarea  rows="10"  cols="80" path="carPickupLocation"/><br>

    <input type="submit" value="ADD RESERVATION"><br>

</form:form>
</body>
</html>
