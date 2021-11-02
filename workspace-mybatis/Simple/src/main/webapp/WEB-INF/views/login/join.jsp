<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입</h1>
<hr>


<form action="/login/join" method="post">

<label>아이디<input type="text" name="id" id="id" /></label><br>
<label>비밀번호<input type="text" name="pw" id="pw" /></label><br>
<label>이메일<input type="text" name="email" id="email" /></label><br>
<label>전화번호<input type="text" name="phone" id="phone" /></label><br><br>
<button>가입</button>

</form>


</body>
</html>