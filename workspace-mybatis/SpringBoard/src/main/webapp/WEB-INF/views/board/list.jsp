<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

table, tr, th, td {
	border: 1px solid #ccc;
	border-collapse: collapse;
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
</table>



<c:import url="/WEB-INF/views/layout/paging.jsp" />

</body>
</html>