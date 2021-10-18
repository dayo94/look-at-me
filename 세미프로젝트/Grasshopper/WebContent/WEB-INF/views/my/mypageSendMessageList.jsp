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
				<h1>내가 보낸 쪽지함</h1>
				<hr>
				<table class="table table-condensed">
					<tr>
						<th>받은 사람</th>
						<th>내용</th>
						<th>읽음표시</th>
						<th>날짜</th>
					</tr>
					<c:forEach items="${message }" var="message">
						<c:forEach items="${userinfo }" var="userinfo">
							<c:if test="${userinfo.user_no eq message.msg_rec }">
								<tr>
									<td>${userinfo.user_nickname }</td>
									<td>${message.msg_content }</td>
									<c:if test="${message.msg_check eq 'n' }">
										<td style="color: #dc3545;">읽지않음</td>
									</c:if>
									<c:if test="${message.msg_check eq 'y' }">
										<td style="color: #138458;">읽음</td>
									</c:if>
									<td>${message.send_date }</td>
								</tr>
							</c:if>
						</c:forEach>
					</c:forEach>
				</table>
			</div>
		</div>

	</div>
</div>
<c:import url="/WEB-INF/views/layout/footer.jsp" />
