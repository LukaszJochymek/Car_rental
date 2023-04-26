<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerAdmin.jsp"/>
<!-- End of Topbar -->

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Klient ${user.firstName} ${user.lastName}</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczególy</h6>
            <div class="col d-flex justify-content-end mb-2"><a href="/user/all"
                                                                class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a>
            </div>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>Imie</th>
                        <th>Nazwisko</th>
                        <th>Miasto</th>
                        <th>Ulica</th>
                        <th>Numer Domu</th>
                        <th>Kod Pocztkowy</th>
                        <th>Pesel</th>
                        <th>Telefon</th>
                        <th>E-mail</th>
                        <th>Prawo Jazdy</th>

                    </tr>
                    </thead>

                    <tbody>
                        <tr>
                           <td><c:out value="${user.firstName}"/></td>
                           <td><c:out value="${user.lastName}"/></td>
                           <td><c:out value="${user.city}"/></td>
                           <td><c:out value="${user.street}"/></td>
                           <td><c:out value="${user.houseNumber}"/></td>
                           <td><c:out value="${user.zipCode}"/></td>
                           <td><c:out value="${user.pesel}"/></td>
                           <td><c:out value="${user.mobileNumber}"/></td>
                           <td><c:out value="${user.mail}"/></td>
                           <td><c:out value="${user.drivingLicense}"/></td>

                        </tr>

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

<

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