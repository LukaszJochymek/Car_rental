<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 22.04.2023
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerAdmin.jsp"/>
<!-- End of Topbar -->

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">Modele samochodow</h1>

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Lista dostepnych modeli</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <tr>
            <th>CAR MODEL</th>
            <th>CAR MARK</th>
            <th>DELETED</th>
          </tr>
          </thead>

          <tbody>
          <c:forEach items="${carModels}" var="carModel">
            <tr>
              <td><c:out value="${carModel.name}"/></td>
              <td><c:out value="${carModel.carMark.name}"/></td>

              <td><a href='<c:url value="/car/model/delete/${carModel.id}"/>'> DEL </a></td>
            </tr>
          </c:forEach>

          </tbody>
        </table>
        <div class="menu-item border-dashed">
          <a href="/car/model/add">
            <i class="far fa-plus-square icon-plus-square"></i>
            <span class="title">Dodaj model samochodu</span>
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


