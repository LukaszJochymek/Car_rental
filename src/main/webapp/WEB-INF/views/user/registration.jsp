<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 26.04.2023
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CAR RENTAL</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
          rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>
<header class="page-header">
    <nav class="navbar navbar-expand-lg justify-content-around">
        <a href="/" class="navbar-brand main-logo">
            CAR<span>RENTAL</span>
        </a>
        <ul class="nav nounderline text-uppercase">
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/login">logowanie</a>
            </li>
            <li class="nav-item ml-4">
                <a class="nav-link color-header" href="/user/registration/">rejestracja</a>

        </ul>
    </nav>
</header>

<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">

                <form:form method="post" modelAttribute="user"><br>
                    <table class="table borderless">
                        <tbody>
                        <tr class="d-flex">
                            <th scope="row" class="col-2">Nazwa uzytkownika</th>

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
</section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>