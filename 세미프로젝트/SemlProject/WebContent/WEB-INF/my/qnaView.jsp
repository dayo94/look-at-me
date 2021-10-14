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



<script type="text/javascript">
$(document).ready(function() {
	//목록버튼 동작
	$("#btnList").click(function() {
		$(location).attr("href", "/qna/list");
	});
	
	//수정버튼 동작
	$("#btnUpdate").click(function() {
		$(location).attr("href", "/qna/update?boardno=${viewBoard.qna_board_no }");
	});

	//삭제버튼 동작
	$("#btnDelete").click(function() {
		if( confirm("게시글을 삭제하시겠습니까?") ) {
			$(location).attr("href", "/qna/delete?boardno=${viewBoard.qna_board_no }");
		}
	});
});
</script>

</head>
<body>

<div class="container">

<h1>문의 글 보기</h1>
<hr>

<table class="table table-bordered">
<tr>
<td class="info">글번호</td><td colspan="3">${viewBoard.qna_board_no }</td>
</tr>

<tr>
<td class="info">제목</td><td colspan="3">${viewBoard.qna_board_title }</td>
</tr>

<!-- <tr> -->
<%-- <td class="info">이메일</td><td>${viewBoard.userid }</td> --%>
<%-- <td class="info">닉네임</td><td>${nick }</td> --%>
<!-- </tr> -->


<tr><td class="info"  colspan="4">본문</td></tr>

<tr><td colspan="4">${viewBoard.qna_board_content }</td></tr>

<tr>
<td class="info">작성일</td><td>${viewBoard.qna_board_date }</td>
</tr>

</table>

<!-- 첨부파일 -->
<div>
<c:if test="${not empty boardFile }">
<a href="/upload/${boardFile.stored_file_name }" download="${boardFile.original_file_name }">${boardFile.original_file_name }</a>
</c:if>
</div>

<div class="text-center">	
	<button id="btnList" class="btn btn-primary">목록</button>
	<button id="btnUpdate" class="btn btn-info">수정</button>
	<button id="btnDelete" class="btn btn-danger">삭제</button>
</div>

</div>






</body>
</html>