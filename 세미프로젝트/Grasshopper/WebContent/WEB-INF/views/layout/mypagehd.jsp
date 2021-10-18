<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


<style type="text/css">
* {
	font-family: 'Noto Sans KR', sans-serif !important;
	list-style: none;
	text-decoration: none !important;
	border-collapse: collapse;
	margin: 0px;
	padding: 0px;
	color: #000;
}
div {
	border: hidden !important;
}
h1 {
	font-size: 48px;
	font-weight: 100;
	}
.contents1 {
	font-size: 20px;
	font-weight: lighter;
}
.contents3 {
	font-size: 14px;
	font-weight: 100;
}
.contents_bold {
	font-size: 18px;
	font-weight: bold;
}
.result {
	font-size: 24px;
}
.intro_bg {
	display: flex;
	width: 100%;
	height: 753px;
}
.video-area {
	display: block;
	margin: auto;
}
.intro_bg video {
	margin: auto;
}
.header {
	top: 0;
	display: flex;
	width: 100%;
	margin: auto;
	height: 86px;
	background: rgba(0, 0, 0, 0.4);
	position: fixed;
	z-index: 3;
	}
.header_logo {
	margin-top: -10px;
	margin-left: 95px;
	position: absolute;
}
.login {
	color: #fff;
}
.login>form>button {
	font-size: 16px;
	margin-top: 25px;
	margin-left: 110px;
	padding: 5px;
	border-radius: 1;
	}
.join {
	color: #fff;
}
.join>button {
	color: #fff;
	font-size: 16px;
	margin-top: 25px;
	padding: 5px;
	border-radius: 1;
}
.search_area {
	width: 600px;
	height: 50px;
	background: rgba(255, 255, 255, 0.9);
	border-radius: 8px;
	position: absolute;
	left: 50%;
	top: 14%;
	transform: translateX(-50%);
}
.search_area>form>input {
	border: none;
	width: 550px;
	height: 50px;
	background: rgba(0, 0, 0, 0.0);
	color: black;
	padding-left: 10px;
}
.search_area>form>span {
	width: 50px;
	color: rgba(100, 100, 100, 0.8);
	font-weight: bold;
		cursor: pointer;
}
.nav {
	display: flex;
	justify-content: flex-end;
	line-height: 86px;
	width: calc(1280px - 400px);
	padding-left: 0px;
	margin-left: 310px;
	}
.nav>li:not(:first-child) {
	margin-left: 84px;
	}
.nav>li:first-child {
	
}
.nav>li>a {
	color: #fff;
	}
.nav>li>a:hover {
	color: orange;
}
footer {
	display: flex;
	background: #1f1f1f;
	padding: 30px;
	}
footer>div:first-child {
	flex: 3;
	text-align: center;
	color: #fff;
	margin-top: -7px;
}
footer>div:last-child {
	flex: 9;
	color: #fff;
}
footer>div:first-child>img {
	position: absolute;
	left: 120px;
	margin-top: -18px;
	width: 100px;
}
footer>.footer_content {
	margin-left: 270px;
}
.navbar_togleBtn {
	display: none;
	position: fixed;
		left: 110px;
}
.navbar_togleBtn>button {
	margin: 25px;
	padding: 5px;
	font-size: 16px;
	border-radius: 1;
	}
/* .mypage > button { */
/* 	color: #fff; */
/* 	font-size: 16px; */
/* 	margin-top: 25px; */
/* 	margin-left: 110px; */
/* 	padding: 5px; */
/* 	border-radius: 1; */
/* } */
/* .logout > form > button { */
/* 	color: #fff; */
/* 	font-size: 16px; */
/* 	margin-top: 25px; */
/* 	padding: 5px; */
/* 	border-radius: 1; */
/* } */
@media screen and (max-width: 1450px ) {
	.intro_bg {
		height: 100%;
			}
	.header {
		flex-direction: column;
		align-items: flex-start;
	}
	.header_logo {
		position: fixed;
		margin-left: 20px;
	}
	.nav {
		flex-direction: column;
		align-items: flex-start;
		padding: 0;
		margin: 86px auto;
		text-align: center;
		background: rgba(0, 0, 0, 0.4);
		width: 100%;
		display: none;
	}
	.nav>li {
		text-align: center;
		width: 100%;
		margin: 0 auto;
		display: inline-block;
	}
	.nav>li:not(:first-child) {
		margin-left: 0px;
	}
	.nav>li>a {
		font-size: 15px;
	}
	.login {
		position: fixed;
		right: 91px;
		}
	.login>form {
		padding: 0;
		outline: none;
	}
	.join {
		position: fixed;
		right: 20px;
	}
	.video-area {
		margin-top: 0;
	}
	.navbar_togleBtn {
		display: block;
	}
	.search_area {
		width: 60%;
	}
	.search_area>form>input {
		width: 90%;
		margin: auto;
		margin-top: auto;
	}
		.main_text0 {
		margin-top: 0;
	}
	.service {
		width: 100%;
		margin: 0 auto;
	}
	.service:last-child {
		margin-bottom: 50px;
	}
	.nav.active {
		display: flex;
	}
}
.mypage {
	position: fixed;
	right: 91px;
}
.mypage>button {
	margin-top: 25px;
	padding: 5px;
	}
.logout {
	position: fixed;
	right: 20px;
	}
.logout>form>button {
	color: #fff;
	margin-top: 25px;
	padding: 5px;
	}
@media screen and (max-width: 768px ) {
	.search_area {
		position: absolute;
		top: 150px;
	}
	.search_area>form>input {
		width: 80%;
	}
}
</style>

<script type="text/javascript" src="/resources/script/media_query.js"
	defer></script>
</head>
<body>
	<div class="wrap">
		<div class="intro_bg2"
			style="width: 100%; height: 200px; background: black;">
			<div class="search_area">
				<form action="/main/total_search" method="get">
					<input name="search" type="search" placeholder="오늘 뭐 마시지"
						value="${search }" /> <span style="cursor: hand"
						onclick="document.forms[0].submit()">검색</span>
				</form>
			</div>
			<div class="header">
				<div class="header_logo">
					<a href="/main"> <img width=100px;
						src='/resources/img/header_logo2.png' />
					</a>
				</div>
				<ul class="nav">
					<li><a href="/official/main">칵테일 검색</a></li>
					<li><a href="/custom/main">칵테일 제작</a></li>
					<li><a href="/free/list">자유게시판</a></li>
					<li><a href="/shopping/main">쇼핑</a></li>
					<li><a href="/searchbar">어디가서 마실까</a></li>
					<li><a href="/qna/write">문의게시판</a></li>
				</ul>
				<div class="navbar_togleBtn">
					<button class="btn btn-success">MENU</button>
				</div>
				<c:if test="${empty login or not login }">
					<div class="login">
						<form>
							<button type="reset" onclick='location.href="/mypage/main";'
															class="btn btn-info">로그인</button>
						</form>
					</div>
					<div class="join">
						<button type="reset" class="btn btn-warning"
							onclick='location.href="/kh1/logout";'>회원가입</button>
					</div>
				</c:if>
				<c:if test="${login }">
					<div class="mypage">
						<button type="reset" onclick='location.href="/mypage/main";'
							class="btn btn-info">마이페이지</button>
					</div>
					<div class="logout">
						<form>
							<button type="reset" class="btn btn-warning"
								onclick='location.href="/kh1/logout";'>로그아웃</button>
						</form>
					</div>
				</c:if>
			</div>
		</div>
	</div>