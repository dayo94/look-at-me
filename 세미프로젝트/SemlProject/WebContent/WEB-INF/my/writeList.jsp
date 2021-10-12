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

<h1>게시글 목록</h1>
<hr>

<table>
<tr>
	<th>게시판코드</th>
	<th>글번호</th>
	<th>글제목</th>
	<th>작성일</th>
	<th>조회수</th>
	<th>추천수</th>
</tr>

<c:forEach items="${customBoardList }" var="custom">
<tr>
	<td>${custom.board_type }</td>
	<td>${custom.custom_board_no }</td>
	<td>${custom.custom_board_title }</td>
	<td>${custom.custom_board_date }</td>
	<td>${custom.custom_board_hit }</td>
	<td>${custom.custom_board_vote }</td>
</tr>
</c:forEach>
<c:forEach items="${freeBoardList }" var="free">
<tr>
	<td>${free.board_type }</td>
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