<div class="container"><br><br><br>
  <!-- 메뉴 메시지 -->
  <p id="messagesArea" class="box">
    <sec:authorize access="!hasAnyRole('USER', 'SELLER', 'ADMIN')">
      <spring:message code="label.tr.common.notLoginMessage" />
    </sec:authorize>
    
    <!-- 로그아웃 버튼 -->
    <sec:authorize access="hasAnyRole('USER', 'SELLER', 'ADMIN')">
	  <form:form action="${pageContext.request.contextPath}/logout" cssClass="inline">
	    <button id="logoutBtn" name="logout">
	      <spring:message code="label.tr.common.logout" />
	    </button>
	  </form:form>
    </sec:authorize>
  </p>
  
  <!-- 판매자 관련 파트 -->
  <div class="span-24 last">
    <sec:authorize access="!hasAnyRole('USER', 'SELLER', 'ADMIN')">
      <form:form method="get" action="${pageContext.request.contextPath}/customer">
        <fieldset class="notice">
          <div class="span-5">customer page
            <button id="searchTourBtn" name="initForm" style="width: 150px;">
              <spring:message code="label.tr.seller" />
            </button>
          </div>
          <div class="span-18 last">
            <p>
              <spring:message code="label.tr.customer" />
            </p>
          </div>
        </fieldset>
      </form:form>
    </sec:authorize>

  </div>
</div>
