<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
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


<style>
* {
	text-decoration: none;
}

ul {
	list-style: none;
	padding: 0;
}

.nav {
	background-color: #eeeeee;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.nav ul {
	display: flex;
	align-items: center;
}

.nav ul img {
	margin-right: 10px;
	width: 25px;
	height: 25px;
	border-radius: 50%;
}

span {
	font-size: 50px;
}

.profileWrap {
	width: calc(100% - 200px);
	height: 600px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.profileWrap img {
	border-radius: 50%;
	width: 300px;
	height: 300px;
}
</style>
</head>
<body>
	<div>
		<div class="nav">
			<h2>마이페이지</h2>
			<ul>
				<li><img
					src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20211001_182%2F1633066482259uo9kQ_JPEG%2F34202317086291954_1790555242.jpg&type=sc960_832"
					alt="관리자" /></li>
				<li><strong>관리자</strong> <br>
					<button onclick='location.href="/logout";'>로그아웃</button></li>
			</ul>
		</div>

		<div class="content">

			<h1>
				<a href="/qna/admin">문의 내역 보기</a>


			</h1>

			<div class="profileWrap">

				<img
					src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20211001_182%2F1633066482259uo9kQ_JPEG%2F34202317086291954_1790555242.jpg&type=sc960_832"
					alt="관리자" />
				<p>
					<span>관리자 나야 나~!~!</span>
				</p>
			</div>
		</div>
	</div>
</body>
</html>