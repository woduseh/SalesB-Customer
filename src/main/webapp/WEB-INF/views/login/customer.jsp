<div class="container">
  <jsp:include page="../common/top.jsp" />
  <div class="loginW">
  <form:form action="${pageContext.request.contextPath}/login">
    <fieldset id="loginform">

      <c:if test="${param.containsKey('error')}">
        <span id="loginError"> <t:messagesPanel
            messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
        </span>
      </c:if>
      
      <div class="loginContent">
			<div class="intro">			
				<p class="welcome"> <spring:message code="label.tr.common.login"></spring:message></p>
			</div>
			<dl>
				<dt><label for="username"><spring:message code="label.tr.common.userId" /></label></dt>
				<dd>
					<input id="\" name="username" class="inputTextType1" type="text" value="" size="20" maxlength="15" >
				</dd>
			</dl>
			<dl>
				<dt><label for="password"><spring:message code="label.tr.common.password" /></label></dt>
				<dd>
					<input id="password" name="password" class="inputTextType1"  type="password" value="" size="20" maxlength="20">
				</dd>
			</dl>
			<div class="buttonContent">
			<input type="hidden" name="redirectTo" value="${f:h(param.redirectTo)}/customer" />
			<button id="loginBtn">
          		<spring:message code="label.tr.common.login" />
	        </button>
	        <br>
	         
		  </div>
		</div>

<%--       <p>
        <label for="username"> <spring:message code="label.tr.common.userId" /></label> <br> <input
          type="text" class="text" id="username" name="username">
      </p>
      <p>
        <label for="password"> <spring:message code="label.tr.common.password" />
        </label> <br> <input type="password" class="text" id="password" name="password">
      </p>
      <p>
        <input type="hidden" name="redirectTo" value="${f:h(param.redirectTo)}" />
        <button id="loginBtn">
          <spring:message code="label.tr.common.login" />
        </button>
        <button id="resetBtn" type="reset">
          <spring:message code="label.tr.common.reset" />
        </button>
      </p> --%>
    </fieldset>
  </form:form>
  <form:form method="get" action="${pageContext.request.contextPath}/customers/create"  style="margin: 0px 0 100px 300px;">
    <button id="customerRegisterBtn" name="form">
      <spring:message code="label.tr.menu.customerRegisterBtnMessage" />
    </button>
  </form:form>
<%--   <p>
    <spring:message code="label.tr.login.notCustmerMessage" />
  </p> --%>
</div>
  </div>


