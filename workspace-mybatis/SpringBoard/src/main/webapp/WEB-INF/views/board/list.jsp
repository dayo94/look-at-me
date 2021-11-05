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
<style type="text/css">

table, tr, th, td {
	border: 1px solid #ccc;
	border-collapse: collapse;
}

table {
	margin: 0 auto;
}

</style>
</head>
<body>


<h1>게시판 목록</h1>
<hr>

<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자아이디</th>
		<th>작성자닉네임</th>
		<th>조회수</th>
		<th>작성시간</th>
	</tr>
<c:forEach items="${list }" var="list">
	<tr>
		<td>${list.boardNo }</td>
		<td>${list.title }</td>
		<td>${list.content }</td>
		<td>${list.writerId }</td>
		<td>${list.writerNick }</td>
		<td>${list.hit }</td>
		<td>${list.writeDate }</td>
	</tr>
</c:forEach>
</table><br><br>

<button onclick="location.href = '/member/main';">메인으로</button><br>


<c:import url="/WEB-INF/views/layout/paging.jsp" />

</body>
</html>