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
			<!-- ******************************
            
                페이지 별로 컨텐츠 내용 넣는 영역 ^^ 
                컨텐츠 넣는 영역이야~ 쪽지함이면 쪽지 리스트~ 문의하기면 문의하기 폼 영역 이런거
            
            ***********************************-->
			<div class="container">
				<h1>내가 쓴 글</h1>
				<hr>
				<h5>커스텀게시판</h5>
				<table class="table table-hover table-condensed">
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>추천수</th>
					</tr>

					<c:forEach items="${customBoardList }" var="custom">
						<tr>
							<td>${custom.custom_board_no }</td>
							<td><a
								href="/custom/view?custom_no=${custom.custom_board_no }">${custom.custom_board_title }</a></td>
							<td>${custom.custom_board_date }</td>
							<td>${custom.custom_board_hit }</td>
							<td>${custom.custom_board_vote }</td>
						</tr>
					</c:forEach>
				</table>
				<h5>자유게시판</h5>
				<table class="table table-hover table-condensed">
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>추천수</th>
					</tr>
					<c:forEach items="${freeBoardList }" var="free">
						<tr>
							<td>${free.free_board_no }</td>
							<td><a href="/free/view?freeboardno=${free.free_board_no }">${free.free_board_title }</a></td>
							<td>${free.free_board_date }</td>
							<td>${free.free_board_hit }</td>
							<td>${free.free_board_vote }</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/views/layout/footer.jsp" />