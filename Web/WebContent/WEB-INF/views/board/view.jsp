<%@page import="dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Board result = (Board) request.getAttribute("board");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>board 상세보기</h1>
<hr>

<table>
<thead>
<tr>
	<th style="width: 10%">boardno</th>
	<th style="width: 20%">title</th>
	<th style="width: 20%">userid</th>
	<th style="width: 20%">content</th>
	<th style="width: 10%">hit</th>
	<th style="width: 20%">write_date</th>
</tr>
</thead>

<tr>
	<td><%=result.getBoardno() %></td>
	<td><%=result.getTitle() %></td>
	<td><%=result.getUserid() %></td>
	<td><%=result.getContent() %></td>
	<td><%=result.getHit() %></td>
	<td><%=result.getWrite_date() %></td>
</tr>
</table>

<br>
<a href="/board/list"><button>목록</button></a>














</body>
</html>

<!--  + View : /WebContent/WEB-INF/views/board/view.jsp -->
<!--   - 게시글 상세 내용 보여주기 -->
<!--   - 글번호, 제목, 아이디, 닉네임(추후추가), 본문, 조회수, 추천수(추후추가), 작성일 -->

<!--   - 목록, 수정, 삭제 버튼 만들기 -->
<!--    (목록만 구현, 나머지는 추후 추가 구현함) -->
