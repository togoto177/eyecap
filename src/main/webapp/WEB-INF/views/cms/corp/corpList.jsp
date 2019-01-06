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
			
			var totalData = $("#totalCnt").val();    // 총 데이터 수
		    var dataPerPage = 10;    // 한 페이지에 나타낼 데이터 수
		    var pageCount = 5;        // 한 화면에 나타낼 페이지 수
		    function paging(totalData, dataPerPage, pageCount, currentPage){
		    	var startPage = $('#startPageList').val(); //현재 페이지
		        console.log("currentPage : " + startPage);
		        
		        var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수
		        var pageGroup = Math.ceil(startPage/pageCount);    // 페이지 그룹

		        console.log("pageGroup : " + pageGroup);
		        
		        var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
		        if(last > totalPage)
		            last = totalPage;
		        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
		        var next = last+1;
		        var prev = first-1;
		        
		        console.log("last : " + last);
		        console.log("first : " + first);
		        console.log("next : " + next);
		        console.log("prev : " + prev);
		 
		        var pingingView = $("#paging");
		        
		        var html = "";
		        
		        if(prev > 0)
		            html += '<li class="portCount1">'+
		            '<a href="#" name="page_move" id="prev" start_page="'+prev+'">' +
		            '<img alt="왼쪽" style="cursor:pointer;" src="resources/mainImg/download_board_arrow1.png">'+
		            '</a>'+
		            '</li>' ;
		        
		        for(var i=first; i <= last; i++){
		            html += '<li><a href="#" id="'+i+'" name="page_move" start_page="'+i+'">'+ i +'</a></li>';
		            
		        }
		        
		        if(last < totalPage)
		            html += '<li class="portCount2">'+
		            '<a href="#" name="page_move" id="next" start_page="'+next+'">' + 
		    		'<img alt="오른쪽" style="cursor:pointer;" src="resources/mainImg/download_board_arrow1.png">' +
		    		'</a>' +
		    		'</li>';
		        
		        $("#paging").html(html);    // 페이지 목록 생성
		        $("#paging a").css("color", "black");
		        $("#paging a#" + startPage).css({"text-decoration":"none", 
		                                           "color":"red", 
		                                           "font-weight":"bold"});    // 현재 페이지 표시
		                                           
		        $("#paging a").click(function(){
		            
		            var item = $(this);
		            
		            var id = item.attr("id");
		            var selectedPage = item.text();
		            
		            if(id == "next")    selectedPage = next;
		            if(id == "prev")    selectedPage = prev;
		            
		            paging(totalData, dataPerPage, pageCount, selectedPage);
		        });
		                                           
		                                           
		                                           
		    }
		    
		    $(document).ready(function(){        
		        paging(totalData, dataPerPage, pageCount, 1);
		    });
		    
		  //페이지 번호 클릭시 이동
			$(document).on("click","a[name='page_move']",
					function() {
						var visiblePages = 10;//리스트 보여줄 페이지
						
						$('#startPage').val($(this).attr("start_page"));//보고 싶은 페이지
						$('#visiblePages').val(visiblePages);
						document.board_form.submit();
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
	<input type="hidden" id="startPageList" name="startPageList" value="${startPage}">
	<input type="hidden" id="totalPage" name="totalPage" value="${totalPage}">
	<input type="hidden" id="totalCnt" name="totalCnt" value="${totalCnt}">
	<form name="board_form"  method="get">
	<input type="hidden" id="startPage" name="startPage" value="">
	<input type="hidden" id="visiblePages" name="visiblePages" value="">
	<input type="hidden" id="board_division" name="board_division" value="corp" />
	<div align="center">
	<input type="text" class="searchForm" id="sch_value" name="sch_value" value="${sch_value}" />
	<input type="button" value="검색" style="cursor:pointer;" id="searchBtn">
	<input type="button" id="insert_view" value="업체추가" />
	<input type="hidden" value="corp_name" name="sch_type" />
	</div>
	</form>
	<div class="portTable">
		<table>
			<colgroup>
					<col style="width: 100%" />
			</colgroup>
			<tr class="portTh">
				<td>회사명 / 국가</td>
			</tr>
			<c:forEach var="corp_list" items="${corp_list}"  varStatus="status">
			<tr>
				<td>${corp_list.corp_name} / ${corp_list.corp_country} <input type="button" id="corp_over_btn${corp_list.corp_seq}" value="+" onclick="corp_over('${corp_list.corp_seq}');"> </td>			
			</tr>
			<tr id="over${corp_list.corp_seq}" style="display: none;">
				<td>
				회사명 : ${corp_list.corp_name}
				<br/>사업자번호 : ${corp_list.corp_no}
				<br/>국가 : ${corp_list.corp_country}
				<br/>ID : ${corp_list.corp_id}
				<br/>구분 : ${corp_list.corp_division}
				<br/>담당자 : ${corp_list.corp_manager}
				<br/>연락처 : ${corp_list.corp_contact}
				<br/>비고 : ${corp_list.corp_content}
				<br/></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div class="portCount">
	<ul id="paging">
	</ul>
	</div>
</div>
	
</body>
</html>