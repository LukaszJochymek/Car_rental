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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<jsp:include page="../headerClient.jsp"/>

<div class="m-4 p-3 width-medium text-color-darker">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="mt-4 ml-4 mr-4">
            <div class="row border-bottom border-3">
                <div class="col"><h3 class="color-header text-uppercase">REZERWACJA</h3></div>
                <div class="col d-flex justify-content-end mb-2"><a href="/reservation/all" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
                </div>
            </div>
            <script>
                function calcCost() {
                    var dateStart = new Date(document.getElementById("DateStartRental").value);
                    var dateEnd = new Date(document.getElementById("DateOfReturn").value);
                    var carPriceSelect = document.querySelector("#carPrice");
                    var selectedCarOption = carPriceSelect.options[carPriceSelect.selectedIndex];
                    var carPrice = selectedCarOption.getAttribute("price");

                    var diffTime = Math.abs(dateEnd - dateStart);
                    var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

                    document.getElementById("cost").value = diffDays * carPrice;
                }
            </script>
            <form method="post" modelAttribute="reservation">

                <table class="table borderless">
                    <tbody>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">SAMOCHÓD</th>
                        <td class="col-7">

                            <select id="carPrice" name="car">
                                <c:forEach items="${cars}" var="car">
                                    <option  value=${car.id} price=${car.priceOfDay}>${car.carModel.carMark.name}${car.carModel.name} </option>
                                </c:forEach>
                            </select>

                            <%--                            <form:select path="car" items="${cars}" itemLabel="carModel.name"  itemValue="id"/><br/>--%>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">DATA ROZPOCZĘCIA WYPOŻYCZENIA</th>
                        <td class="col-7">
                            <input id="DateStartRental" type="datetime-local" name="DateStartRental" onchange="calcCost()"/>

                            <%--                        <form:input id="DateStartRental" type="datetime-local" path="DateStartRental" onchange="calcCost()"/><br>--%>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">DATA KOŃCA WYPOŻYCZENIA</th>
                        <td class="col-7">
                            <input id="DateOfReturn" type="datetime-local" name="DateOfReturn" onchange="calcCost()">
                            <%--                        <form:input id="DateOfReturn" type="datetime-local" path="DateOfReturn" onchange="calcCost()"/><br>--%>
                        </td>
                    </tr>
                    <tr class="d-flex">
                        <th scope="row" class="col-2">MIEJSCE ODBIORU SAMOCHODU</th>
                        <td class="col-7">
                            <textarea rows="2"  cols="20" name="carPickupLocation"></textarea>
                            <%--                        <form:textarea  rows="2"  cols="20" path="carPickupLocation"/><br>--%>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <th scope="row" class="col-2">KOSZT CAŁKOWITY</th>
                        <td class="col-7">
                            <%--                        <form:input id="costs" path="costs"/><br>--%>
                            <input type="number" id="cost" name="cost"/>
                        </td>
                    </tr>
                    </tr> <tr class="d-flex">
                        <div class="col d-flex justify-content-end mb-2">

                            <td class="col-7">
                                <input class="btn-color" type="submit" value="Dodaj rezerwacje"><br>
                        </div>
                        </td>
                    </tr>

                    </tbody>
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
