<div class="container">
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br>
	<c:if test="${pageSize > 0}">
		<table id="sellerTable">
			<thead>
				<tr>
					<th scope="col"><spring:message
							code="lable.tr.customer.manage.form.table.header.sellername" /></th>
					<th scope="col"><spring:message
							code="lable.tr.customer.manage.form.table.header.sellerinformation" /></th>
					<th scope="col"><spring:message
							code="lable.tr.customer.manage.form.table.header.sellerimageurl" /></th>
					<th scope="col">Request Button</th>
					<th scope="col">Enter Button</th>
					<th scope="col">Join Button</th>
				</tr>
			</thead>
			<c:forEach var="seller" items="${page.content}">
				<tr>
					<c:set var="request" value="0" />
					<c:set var="enter" value="0" />
					<c:set var="join" value="1" />
					<td>${f:h(seller.sellerName)}</td>
					<td>${f:h(seller.sellerInformation)}</td>
					<td><img src="${f:h(seller.sellerImageUrl)}" height=50px width=50px></td>
					<c:forEach var="selcus" items="${sellercustomer}">
						<c:if
							test="${selcus.sellerCode == seller.sellerCode && selcus.customerCode == customerCode}">
							<c:set var="request" value="1" />
							<c:set var="enter" value="1" />
							<c:set var="join" value="0" />
						</c:if>
					</c:forEach>
					<c:if test="${request eq 1}">
						<td><form:form method="get"
								action="${pageContext.request.contextPath}/requestToSeller/create/${seller.sellerName}">
								<button class="btn btn-primary btn-sm" name="form"
									style="margin: 0 auto; position: relative; left: 30%; padding: 3px 6px">
									Request!</button>
							</form:form></td>
					</c:if>
					<c:if test="${request eq 0}">
						<td>You are not joined this store!</td>
					</c:if>
					<c:if test="${request eq 1}">
						<td>
							<form:form method="get" action="${pageContext.request.contextPath}/customerEnterStore/${seller.sellerCode}">
								<button class="btn btn-primary btn-sm" name="form"
									style="margin: 0 auto; position: relative; left: 30%; padding: 3px 6px">
									Enter!</button>
							</form:form>
					</c:if>
					
					<c:if test="${request eq 0}">
						<td>You are not joined this store!</td>
					</c:if>
					<c:if test="${join eq 1}">
						<td><form:form method="get"
								action="${pageContext.request.contextPath}/joinstorerequest/create/${seller.sellerName}">
								<button class="btn btn-primary btn-sm" name="form"
									style="margin: 0 auto; position: relative; left: 30%; padding: 3px 6px">
									Join!</button>
							</form:form></td>
					</c:if>
					<c:if test="${join eq 0}">
						<td>You already joined this store!</td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
		<div class="pagination">
			<t:pagination page="${page}" criteriaQuery="${f:query(seller)}" />
		</div>
	</c:if>
	<c:if test="${pageSize <= 0}">
		<spring:message code="lable.tr.no.result" />
	</c:if>
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br>
</div>