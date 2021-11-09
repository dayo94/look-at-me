<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/views/layout/header.jsp" />



<h1>게시글 상세보기</h1>
<hr>

<table class="table table-bordered">
	<tr>
		<td>닉네임</td>
		<td colspan="3">${board.writerNick }</td>
	</tr>

	<tr>
		<td>글번호</td>
		<td colspan="3">${board.boardNo }</td>
	</tr>
	<tr>
		<td>조회수</td>
		<td colspan="3">${board.hit }</td>
	</tr>
	<tr>
		<td>작성일</td>
		<td colspan="3"><fmt:formatDate value="${board.writeDate }"
				pattern="yy-MM-dd HH:mm:ss" /></td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="3">${board.title }</td>
	</tr>
	<tr>
		<td colspan="4">본문</td>
	<tr>
		<td colspan="4" style="height: 350px">${board.content }</td>
	</tr>
	</tr>
</table>

<!-- 첨부파일 -->
<!-- <div> -->
<%-- 	<c:if test="${not empty boardFile }"> --%>
<%-- 		<a href="/upload/${boardFile.storedName}" --%>
<%-- 			download="${boardFile.originName }">${boardFile.originName }</a> --%>
<%-- 	</c:if> --%>
<!-- </div> -->

<div>
	<a href="/download?boardno=${boardFile.boardNo}">${boardFile.originName }</a>
</div>



<div class="text-center">
	<button onclick="location.href = '/board/list';"
		class="btn btn-default">목록</button>
	<c:if test="${id eq board.writerId }">
		<button
			onclick="location.href = '/board/update?boardno=${board.boardNo }';"
			class="btn btn-primary">수정</button>
		<button
			onclick="location.href = '/board/delete?boardno=${board.boardNo }';"
			class="btn btn-danger">삭제</button>
	</c:if>
</div>






</div>
<!-- .container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />


