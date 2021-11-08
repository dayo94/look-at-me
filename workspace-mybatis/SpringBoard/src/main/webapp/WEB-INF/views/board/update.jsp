<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/views/layout/header.jsp" />



<h1>수정</h1>
<hr>

<table class="table table-bordered">
	<tr>
		<td>닉네임</td>
		<td>${board.writerNick }</td>
	</tr>


	<tr>
		<td>글번호</td>
		<td>${board.boardNo }</td>
	</tr>

	<tr>
		<td>제목</td>
		<td>${board.title }</td>
	</tr>


	<tr>
		<td>본문</td>
		<td>${board.content }</td>
	</tr>

	<tr>
		<td>조회수</td>
		<td>${board.hit }</td>
	</tr>

	<tr>
		<td>작성일</td>
		<td><fmt:formatDate value="${board.writeDate }"
				pattern="yy-MM-dd HH:mm:ss" /></td>
	</tr>

</table>

<!-- 첨부파일 -->
<div>
	<c:if test="${not empty boardFile }">
		<a href="/upload/${boardFile.storedName}"
			download="${boardFile.originName }">${boardFile.originName }</a>
	</c:if>
</div>



<div class="text-center" style="margin-bottom: 150px;">
	<button onclick="location.href = '/board/update';">확인</button>
</div>



</div>
<!-- .container -->

<c:import url="/WEB-INF/views/layout/footer.jsp" />


