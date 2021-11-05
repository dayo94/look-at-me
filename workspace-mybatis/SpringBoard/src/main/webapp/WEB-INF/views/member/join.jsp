<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<h1>회원가입</h1>
<hr>

<form action="/member/join" method="post">

<label>아이디<input type="text" name="id" id="id" /></label><br>
<label>비밀번호<input type="text" name="pw" id="pw" /></label><br>
<label>닉네임<input type="text" name="nick" id="nick" /></label><br><br>
<button>가입</button>

</form>







</body>
</html>