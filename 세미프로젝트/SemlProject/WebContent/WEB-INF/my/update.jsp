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

		//취소버튼 동작
		$("#btnCancel").click(function() {
			history.go(-1);
		});

	});
</script>
<style type="text/css">
form {
	width: 800px;
	margin: 0 auto;
}

#btn {
	text-align: center;
}
</style>
</head>
<body>



	<form action="/update" method="post" enctype="multipart/form-data" class="form-horizontal">
		<input type="hidden" name="user_no" value="${user_info.user_no }" />

		<table>
			<tr>
				<td>이메일</td>
				<td>${user_info.user_email }</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="user_password" value=""
					id="passwordCheck" /></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="user_nickname"
					value="${user_info.user_nickname }" /></td>
			</tr>
			<tr>
				<td>포인트</td>
				<td>${user_info.user_point }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${user_info.user_name }</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>${user_info.user_birth }</td>
			</tr>

		</table>

		<div>
			<div id="beforeFile">
				기존 첨부파일: <a href="/upload/${attachmentFile.profile_name}"
					download="${attachmentFile.profile_name }">${attachmentFile.profile_name }</a>
			</div>

			<div id="afterFile">
				새 첨부파일: <input type="file" name="file" />
			</div>
		</div>

		<button>수정</button>
		<button type="button" id="btnCancel">취소</button>

	</form>


<!-- <form action="/update" method="post" enctype="multipart/form-data" class="form-horizontal" > -->
<%-- 		<input type="hidden" name="user_no" value="${user_info.user_no }" /> --%>
<!--   <div class="form-group"> -->
<!--     <label class="col-sm-2 control-label">Email</label> -->
<!--     <div class="col-sm-10"> -->
<%--       <p class="form-control-static">${user_info.user_email }</p> --%>
<!--     </div> -->
<!--   </div> -->
<!--   <div class="form-group"> -->
<!--     <label for="inputPassword" class="col-sm-2 control-label">Password</label> -->
<!--     <div class="col-sm-10"> -->
<!--       <input type="password" class="form-control" id="inputPassword" placeholder="Password"> -->
<!--     </div> -->
<!--   </div> -->
<!--   <div class="form-group"> -->
<!--     <label for="inputNickname" class="col-sm-2 control-label">Nickname</label> -->
<!--     <div class="col-sm-10"> -->
<%--       <input type="text" class="form-control" id="inputNickname" value="${user_info.user_nickname }" > --%>
<!--     </div> -->
<!--   </div> -->
<!--   <div class="form-group"> -->
<!--     <label class="col-sm-2 control-label">Point</label> -->
<!--     <div class="col-sm-10"> -->
<%--       <p class="form-control-static">${user_info.user_point }</p> --%>
<!--     </div> -->
<!--   </div> -->
<!--   <div class="form-group"> -->
<!--     <label class="col-sm-2 control-label">Name</label> -->
<!--     <div class="col-sm-10"> -->
<%--       <p class="form-control-static">${user_info.user_name }</p> --%>
<!--     </div> -->
<!--   </div> -->
<!--   <div class="form-group"> -->
<!--     <label class="col-sm-2 control-label">Birth</label> -->
<!--     <div class="col-sm-10"> -->
<%--       <p class="form-control-static">${user_info.user_birth }</p> --%>
<!--     </div> -->
<!--   </div> -->


<!-- 			<div id="beforeFile"> -->
<%-- 				기존 첨부파일: <a href="/upload/${attachmentFile.profile_name}" --%>
<%-- 					download="${attachmentFile.profile_name }">${attachmentFile.profile_name }</a> --%>
<!-- 			</div> -->

<!-- 			<div id="afterFile"> -->
<!-- 				새 첨부파일: <input type="file" name="file" /> -->
<!-- 			</div> -->
<!-- 	<div id="btn"> -->
<!-- 		<button>수정</button> -->
<!-- 		<button type="button" id="btnCancel">취소</button> -->
<!-- 	</div> -->
<!-- </form> -->

</body>
</html>