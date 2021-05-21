<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>seller List</title>

</head>

<body>
  <!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <div class="row align-items-center my-5">
      <div class="row" style="max-height:500px; overflow-y:scroll; padding-right:15px; display:flex">
		    <p class="notice">
		      <spring:message code="label.tr.manageseller.resultCountMessage"
		        arguments="${page.totalElements}" />
		    </p>
		    <table>
<%-- 		      <caption>
		        <spring:message code="label.tr.searchtour.searchTourResultMessage" />
		      </caption> --%>
		      <thead>
		        <tr>
				<th><spring:message code="label.tr.seller.name" /></th>
				<th><spring:message code="label.tr.seller.mail" /></th>
				<th><spring:message code="label.tr.seller.tel" /></th>

		        </tr>
		      </thead>
		      <tbody>
		      <c:forEach var="Seller" items="${page.content}">
		        <tr>
				  <%-- <form:form method="get"
                        action="${pageContext.request.contextPath}/sellerProduct/${f:h(SellerProduct.productCode)}/cancel">
                        <button id="deleteBtn">
                          <spring:message
                            code="label.tr.menu.delete" />
                        </button>
                  </form:form> --%>

	           	  <td>${f:h(Seller.sellerName)}</td>
       	  		  <td>${f:h(Seller.sellerMail)}</td>
	           	  <td>${f:h(Seller.sellerTel)}</td>
		        </tr>
		      </c:forEach>
		      </tbody>
		    </table>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <form:form method="get" action="${pageContext.request.contextPath}/sellers/create">
    <button id="customerRegisterBtn" name="form">
      <spring:message code="label.tr.menu.sellerRegisterBtnMessage" />
    </button>
  </form:form>
</body>

</html>
