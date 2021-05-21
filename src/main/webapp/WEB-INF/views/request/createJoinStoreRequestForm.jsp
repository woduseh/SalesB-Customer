<style>
p {
	margin-bottom: 70px;
}
</style>
<div class="container" style="margin-top: 200px">
	<jsp:include page="../common/include.jsp" />
	<form:form modelAttribute="customerJoinStoreRequestForm">
		<fieldset>
			<legend>
				<spring:message code="lable_tr_request_notice" />
			</legend>
			<form:errors path="*" cssClass="error" element="div" />
			<table style="cellspacing: 0; width: 300">
				<!-- title -->
				<tr align="center">
					<th><label for="input_subject"> Email </label></th>
					<td><form:input path="customerMail" id="customer_Mail"
							class="form-control" size="120" /> <form:errors
							path="customerMail" cssStyle="color:red;font-size:small"
							size="120" /></td>
				</tr>
			</table>
			<p>
				<button id="confirmBtn" name="confirm">
					<spring:message code="label.tr.common.confirm" />
				</button>
				<button id="resetBtn" type="reset">
					<spring:message code="label.tr.common.reset" />
				</button>
			</p>
		</fieldset>
	</form:form>
</div>
