<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>


<script type="text/javascript">
$(document).ready(function() {
	//페이지 첫 접속 시 입력창으로 포커스 이동
	$("input").eq(0).focus();
	
	//패스워드 입력 창에서 엔터 입력 시 form submit
	$("input").eq(1).keydown(function(key) {
		if(key.keyCode == 13) {
			$(this).parents("form").submit();
		}
	})

	//로그인 버튼 클릭 시 form submit
	$("#btnLogin").click(function() {
		$(this).parents("form").submit();
	})
	
	//취소 버튼 누르면 뒤로가기
	$("#btnCancel").click(function() {
		history.go(-1);
	})

});
</script>

<style type="text/css">
form {
	width: 400px;
	margin: 0 auto;
}
</style>

<div class="container">

<form action="/login" method="post">
	<div>
		<label for="user_email">이메일</label>
		<input type="text" id="user_email" name="user_email"/>
	</div>
	<div>
		<label for="user_password">패스워드</label>
		<input type="text" id="user_password" name="user_password"/>
	</div>

	<div>
		<button type="button" id="btnLogin">로그인</button>
		<button type="button" id="btnCancel">취소</button>
	</div>
</form>

<!-- .container -->
</div>

