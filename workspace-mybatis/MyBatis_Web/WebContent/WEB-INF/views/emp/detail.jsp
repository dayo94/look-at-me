<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
html {
	font-size: 25px;
}

#container {
	width: 1200px;
	margin: 0 auto;
}

.itembox {
	border: 1px solid #ccc;
	width: 800px;
	margin: 0 auto;
	padding: 10px;
}

.item {
	font-weight: bold;
}

.data {
	color: blue;
}
</style>

</head>
<body>

	<div id="container">

		<h1>사원 상세보기</h1>
		<hr>

		<div class="itembox">
			<span class="item">사번</span> : <span class="data">${emp.empno }</span>
		</div>
		<div class="itembox">
			<span class="item">사원이름</span> : <span class="data">${emp.empno }</span>
		</div>
		<div class="itembox">
			<span class="item">직무</span> : <span class="data">${emp.job }</span>
		</div>
		<div class="itembox">
			<span class="item">매니저</span> : <span class="data">${emp.mgr }</span>
		</div>
		<div class="itembox">
			<span class="item">입사날짜</span> : <span class="data">${emp.hiredate }</span>
		</div>
		<div class="itembox">
			<span class="item">급여</span> : <span class="data">${emp.sal }</span>
		</div>
		<div class="itembox">
			<span class="item">상여금</span> : <span class="data">${emp.comm }</span>
		</div>
		<div class="itembox">
			<span class="item">부서번호</span> : <span class="data">${emp.deptno }</span>
		</div>

	</div>

</body>
</html>

