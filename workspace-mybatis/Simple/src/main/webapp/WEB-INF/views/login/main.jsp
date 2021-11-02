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

<h1>메인</h1>
<hr>


<!-- 비로그인 상태 -->
<c:if test="${empty login }">
<button onclick="location.href = '/login/join';">회원가입</button><br>
<button onclick="location.href = '/login/login';">로그인</button><br>
</c:if>
<!-- 로그인 상태 -->
<%-- <c:if test="${not empty login }"> --%>
<c:if test="${login }">
<button onclick="location.href = '/login/mypage';">마이페이지</button><br>
<button onclick="location.href = '/login/logout';">로그아웃</button><br>
</c:if>





</body>
</html>