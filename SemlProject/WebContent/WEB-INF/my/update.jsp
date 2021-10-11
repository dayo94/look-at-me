<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {


	
});


</script>

</head>
<body>

<table>
<tr>
	<th>이메일</th>
	<th>비밀번호</th>
	<th>닉네임</th>
	<th>포인트</th>
	<th>이름</th>
	<th>생년월일</th>
</tr>

<tr>
	<td>${user_info.user_email }	</td>
	<td>${user_info.user_password }</td>
	<td>${user_info.user_nickname }</td>
	<td>${user_info.user_point }</td>
	<td>${user_info.user_name }</td>
	<td>${user_info.user_birth }</td>
</tr>

</table>

<form action="/update" method="post">
<input type="hidden" name="user_no" value="${user_info.user_no }" />

<table>
<tr><td>이메일</td><td>${user_info.user_email }</td></tr>
<tr>
	<td>비밀번호</td>
	<td><input type="text" name="user_password" value="${user_info.user_password }"/></td>
</tr>
<tr>
	<td>닉네임</td>
	<td><input type="text" name="user_nickname" value="${user_info.user_nickname }"/></td>
</tr>
<tr><td>포인트</td><td>${user_info.user_point }</td></tr>
<tr><td>이름</td><td>${user_info.user_name }</td></tr>
<tr><td>생년월일</td><td>${user_info.user_birth }</td></tr>

</table>
<button>수정</button>

</form>




<!-- <input type="file" id="profile" accept="img/*" required multiple> -->
<!-- <button id="btn">사진첨부</button> -->


<!-- <h3>이미지 미리보기</h3> -->
<!-- <div id="imagePreview"> -->
<!-- 	<img id="img" /> -->
<!-- </div> -->

</body>
</html>