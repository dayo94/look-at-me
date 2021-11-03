<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

table,tr,td {
	
	border: 1px solid #ccc ;
	border-collapse: collapse;
}


</style>


</head>
<body>

<h1>파일 목록</h1>
<hr>

<table>
<thead>
<tr>
	<th>파일번호</th>
	<th>제목</th>
	<th>파일명</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list }" var="list">
<tr>
	<td><a href="/file/download?fileno=${list.fileno }">${list.fileno }</a></td>
	<td>${list.title }</td>
	<td><a href="/upload/${list.storedName }" download="${list.originName }">${list.originName }</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<br>

<button onclick="location.href = '/file/fileup';">파일 업로드</button><br>




</body>
</html>