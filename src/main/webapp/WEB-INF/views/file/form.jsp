<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="col-lg-7">


    <!-- Call to Action Well -->
<!--     <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">SalesB</p>
      </div>
    </div>
 -->
    <!-- Content Row -->
    <div class="row">
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Upload</h2>
            <p class="card-text">Upload to Webdav</p>
          </div>
          <form:form method="get" action="${pageContext.request.contextPath}/file/upload">
          	<!-- <input type="hidden" name="_method" value="put" /> -->
        <fieldset class="notice">
          <div class="card-footer">
            <button  name="form">
              <spring:message code="label.tr.menu.sellerRegisterBtnMessage" />
            </button>
          </div>
        </fieldset>
      </form:form>
        </div>
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Download</h2>
            <p class="card-text">Download from Webdav</p>
          </div>
          <form:form action="${pageContext.request.contextPath}/file/download" method="get">
          	<!-- <input type="hidden" name="_method" value="put" /> -->
        <fieldset class="notice">
          <div class="card-footer">
            <button  name="form">
              <spring:message code="label.tr.menu.sellerRegisterBtnMessage" />
            </button>
          </div>
        </fieldset>
      </form:form>
        </div>

    <!-- /.row -->

  </div>
  <!-- /.container -->
</body>
</html>