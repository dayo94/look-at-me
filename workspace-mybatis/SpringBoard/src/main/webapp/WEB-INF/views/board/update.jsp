<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">
<!-- 스마트에디터 2 -->
<script type="text/javascript"
	src="/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>


<div class="text-center" style="margin-bottom: 150px;">


	<h1>게시글 수정하기</h1>
	<hr>

	<div>
		<form action="/board/update" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="boardNo"
					value="${board.boardNo }" />

			<table class="table table-bordered">

				<tr>
					<td class="">제목</td>
					<td><input type="text" name="title" value="${board.title }"
						style="width: 100%" /></td>
				</tr>
				<tr>
					<td class="" colspan="2">문의 내용</td>
				</tr>
				<tr>
					<td colspan="10"><textarea name="content" id="content"
							style="width: 100%; height: 500px;">${board.content }</textarea></td>
				</tr>
			</table>

			<!-- 첨부파일 -->
			<div id="beforeFile">
				기존 첨부파일: <a href="/upload/${boardFile.storedName }"
					download="${boardFile.originName }">${boardFile.originName }</a> <span
					id="delFile"
					style="color: red; font-weight: bold; cursor: pointer;">X</span>
			</div>

			<div id="afterFile">
				<input type="file" name="file" />
			</div>

		</form>
	</div>

	<div class="text-center">
		<button type="button" id="btnUpdate" class="btn btn-primary me-md-2">수정</button>
		<button type="button" id="btnCancel" class="btn btn-primary ml-1">취소</button>
	</div>




	<!-- .container -->
</div>

<!-- <textarea>태그에 스마트에디터2 적용하는 스크립트 -->
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "content",
		sSkinURI : "/resources/se2/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
</script>
<script type="text/javascript">
	//<form>태그에 submit이 수행되면 스마트에디터에 작성한 내용을 <textarea>에 반영한다
	function submitContents(elClickedObj) {

		//에디터의 내용을 #content에 반영해준다
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);

		try {
			//<form>태그의 submit을 수행한다
			elClickedObj.form.submit();
		} catch (e) {
		}
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {

		//수정버튼 동작
		$("#btnUpdate").click(function() {
			//스마트 에디터의 내용을 <textarea>에 적용하는 함수를 호출한다
			submitContents($("#btnUpdate"))
			//<form> submit
			$("form").submit();
		});
		//취소버튼 동작
		$("#btnCancel").click(function() {
			history.go(-1);
		});

		//파일 삭제 버튼(X) 처리
		$("#delFile").click(function() {
			$("#beforeFile").toggle();
		})

	});
</script>

<c:import url="/WEB-INF/views/layout/footer.jsp" />