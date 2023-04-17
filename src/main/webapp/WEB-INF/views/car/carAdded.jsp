<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 14.04.2023
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="car">
    MODEL:   <form:select path="carModel" items="${carModel}" itemLabel="name" itemValue="id"/><br/>
    TYPE :  <form:select path="carType" items="${carType}" itemLabel="name" itemValue="id"/><br/>
    CLASS : <form:select path="carClass" items="${carClass}" itemLabel="name" itemValue="id"/><br/>
    FUEL : <form:select path="fuelType" items="${fuelType}" itemLabel="name"/><br>
    YEAR
    PRODUCTIONS :  <form:input path="yearOfProduction"/><br>
    PRICE OF DAY : <form:input path="priceOfDay"/><br>
    OverviewOfDay : <form:input type="date" path="overviewDate"/><br>
    ENGINE :  <form:input path="engineCapacity"/><br>
    DESCRIPTION : <form:textarea  rows="10"  cols="80" path="description"/><br>
    <input type="submit" value="ADD CAR"><br>
</form:form>
</body>
</html>
