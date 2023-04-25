<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 25.04.2023
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerClient.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="m-4 p-3 width-medium text-color-darker">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <div class="mt-4 ml-4 mr-4">
            <div class="row border-bottom border-3">
                <div class="col"><h3 class="color-header text-uppercase">Szczegóły</h3></div>
                <div class="col d-flex justify-content-end mb-2"><a href="/car/client/all" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a></div>
            </div>

            <table class="table borderless">
                <tbody>
                <tr class="d-flex">
                    <th scope="row" class="col-2">Marka</th>
                    <td class="col-7">
                        ${car.carModel.carMark.name}
                    </td>
                </tr>
                <tr class="d-flex">
                    <th scope="row" class="col-2">Model</th>
                    <td class="col-7">
                        ${car.carModel.name}
                    </td>
                <tr class="d-flex">
                    <th scope="row" class="col-2">Rok produkcji</th>
                    <td class="col-7">
                        ${car.yearOfProduction}
                    </td>
                </tr>
                <tr class="d-flex">
                    <th scope="row" class="col-2">Typ</th>
                    <td class="col-7">
                        ${car.carType.name}
                    </td>
                </tr>
                <tr class="d-flex">
                    <th scope="row" class="col-2">Silnik</th>
                    <td class="col-7">${car.engineCapacity}</td>
                </tr>
                <tr class="d-flex">
                    <th scope="row" class="col-2"Typ paliwa></th>
                    <td class="col-7">${car.fuelType.name}</td>
                </tr>

                </tbody>
            </table>

            <div class="row d-flex">
                <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Opis</h3></div>
                <div class="col-2"></div>
                <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Zdjecie</h3></div>
            </div>
            <div class="row d-flex">
                <div class="col-5 p-4">
                    <p>${car.description}</p>
                </div>
                <div class="col-2"></div>
                FOTO
            </div>

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