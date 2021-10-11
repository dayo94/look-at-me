<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

#box1 {

	width: 100%;
	height: 10%;
}

#profile, #logout  {
	display:inline-block;
 	float: right;
 
 	
}

h1 {
	display: inline-block;
}



#box2 {

	width: 20%;
	margin-right: 0; 
	display: inline-block;

}

#box3 {
	display: inline-block;
}

</style>


</head>
<body>







<div id="container">


<div id="box1">

<h1>마이페이지</h1>


<c:if test="${empty login or not login }">
	<strong>로그인이 필요합니다</strong><br>
	<button onclick='location.href="/login";'>로그인</button>
</c:if>

<c:if test="${not empty login and login }">
	<strong>${user_info.user_nickname}님, 환영합니다</strong><br>
	<button onclick='location.href="/member/logout";'>로그아웃</button>
</c:if>



<img id="profile" alt="프로필사진" src="">




</div>
<div id="box2">

<h3>프로필 설정</h3>
<span><a href="/update">프로필 관리</a></span><br>

<h3>나의 활동</h3>
<span>내가 쓴 게시글</span><br>
<span>내가 쓴 댓글</span>

<h3>활동 포인트 조회</h3>
<span>나의 활동 포인트</span>

<h3>즐겨찾기</h3>
<span>레시피</span><br>
<span>게시글</span>

<h3>쪽지 확인</h3>
<span>받은 쪽지 확인</span><br>
<span>보낸 쪽지 확인</span>

<h3>나의 문의 내역</h3>
<span>1:1 문의 내역</span>

<h3>회원 탈퇴</h3>


</div>
<div id="box3">



<div><img id="mainprofile" alt="프로필사진" src=""></div>
<button>내 정보 수정하기</button>



</div>
















</div>








</body>
</html>