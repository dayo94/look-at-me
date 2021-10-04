<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<div class="container">
    

<h1>board 상세보기</h1>
<hr>
<table class="table table-striped table-hover table-condensed">
<tr>
	<th>글번호</th>
	<th>제목</th>
	<th>아이디</th>
	<th>본문</th>
	<th>조회수</th>
	<th>작성일</th>
</tr>

<tr>
	<td>${board.boardno }</td>
	<td>${board.title }</td>
	<td>${board.userid }</td>
	<td>${board.content }</td>
	<td>${board.hit }</td>
	<td>${board.writeDate }</td>
</tr>

</table>

</div>

<c:import url="/WEB-INF/views/layout/paging.jsp" />

<c:import url="/WEB-INF/views/layout/footer.jsp" />

<!--  + View : /WebContent/WEB-INF/views/board/view.jsp -->
<!--   - 게시글 상세 내용 보여주기 -->
<!--   - 글번호, 제목, 아이디, 닉네임(추후추가), 본문, 조회수, 추천수(추후추가), 작성일 -->

<!--   - 목록, 수정, 삭제 버튼 만들기 -->
<!--    (목록만 구현, 나머지는 추후 추가 구현함) -->
