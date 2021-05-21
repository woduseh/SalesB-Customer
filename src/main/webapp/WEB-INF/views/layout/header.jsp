<%-- <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/">SalesB</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="true" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        <span class="navbar-toggler-icon"></span>
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
	        <sec:authorize access="hasRole('USER')">
	          <li class="nav-item active">
	            <a class="nav-link" href="${pageContext.request.contextPath}/customer">Home
	              <span class="sr-only">(current)</span>
	            </a>
	          </li>
	        </sec:authorize>
	        <sec:authorize access="!hasAnyRole('USER', 'SELLER', 'ADMIN')">
	          <li class="nav-item active">
	            <a class="nav-link" href="${pageContext.request.contextPath}/">Home
	              <span class="sr-only">(current)</span>
	            </a>
	          </li>
            </sec:authorize>
            <sec:authorize access="!hasAnyRole('USER', 'SELLER', 'ADMIN')">
	          <li class="nav-item">
	            <a class="nav-link" href="${pageContext.request.contextPath}/customerlogin">Login</a>
	          </li>
            </sec:authorize>
        </ul>
      </div>
    </div>
  </nav> --%>
      <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area sticky">
                <div class="container-fluid p-0">
                    <div class="row align-items-center justify-content-between no-gutters">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="${pageContext.request.contextPath}/">
                                    <img src="resources/vendor/bootstrap4/img/logosalesB.png" alt="" style="width:205px; height:45px">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li> <a class="nav-link" href="${pageContext.request.contextPath}/">home</a></li>
                                       <%--  <li>
	                                        <sec:authorize access="!hasRole('USER')">
									        	<a class="nav-link" href="${pageContext.request.contextPath}/customerlogin">Login</a>
								            </sec:authorize>
                                        </li> --%>
                                      <!--   <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">blog</a></li>
                                                <li><a href="single-blog.html">single-blog</a></li>
                                            </ul>
                                        </li> -->
                                        <li>
                                        	<sec:authorize access="hasRole('USER')">
											  <form:form action="${pageContext.request.contextPath}/logout" cssClass="inline" style="padding:0px !important">
											    <button class= "nav-link" name="logout" style="background:#000; color:#fff; height:60px; padding: 5px 30px;
    margin: 40px;border: 2px solid #fff;">
											      <spring:message code="label.tr.common.logout" />
											    </button>
											  </form:form>
										    </sec:authorize>
                                        </li>
                                        <li>
	                                        <sec:authorize access="!hasRole('USER')">
									        	<a class="nav-link" href="${pageContext.request.contextPath}/customerlogin">Login</a>
								            </sec:authorize>
                                        </li>
                                       <!--  <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="elements.html">elements</a></li>
                                            </ul>
                                        </li> -->
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 d-none d-lg-block">
                            <div class="buy_ticket">
                                <a class="boxed-btn-white" href="${pageContext.request.contextPath}/customers/create?form=" >Register</a>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->