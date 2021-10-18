<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/WEB-INF/views/layout/mypagehd.jsp" />
<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">
<div style="min-height: 90vh;">
	<div class="nav1">
		<h1>
			<a href="/mypage/main">마이페이지</a>
		</h1>
		<ul>
			<li><c:if test="${empty attachmentFile.profile_name }">
					<img src="/resources/img/기본프로필.jpg" />
				</c:if> <c:if test="${not empty attachmentFile.profile_name }">
					<img src="/upload/${attachmentFile.profile_name }" alt="프로필사진" />
				</c:if></li>
			<li><strong>${user_info.user_nickname }님, 환영합니다</strong></li>
		</ul>
	</div>

	<div class="content">
		<!-- 여기가 메뉴 영역이ㅇ여요 -->
		<%@ include file="../layout/mypagenav.jsp"%>
		<div class="contentAreaWrap">

			<div class="container">

				<h1>내가 쓴 문의 내역</h1>
				<hr>

				<table class="table table-hover table-condensed">
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

				<div id="btnBox" class="pull-left" style="text-align: right;">
					<button id="btnWrite" class="btn btn-primary">글쓰기</button>
				</div>

				<!-- .container -->
			</div>
		</div>


		<script type="text/javascript">
			$(document).ready(function() {

				//글쓰기 버튼 누르면 이동
				$("#btnWrite").click(function() {
					location.href = "/qna/write";
				});

			});
		</script>
	</div>
</div>
<c:import url="/WEB-INF/views/layout/footer.jsp" />
