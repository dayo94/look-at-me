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

		//글쓰기 버튼 누르면 이동
		$("#btnWrite").click(function() {
			location.href = "/qna/write";
		});

	});
</script>
</head>
<body>

	<div class="container">

		<h1>또 뭐가 문젠데 새기드라...</h1>
		<hr>

		<table class="table table-striped table-hover table-condensed">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>

			<c:forEach items="${boardList }" var="qna">
				<tr>
					<td>${qna.qna_board_no }</td>
					<td><a href="/qna/view?boardno=${qna.qna_board_no }">
							${qna.qna_board_title } </a></td>
					<td>${qna.qna_board_date }</td>
				</tr>
			</c:forEach>

		</table>

		<div id="btnBox" class="pull-left">
			<button id="btnWrite" class="btn btn-primary">글쓰기</button>
		</div>

		<!-- .container -->
	</div>


</body>
</html>