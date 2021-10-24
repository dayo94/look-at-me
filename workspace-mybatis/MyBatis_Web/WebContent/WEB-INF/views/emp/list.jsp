<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
table, th, td {
	border: 1px solid #ccc;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}
</style>

</head>
<body>

<h1>사원 목록</h1>
<hr>

<table>
<thead>
<tr>
	<th>사원번호</th>
	<th>사원이름</th>
	<th>직무</th>
	<th>매니저</th>
	<th>입사일</th>
	<th>급여</th>
	<th>상여금</th>
	<th>부서번호</th>
</tr>
</thead>

<tbody>
<c:forEach items="${empList }" var="emp">
<tr>
	<td>${emp.empno }</td>
	<td><a href="/emp/detail?empno=${emp.empno }">${emp.ename }</a></td>
	<td>${emp.job }</td>
	<td>${emp.mgr }</td>
	<td><fmt:formatDate value="${emp.hiredate }" pattern="yyyy-MM-dd" /></td>
	<td>${emp.sal }</td>
	<td>${emp.comm }</td>
	<td>${emp.deptno }</td>
</tr>
</c:forEach>
</tbody>
</table>

</body>
</html>

