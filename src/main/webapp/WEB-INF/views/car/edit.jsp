<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 22.04.2023
  Time: 23:08
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
                <div class="col"><h3 class="color-header text-uppercase">Edycja Informacji o samochodzie</h3></div>
                <div class="col d-flex justify-content-end mb-2"><a href="/car/all" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
                </div>
            </div>
            <form:form method="post" modelAttribute="car">
                <form:hidden path="id"/>
                <table class="table borderless">
                    <tbody>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">MODEL</th>
                        <td class="col-7">
                            <form:select path="carModel" items="${carModel}" itemLabel="name" itemValue="id"/><br/>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Typ</th>
                        <td class="col-7">
                            <form:select path="carType" items="${carType}" itemLabel="name" itemValue="id"/><br/>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Klasa</th>
                        <td class="col-7">
                            <form:select path="carClass" items="${carClass}" itemLabel="name" itemValue="id"/><br/>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Rodzaj paliwa</th>
                        <td class="col-7">
                            <form:select path="fuelType" items="${fuelType}" itemLabel="name"/><br>
                        </td>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">Rok produkcji</th>
                        <td class="col-7">
                            <form:input path="yearOfProduction"/><br>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">Cena za dobe</th>
                        <td class="col-7">
                            <form:input path="priceOfDay"/><br>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">data przeglądu</th>
                        <td class="col-7">
                            <form:input type="date" path="overviewDate"/><br>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">Pojemnosc silnika</th>
                        <td class="col-7">
                            <form:input path="engineCapacity"/><br>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">Opis</th>
                        <td class="col-7">
                            <form:textarea  rows="10"  cols="80" path="description"/><br>
                        </td>
                    </tr>

                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">Zdjecie</th>
                        <td class="col-7">
                            <form:select path="imageCar" items="${imageCar}" itemLabel="id" itemValue="id"/><br/>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <div class="col d-flex justify-content-end mb-2">

                            <td class="col-7">
                                <input class="btn-color" type="submit" value="Dodaj samochod"><br>
                        </div>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </form:form>


            <form method="POST" enctype="multipart/form-data" action="/upload">
                <table>
                    <tr><td>File to upload:</td><td><input type="file" name="file" /></td></tr>
                    <tr><td></td><td><input type="submit" value="Upload" /></td></tr>
                </table>
            </form>



        </div>
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