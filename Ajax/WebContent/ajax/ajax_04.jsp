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

	var params = "username=" + document.f.username.value + "&content=" + document.f.content.value;
	
	sendRequest( "POST" , "/ajax/ajax_04_ok.jsp" , params , ajaxFromServer);
	
	
}

function ajaxFromServer() {
	console.log("ajaxFromServer() called")
	
	
	
	if( httpRequest.readyState == 4 ) {
		if ( httpRequest.status == 200 ) {
	
			console.log("ajax 정상 응답")
			
			result.innerHTML = httpRequest.responseText;
			
			username.value ="";
			content.value ="";
			
			
			
		} else {
			console.log("ajax 요청/응답 에러")
		}
	}
}



</script>


</head>
<body>

<h1>AJAX 04</h1>
<hr>


<form name="f">

	<input type="text" id="username" />

	<input type="text" id="content" />

	<button type="button" onclick="ajaxToServer();">입력</button>
</form>

<hr>

<div id="result"></div>


</body>
</html>