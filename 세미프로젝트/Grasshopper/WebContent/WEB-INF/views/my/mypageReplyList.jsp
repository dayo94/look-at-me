<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<h1>내가 쓴 댓글</h1>
<hr>

<table class="table table-striped">
	<caption>자유게시판 댓글</caption>
	<tr>
		<th>글번호</th>
		<th>댓글내용</th>
		<th>작성일</th>
	</tr>
	<c:forEach items="${freeBoardReply }" var="freeReply">
		<tr>
			<td>${freeReply.free_board_no }</td>
			<td><a href="/free/view?freeboardno=${freeReply.free_board_no }">${freeReply.free_reply_content }</a>
			</td>
			<td>${freeReply.free_reply_date }</td>
		</tr>
	</c:forEach>
</table>
<table class="table table-striped">
	<caption>커스텀게시판 댓글</caption>
	<tr>
		<th>글번호</th>
		<th>댓글내용</th>
		<th>작성일</th>
	</tr>
	<c:forEach items="${customReply }" var="customReply">
		<tr>
			<td>${customReply.custom_board_no }</td>
			<td><a href="/custom/view?custom_no=${customReply.custom_board_no }">
			${customReply.custom_reply_content }</a></td>
			<td>${customReply.comment_date }</td>
		</tr>
	</c:forEach>
</table>

<table class="table table-striped">
	<caption>오피셜게시판 댓글</caption>
	<tr>
		<th>글번호</th>
		<th>댓글내용</th>
		<th>작성일</th>
	</tr>
	<c:forEach items="${officialReply }" var="officialReply">
		<tr>
			<td>${officialReply.official_board_no }</td>
			<td><a href="/official/view?official_no=${officialReply.official_board_no }">${officialReply.official_reply_content }</a></td>
			<td>${officialReply.official_reply_date }</td>
		</tr>
	</c:forEach>
</table>
<c:import url="/WEB-INF/views/layout/footer.jsp" />
