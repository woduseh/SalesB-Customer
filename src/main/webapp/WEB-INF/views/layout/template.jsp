<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<link rel="stylesheet"
  href="${pageContext.request.contextPath}/resources/vendor/blueprint-1.0/950px/screen.css"
  type="text/css" media="screen, projection">
<link rel="stylesheet"
  href="${pageContext.request.contextPath}/resources/vendor/blueprint-1.0/950px/print.css"
  type="text/css" media="print">
<!--[if lt IE 8]><link rel="stylesheet" href="${pageContext.request.contextPath}/css/blueprint-1.0/950px/ie.css" type="text/css" media="screen, projection"><![endif]-->
<link rel="stylesheet"
  href="${pageContext.request.contextPath}/resources/vendor/blueprint-1.0/plugins/fancy-type/screen.css"
  type="text/css" media="screen, projection">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/styles.css"
  type="text/css" media="screen, projection">
  
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/bootstrap.min.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/owl.carousel.min.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/magnific-popup.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/font-awesome.min.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/themify-icons.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/nice-select.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/flaticon.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/animate.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/slicknav.css" type="text/css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap4/css/style.css" type="text/css">
  
<!-- Bootstrap core CSS -->
<%-- <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> --%>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/vendor/css/small-business.css" rel="stylesheet">


<script type="text/javascript"
  src="${pageContext.request.contextPath}/resources/vendor/js/jquery-1.7.2.js"></script>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> --%>

<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/vendor/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/ajax-form.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/scrollIt.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.scrollUp.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.slicknav.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.countdown.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/plugins.js"></script>

<!--contact js-->
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/contact.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/mail-script.js"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap4/js/main.js"></script>

<c:set var="titleKey">
  <tiles:insertAttribute name="title" ignore="true" />
</c:set>
<title><spring:message code="${titleKey}" text="Terasoluna Tour Web" /></title>
</head>

<body>
<!--   <div class="container"> -->
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="footer" />
<!--   </div> -->
</body>
</html>