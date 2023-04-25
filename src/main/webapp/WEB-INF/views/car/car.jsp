<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerAdmin.jsp"/>
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
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>MODEL</th>
                                    <th>MARK</th>
                                    <th>DESCRIPTION</th>
                                    <th>ENGINE</th>
                                    <th>OVERVIEW_DATE</th>
                                    <th>PRICE OF DAY</th>
                                    <th>YEAR PRODUCTION</th>
                                    <th>CLASS</th>
                                    <th>TYPE</th>
                                    <th>FUEL</th>
                                    <th>AVAILABILITY</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${cars}" var="car">
                                    <tr>
                                        <td><c:out value="${car.carModel.name}"/></td>
                                        <td><c:out value="${car.carModel.carMark.name}"/></td>
                                                               <td><c:out value="${car.description}"/></td>
                                        <td><c:out value="${car.engineCapacity}"/></td>
                                        <td><c:out value="${car.overviewDate}"/></td>
                                        <td><c:out value="${car.priceOfDay}"/></td>
                                        <td><c:out value="${car.yearOfProduction}"/></td>
                                        <td><c:out value="${car.carClass.name}"/></td>
                                        <td><c:out value="${car.carType.name}"/></td>
                                        <td><c:out value="${car.fuelType.name}"/></td>
                                        <td><c:out value="${car.availability}"/></td>
                                        <td><img src="/image/${car.imageCar.data}" alt="foto" /></td>
                                        <td><a href='<c:url value="/car/delete/${car.id}"/>'> DELETE </a></td>
                                        <td><a href='<c:url value="/car/edit/${car.id}"/>'> EDYTUJ </a></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <div class="menu-item border-dashed">
                                <a href="/car/add">
                                    <i class="far fa-plus-square icon-plus-square"></i>
                                    <span class="title">Dodaj nowy samochod</span>
                                </a>

                            </div>
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
