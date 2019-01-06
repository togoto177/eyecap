<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="../cms_include.jsp"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>interLink&amp;C</title>
<script type="text/javascript">
$(document).ready(function() {	
$(document).on("click","#save",function(e){
	
	if (confirm("글을 등록 하시겠습니까?") == true){    //확인
			// 제목 유효성 검사
			/* if($("#board_title").val() == '' || $("#board_title").val() == null ){
			    alert("제목을 입력해주세요.");
			    return false;
			}
			if($("#board_title").val().length > 41){
			    alert("제목은 20자이상 입력할 수 없습니다.");
			    return false;
			} */
	// id가 smarteditor인 textarea에 에디터에서 대입  
	// 이부분에 에디터 validation 검증
	$("#board_form").submit(); 
	}else{   
	    return;
	}

  });
});
</script>
</head>
<body>
<%@ include file="../cms_header.jsp"%>
<%@ include file="../cms_left_bar.jsp"%>
<div class="portfolioBody">
	<div class="portTitle">
		<img alt="포트폴리오 이미지" src="resources/mainImg/diagonal_download.png">
		<a>업체관리</a>
	</div>
	
	<div class="portTitleView">
		<a>등록</a>
	</div>
	<form id="board_form" name="board_form" method="post" action="boardWriteAction.do" enctype="multipart/form-data">
	<input type="hidden" id="board_division" name="board_division" value="corp"/>
	<div class="portBox">
		<table>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="회사명을 입력하세요." name="corp_name" id="corp_name" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="사업자번호을 입력하세요." name="corp_no" id="corp_no" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="국가를 입력하세요." name="corp_country" id="corp_country" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="ID를 입력하세요." name="corp_id" id="corp_id" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="구분을 입력하세요." name="corp_division" id="corp_division" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="담당자을 입력하세요." name="corp_manager" id="corp_manager" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="연락처을 입력하세요." name="corp_contact" id="corp_contact" /></td>
			</tr>
			<tr>
				<td class="oneTitle"><input type="text" placeholder="비고를 입력하세요." name="corp_etc" id="corp_etc" /></td>
			</tr>
		</table>
	</div>
	</form>
	<div class="btnbox">
		<div class="btnDiv1">
			<a class="btn1" id="save" style="cursor:pointer;">SAVE</a>
		</div>
		<div class="btnDiv2">
			<a class="btn1" href="/corpList.do?board_division=corp">CANCEL</a>
		</div>
	</div>
</div>
</body>
</html>