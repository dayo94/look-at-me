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

		//탈퇴버튼 동작
		$("#btnUnregister").click(function() {
			$("form").submit();
		});

		//취소버튼 동작
		$("#btnCancel").click(function() {
			history.go(-1);
		});

	});
</script>

<style type="text/css">
form {
	width: 400px;
	margin: 0 auto;
}

button {
	margin: 0 auto;
}

#box {
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

h1 {
	font-size: xx-large;
	color: red;
}
</style>


</head>
<body>




	<div id="box">
		<h1>정말.......?</h1>
	</div>

	<div>
		<form action="/unregister" method="post">

			<div>
				<label for="password">패스워드</label> <input type="text" id="password"
					name="password" />
			</div>

			<div>
				<button type="button" id="btnUnregister">탈퇴</button>
				<button type="button" id="btnCancel">취소</button>
			</div>
		</form>
	</div>











</body>
</html>