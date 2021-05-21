<div class="container" style="margin-top:200px">

	<div class="info">
		<p>
      <spring:message code="label_tr_request_confirm" />
    </p>
	</div>
	<form:form modelAttribute="customerJoinStoreRequestForm">

		<table  id="requestTable" style="cellspacing: 0; width: 300">
			<!-- title -->
			<tr align="center">
				<th><label for="input_subject"> <spring:message
							code="label_tr_request_title" />
							</label></th>
				<td><form:input path="customerMail" id="customer_Mail"
						class="form-control" size="120" readonly="true"  /> <form:errors
						path="customerMail" cssStyle="color:red;font-size:small" size="120" />${f:h(CustomerRequestToSellerForm.customerEmail)}</td>
			</tr>
		</table>
		<form:button id="backToFormBtn" name="redo">
			<spring:message code="label.tr.common.goBackMessage" />
		</form:button>
            &nbsp;
		<form:button id="registerBtn">
			<spring:message code="label.tr.common.register" />
		</form:button>
	</form:form>

</div>
