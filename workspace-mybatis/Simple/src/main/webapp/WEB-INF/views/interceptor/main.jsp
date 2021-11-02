<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>인터셉터 테스트</h1>
<h3>메인 페이지</h3>
<hr>

<!-- 비로그인 상태 -->
<c:if test="${empty login }">
<button onclick="location.href = '/interceptor/login';">로그인</button><br>
</c:if>
<!-- 로그인 상태 -->
<%-- <c:if test="${not empty login }"> --%>
<c:if test="${login }">
<h3>${nick }님, 환영합니다</h3>
<button onclick="location.href = '/interceptor/logout';">로그아웃</button><br>
</c:if>

<hr>

<a href="/interceptor/admin/main">관리자 페이지로...</a>





</body>
</html>