<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	
	$("#ajax").click(function() {
		console.log("#ajax clicked")
		
	
		$.ajax({
			type: "get" //요청메소드
			, url: "/ajax/test04_ok" //요청URL
			, data: { } //요청 파라미터
			,dataType: "json" //응답받을 데이터의 형식
			, success: function( res ) { //성공 시 콜백함수
				console.log("AJAX성공")
			
				console.log( res )
				console.log( res.rd )
				
				//필요한 데이터 이용
				console.log( res.rd.data1 )
				console.log( res.rd.data2 )
				console.log( res.rd.data3 )
							
			
			
			}
			, error: function() { //실패 시 콜백함수
				console.log("AJAX실패")
				
			}
		})
	})
	
	
})


</script>

</head>
<body>


<h1>AJAX 테스트 04</h1>
<h3>JoinView를 이용한 JSON Text 응답</h3>
<hr>

<button id="ajax">AJAX 요청 보내기</button>


</body>
</html>