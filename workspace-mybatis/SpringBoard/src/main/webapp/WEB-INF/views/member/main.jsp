<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />


<h1>메인</h1>
<hr>


<!-- 비로그인 상태 -->
<c:if test="${empty login }">
<button onclick="location.href = '/member/join';">회원가입</button><br>
<button onclick="location.href = '/member/login';">로그인</button><br>
</c:if>
<!-- 로그인 상태 -->
<%-- <c:if test="${not empty login }"> --%>
<c:if test="${login }">
<button onclick="location.href = '/member/logout';">로그아웃</button><br>
</c:if>


<button onclick="location.href = '/board/list';">글목록</button><br>

</div><!-- .container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />