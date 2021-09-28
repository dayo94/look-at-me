<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

//ajax통신 객체인 XMLH 객체를 생성하는 함수 (크로스브라우장)
function createXHR() {
	
	var xmlReq = null;
	
	if( window.XMLHttpRequest ) { //내장객체가 존재할때
		
		
		xmlReq = new XMLHttpRequest();
		
	} else if( window.ActiveXObject ) {
		
		try {
			xmlReq = new ActiveXObject("Msxml2.XMLTHHP");
			
		} catch (e1) {

			try {

				xmlReq = new ActiveXObject("Microsoft.XMLTHHP");
			
			} catch (e2) {
			
				console.log("AJAX객체 생성 실패")							
			
			}
			
			
		}
		
		
		
	}
	
	
	
	
	
	
	return xmlReq;
}




</script>


<script type="text/javascript">



var xmlHttp = null;

function calc() {
	console.log("calc called")
	
	xmlHttp = new createXHR();
	
	
	var n1 = num1.value;
	var n2 = num2.value;
	var op = oper.value;
	
	var url = "/ajax/ajax_02_ok.jsp"
	
	var method = "POST"
	
	var params = "num1="+n1+"&num2="+n2+"&oper="+op
	
	xmlHttp.onreadystatechange = callback;
	
	
	
	
	
	//--- AJAX요청 준비 ---
// 	xmlHttp.open(method, url + "?" + params) //GET
	xmlHttp.open(method, url) //POST
	
	//요청 데이터 형식(인코딩) 설정
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	
	//--- AJAX요청 보내기 ---
// 	xmlHttp.send(null) //GET
	xmlHttp.send(params) //POST


	
	
}



function callback() {
	console.log("callback called")
	
	if( xmlHttp.readyState == 4 ) {
		console.log("응답받기완료")
		
		if( xmlHttp.status == 200 ) {
			console.log("정상응답")
			
			console.log(xmlHttp.responseText)

			resultLayout.innerHTML = xmlHttp.responseText;
			
			//입력창 초기화
			num1.value ="";
			num2.value ="";
			oper.value ="add";
			
			
		} else {
			console.log("error", xmlHttp.status, xmlHttp.statusText)
			
		}
		
	}
}






</script>





</head>
<body>


<h1>계산기 02</h1>
<h3>AJAX HTTP 통신 (비동기식)</h3>


<input type="text" id="num1">
<select id="oper">
	<option value="add">더하기</option>
	<option value="sub">빼기</option>
	<option value="mul">곱하기</option>
	<option value="div">나누기</option>
</select><br>

<input type="text" id="num2">
<button onclick="calc();"> = </button>

<hr>
<!-- ajax 요청의 응답을 적용할 DiV -->
<div id="resultLayout"></div>

</body>
</html>