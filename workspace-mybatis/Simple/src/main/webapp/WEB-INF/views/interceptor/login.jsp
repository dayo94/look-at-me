<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>인터셉터 테스트</h1>
<h3>로그인 페이지</h3>
<hr>


<form action="/interceptor/login" method="post">

<label>아이디<input type="text" name="id" id="id" /></label><br>
<label>비밀번호<input type="text" name="pw" id="pw" /></label><br><br>

<button>로그인</button>
</form>
</body>
</html>