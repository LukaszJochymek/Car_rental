<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 16.04.2023
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 23.04.2023
  Time: 00:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">


<jsp:include page="../headerAdmin.jsp"/>

<div class="m-4 p-3 width-medium text-color-darker">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="mt-4 ml-4 mr-4">
            <div class="row border-bottom border-3">
                <div class="col"><h3 class="color-header text-uppercase">Rejestracja nowego klienta</h3></div>
                <div class="col d-flex justify-content-end mb-2"><a href="/user/all"
                                                                    class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
                </div>
            </div>
            <form:form method="post" modelAttribute="user"><br>
                <table class="table borderless">
                    <tbody><tr class="d-flex">
                        <th scope="row" class="col-2">Nazwa użytkownika</th>
                        <td class="col-7">
                            <form:input path="username"/>
                            <form:errors path="username"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Imie</th>

                        <td class="col-7">
                            <form:input path="firstName"/>
                            <form:errors path="firstName"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Nazwisko</th>
                        <td class="col-7">
                            <form:input path="lastName"/>
                            <form:errors path="lastName"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Haslo</th>
                        <td class="col-7">
                            <form:input path="password"/>
                            <form:errors path="password"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">E-mail</th>
                        <td class="col-7">
                            <form:input path="mail"/>
                            <form:errors path="mail"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Miasto</th>
                        <td class="col-7">
                            <form:input path="city"/>
                            <form:errors path="city"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Kod Pocztowy</th>
                        <td class="col-7">
                            <form:input path="zipCode"/>
                            <form:errors path="zipCode"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Ulica</th>
                        <td class="col-7">
                            <form:input path="street"/>
                            <form:errors path="street"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Numer Domu</th>
                        <td class="col-7">
                            <form:input path="houseNumber"/>
                            <form:errors path="houseNumber"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Numer telefonu</th>
                        <td class="col-7">
                            <form:input path="mobileNumber"/>
                            <form:errors path="mobileNumber"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Pesel</th>
                        <td class="col-7">
                            <form:input path="pesel"/>
                            <form:errors path="pesel"/><br>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Prawo Jazdy</th>
                        <td class="col-7">
                            <form:input path="drivingLicense"/>
                            <form:errors path="drivingLicense"/><br>
                        </td>
                    </tr>


                    <tr class="d-flex">
                        <div class="col d-flex justify-content-end mb-2">

                            <td class="col-7">
                                <input class="btn-color" type="submit" value="Zarejstruj"><br>
                        </div>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </form:form>

        </div>
    </div>
</div>
</div>
</section>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>

