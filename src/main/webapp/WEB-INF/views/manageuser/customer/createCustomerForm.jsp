
<div style="margin-top:250px; margin-bottom:100px" class="container">
  <jsp:include page="../../common/include.jsp" />
  <form:form modelAttribute="customerForm">
    <fieldset>
      <legend>
        <spring:message code="label.tr.managecustomer.managecustomerMessage" />
      </legend>
      <form:errors path="*" cssClass="error" element="div" />
<%--       <p>
        Kana
        <form:label path="customerKana">
          <spring:message code="label.tr.common.english" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:input type="text" cssClass="text" path="customerKana" />
        &nbsp;(
        <spring:message code="label.tr.managecustomer.englishOnlyMessage" />
        )
      </p> --%>
      <p>
        <%-- Name --%>
        <form:label path="customerName">
          <spring:message code="label.tr.common.name" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:input type="text" cssClass="text" path="customerName" />
        &nbsp;(
        <spring:message code="label.tr.managecustomer.fullOnlyMessage" />
        )
      </p>
      <%-- <p>
        BirthDay
        <form:label path="customerBirthYear">
          <spring:message code="label.tr.common.birthday" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:select path="customerBirthYear" items="${CL_BIRTH_YEAR}" />
        <spring:message code="label.tr.common.year" />
        <form:select path="customerBirthMonth" items="${CL_MONTH}" />
        <spring:message code="label.tr.common.month" />
        <form:select path="customerBirthDay" items="${CL_DAY}" />
        <spring:message code="label.tr.common.day" />
      </p> --%>
<%--       <p>
        Job
        <form:label path="customerJob">
          <spring:message code="label.tr.common.job" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:input path="customerJob" cssClass="text" />
      </p> --%>
      <p>
        <%-- EMail --%>
        <form:label path="customerMail">
          <spring:message code="label.tr.common.email" />
        </form:label>
        <br>
        <form:input path="customerMail" cssClass="text" />
      </p>
      <p>
        <%-- Tel --%>
        <form:label path="customerTel">
          <spring:message code="label.tr.common.tel" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:input path="customerTel" cssClass="text" />
        &nbsp;(
        <spring:message code="label.tr.managecustomer.halfTelOnlyMessage" />
        )&nbsp;
        <spring:message code="label.tr.managecustomer.telExampleMessage" />
      </p>
      <p>
        <%-- Password --%>
        <form:label path="customerPass">
          <spring:message code="label.tr.common.password" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:password path="customerPass" cssClass="text" />
        <%--&nbsp;(
        <spring:message code="label.tr.managecustomer.halfPasswordOnlyMessage" />
        )--%>
      </p>
      <p>
        <%-- Password Confirm --%>
        <form:label path="customerPassConfirm">
          <spring:message code="label.tr.common.passwordConfirm" />
					(<spring:message code="label.tr.common.required" />)
				</form:label>
        <br>
        <form:password path="customerPassConfirm" cssClass="text" />
      </p>
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
