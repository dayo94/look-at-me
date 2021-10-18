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
				<h1>내가 쓴 댓글</h1>
				<hr>
				<h5>자유게시판 댓글</h5>
				<table class="table table-hover table-condensed">
					<tr>
						<th>글번호</th>
						<th>댓글내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${freeBoardReply }" var="freeReply">
						<tr>
							<td>${freeReply.free_board_no }</td>
							<td><a
								href="/free/view?freeboardno=${freeReply.free_board_no }">${freeReply.free_reply_content }</a>
							</td>
							<td>${freeReply.free_reply_date }</td>
						</tr>
					</c:forEach>
				</table>

				<h5>커스텀게시판 댓글</h5>
				<table class="table table-hover table-condensed">
					<tr>
						<th>글번호</th>
						<th>댓글내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${customReply }" var="customReply">
						<tr>
							<td>${customReply.custom_board_no }</td>
							<td><a
								href="/custom/view?custom_no=${customReply.custom_board_no }">
									${customReply.custom_reply_content }</a></td>
							<td>${customReply.comment_date }</td>
						</tr>
					</c:forEach>
				</table>

				<h5>오피셜게시판 댓글</h5>
				<table class="table table-hover table-condensed">
					<tr>
						<th>글번호</th>
						<th>댓글내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${officialReply }" var="officialReply">
						<tr>
							<td>${officialReply.official_board_no }</td>
							<td><a
								href="/official/view?official_no=${officialReply.official_board_no }">${officialReply.official_reply_content }</a></td>
							<td>${officialReply.official_reply_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/views/layout/footer.jsp" />