<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 16.04.2023
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="user"><br>
    FIRST NAME:   <form:input path="firstName"/>
    <form:errors path="firstName"/><br>
    LAST NAME:   <form:input path="lastName"/>
    <form:errors path="lastName"/><br>
    PASSWORD:   <form:input path="password"/>
    <form:errors path="password"/><br>
    MAIL:   <form:input path="mail"/>
    <form:errors path="mail"/><br>
    CITY:   <form:input path="city"/>
    <form:errors path="city"/><br>
    ZIP CODE:   <form:input path="zipCode"/>
    <form:errors path="zipCode"/><br>
    STREET:   <form:input path="street"/>
    <form:errors path="street"/><br>
    HOUSE NUMBER:   <form:input path="houseNumber"/>
    <form:errors path="houseNumber"/><br>
    MOBILE:   <form:input path="mobileNumber"/>
    <form:errors path="mobileNumber"/><br>
    PESEL:   <form:input path="pesel"/>
    <form:errors path="pesel"/><br>
    DRIVING LICENSE:   <form:input path="drivingLicense"/>
    <form:errors path="drivingLicense"/><br>
    EMPLOYEE NUMBER:   <form:input path="employeeNumber"/>
    <form:errors path="employeeNumber"/><br>

    <input type="submit" value="REGISTRATION"><br>
</form:form>
</body>
</html>
