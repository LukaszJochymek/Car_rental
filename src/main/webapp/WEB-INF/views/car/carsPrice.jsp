<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 20.04.2023
  Time: 09:22
  To change this template use File | Settings | File Templates.
--%>
page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerClient.jsp"/>
<!-- End of Topbar -->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Samochody</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista Samochodów</h6>
        </div>
        <div class="card-body">
            FILTRUJ :<a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Cen malejaco</a>
            <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Cen rosnaco</a>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa A</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${carsPrice}">
                        <c:if test="${car.carClass.name == 'Segment A'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2">CENA : <c:out value="${car.priceOfDay}"/></td>

                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>

                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>

                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa B</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'Segment B'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2">CENA : <c:out value="${car.priceOfDay}"/></td>

                                <td class="col-7"><img src="/image/${car.imageCar.data}" alt="foto" /></td>


                                <td class="col-1 center">
                                    <a href="/car/details/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                                <td class="col-2 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>

                            </tr>

                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa C</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'Segment C'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2"> CENA : <c:out value="${car.priceOfDay}"/></td>
                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>

                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa D</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'Segment D'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2"> CENA <c:out value="${car.priceOfDay}"/></td>
                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>


                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa E</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'Segment E'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2">CENA : <c:out value="${car.priceOfDay}"/></td>
                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>

                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>Klasa F</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'Segment F'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2">CENA : <c:out value="${car.priceOfDay}"/></td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>

                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>

                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
                <table class="table">
                    <thead>
                    <tr class="d-flex">
                        <th class="col-2"><h2>BUS-y, Samochody dostawcze</h2></th>
                        <th class="col-7"></th>
                        <th class="col-1"></th>
                        <th class="col-2"></th>
                        <th class="col-2"></th>
                    </tr>
                    </thead>
                    <tbody class="text-color-lighter">
                    <c:forEach var="car" items="${cars}">
                        <c:if test="${car.carClass.name == 'BUS'}">
                            <tr class="d-flex">
                                <td class="col-2">${car.carModel.carMark.name}</td>
                                <td class="col-2">${car.carModel.name}</td>
                                <td class="col-2">CENA <c:out value="${car.priceOfDay}"/></td>
                                <td class="col-2"> <c:out value="${car.description}"/></td>
                                <td class="col-2"><img src="/image/${car.imageCar.data}" alt="foto" /></td>

                                <td class="col-2 center">
                                    <a href="/car/details/${car.id}" class="btn btn-info rounded-0 text-light m-1">Szczegóły</a>
                                </td>
                                <td class="col-1 center">
                                    <a href="/reservation/addUserClientCar/1/${car.id}" class="btn btn-danger rounded-0 text-light m-1">Wypozycz</a>
                                </td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>


            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/static/vendor/jquery/jquery.min.js"></script>
<script src="/resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/static/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/static/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/resources/static/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/static/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="/resources/static/js/demo/datatables-demo.js"></script>

</body>

</html>
