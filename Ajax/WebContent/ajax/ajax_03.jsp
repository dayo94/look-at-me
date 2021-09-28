<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/httpRequest.js"></script>

<script type="text/javascript">

function ajaxToServer() {
	console.log("ajaxToServer() called")

	var params = "username=" + document.f.username.value;
	
	
// 	sendRequest( "POST"
// 			, "/ajax/ajax_03_ok.jsp" 
// 			, "username=" + document.f.username.value 
// 			, function name() {
		
// 	} );
	sendRequest( "POST" , "/ajax/ajax_03_ok.jsp" , params , ajaxFromServer);
	
	
}

function ajaxFromServer() {
	console.log("ajaxFromServer() called")
	
	
	if( httpRequest.readyState == 4 ) {
		if ( httpRequest.status == 200 ) {
			console.log("ajax 정상 응답")
			
			result.innerHTML = httpRequest.responseText;
		} else {
			console.log("ajax 요청/응답 에러")
		}
	}
}




// 폼태그안에잇는인풋이 하나면 자동으로 키이벤트 처리가 들어가서 서브밋이 된다 버튼이 없어도
// 많은 어려움을 겪으니까 알아둬야한다
// 기본으로 들어간 이벤트
// 강제로 자바스크립트코드로 이벤트를 꺼줘야한다 가로채서



</script>
</head>
<body>


<h1>AJAX 03</h1>
<hr>

<form name="f">

	<input type="text" style="display: none;"/>

	<input type="text" name="username" />

	<button type="button" onclick="ajaxToServer();">입력</button>
</form>

<hr>

<div id="result"></div>


















</body>
</html>