<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- 부트스트랩 3 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>

	<h1>내가 쓴 글</h1>
	<hr>

	<table class="table table-striped">
		<caption>커스텀게시판</caption>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>추천수</th>
		</tr>

		<c:forEach items="${customBoardList }" var="custom">
			<tr>
				<td>${custom.custom_board_no }</td>
				<td>${custom.custom_board_title }</td>
				<td>${custom.custom_board_date }</td>
				<td>${custom.custom_board_hit }</td>
				<td>${custom.custom_board_vote }</td>
			</tr>
		</c:forEach>
	</table>
	<table class="table table-striped">
		<caption>자유게시판</caption>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성일</th>
			<th>조회수</th>
			<th>추천수</th>
		</tr>
		<c:forEach items="${freeBoardList }" var="free">
			<tr>
				<td>${free.free_board_no }</td>
				<td>${free.free_board_title }</td>
				<td>${free.free_board_date }</td>
				<td>${free.free_board_hit }</td>
				<td>${free.free_board_vote }</td>
			</tr>
		</c:forEach>

	</table>









</body>
</html>