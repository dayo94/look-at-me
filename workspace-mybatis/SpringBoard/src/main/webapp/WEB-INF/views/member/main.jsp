<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

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



</body>
</html>