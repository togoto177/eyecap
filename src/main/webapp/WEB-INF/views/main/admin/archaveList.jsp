<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
					<h2 class="text_center">ARCHIVE</h2>
                    <div class="title_red_line"></div>
                    <form name="archave_list"  method="get" id="archave_list">
					<input type="hidden" id="board_division" name="board_division" value="archave" />
					<input type="hidden" id="archaveTotalCnt" name="totalCnt" value="${totalCnt}">
					<input type="hidden" id="archaveTotalPage" name="totalPage" value="${totalPage}">
					<input type="hidden" id="servletPath" name="servletPath" value="${servletPath}">
					<input type="hidden" id="archaveStartPage" name="startPage" value="">
					<input type="hidden" id="archaveVisiblePages" name="visiblePages" value="">
					<input type="hidden" id="archaveStartPageList" name="startPageList" value="${startPage}">
                    <!-- <table class="reveal reveal-top"> -->
                    <div class="archiveTable">
                    <table>
                        <tr>
                            <th scope="col" class="th_line">No</th>
                            <th scope="col" class="th_line">Title</th>
                            <th scope="col" class="th_line">Date</th>
                            <th scope="col">File Download</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        <c:choose>
						<c:when test="${fn:length(archave_list) == 0}">												
							<tr>
								<td colspan="5" align="center">We did not find results.</td>
							</tr>
						</c:when>
						<c:otherwise>
                        <c:forEach var="archave_list" items="${archave_list}"  varStatus="status">
                        <tr>
                        	<c:if test="${archave_list.board_notice == 0}">
                            <td class="notice text_center">
                            <c:set var="startpage" value="${startPage-1}" />
		                    <c:set var="statuscount" value="${status.count }" />
		                    ${totalCnt+1-(startpage*10+statuscount)}
                            </td>
                            </c:if>
                        	
                        	<c:if test="${archave_list.board_notice == 1}">
                            <td class="notice text_center">NOTICE</td>
                            </c:if>
                            
                            <td class="notice_title">${archave_list.board_title}</td>
                            <td>${archave_list.board_register_date}</td>
                            <td class="td_file">
                            <!-- EYECAP_CATALOG_pdf (9.2M) -->
                            <c:set var="split_file" value="${fn:split(archave_list.file_sub_name,'|')}" />
                            <c:set var="split_file_ori" value="${fn:split(archave_list.file_ori_name,'|')}" />
							<c:forEach var="boardlist" items="${split_file}" varStatus="status">
							<c:set var="fileLength" value="${split_file_ori[status.index]}" />
                            <%-- <span class="file_down" id="downFile" idx="${boardlist}"></span> --%>
                            <span class="file_down" id="downFile" idx="${boardlist}"></span>
                            <a style="cursor: pointer;" id="downFile" idx="${boardlist}">
							${fileLength}
							</a>																
							<br/>
							</c:forEach>
                            </td>
                            <td class="td_master">
                            	<c:if test="${sessionScope.ad_id != null}">
                                <a onclick="popAcModify(${archave_list.board_seq});" class="td_modify">Modify</a>
                                <a id="aDelete" class="td_delete" idx="${archave_list.board_seq}*${archave_list.board_division}" >Delete</a>
                                </c:if>
                            </td>
                        </tr>
                        </c:forEach>
                        </c:otherwise>
                        </c:choose>
                    </table>
                    </div>
                      
                   <!-- add -->
                    <!-- <div id="btn_master_write" class="reveal action"> -->
                    <div id="btn_master_write">
                    	<c:if test="${sessionScope.ad_id != null}">
                        <a style="cursor: pointer;" onClick="popAcWrite();">Write</a>
                        </c:if>
                    </div>
                    <!-- <div class="reveal reveal-top board_pg"> -->
                    <c:choose>
						<c:when test="${fn:length(archave_list) == 0}">												
						</c:when>
						<c:otherwise>
						<br>
                    <div class="reveal-top board_pg">
                        <ul id="archavePagination">
                            
                        </ul>
                    </div>
                    </c:otherwise>
                    </c:choose>
                    <script type="text/javascript">
                    var startPage = $('#archaveStartPageList').val(); //현재 페이지
                	var totalPage = $('#archaveTotalPage').val(); //전체 페이지
                	//--페이지 셋팅
                	var pagination = "";
                	//--페이지네이션에 항상 10개가 보이도록 조절
                	var forStart = 0;
                	var forEnd = 0;
                	if ((startPage - 5) < 1) {
                		forStart = 1;
                	} else {
                		forStart = startPage - 5;
                	}
                	if (forStart == 1) {
                		if (totalPage > 9) {
                			forEnd = 10;
                		} else {
                			forEnd = totalPage;
                		}
                	} else {
                		if ((startPage + 4) > totalPage) {
                			forEnd = totalPage;
                			if (forEnd > 9) {
                				forStart = forEnd - 9
                			}
                		} else {
                			forEnd = startPage + 4;
                		}
                	}
                	//--페이지네이션에 항상 10개가 보이도록 조절

                	//전체 페이지 수를 받아 돌린다.
                	for (var i = forStart; i <= forEnd; i++) {
                		if (startPage == i) {
                			pagination  +=  
                			'<a class="page_active" name="archave_page_move" id="archave_page_num" start_page="'+i+'" disabled>' +
                		   	'<li><span>'+ i + '</span></li></a>';
                		} else {
                			pagination += 
                			'<a name="archave_page_move" id="archave_page_num" start_page="'+i+'" style="cursor:pointer;" >' +
                			'<li><span>'+ i + '</span></li></a>';
                		}
                	}
                	//하단 페이지 부분에 붙인다.
                	$("#archavePagination").append(
                	'<a name="archave_page_move" id="page_first" style="cursor:pointer;"><li class="prev_btn" title="prev"></li></a>'+
                	pagination+
                	'<a name="archave_page_move" id="page_last" style="cursor:pointer;"><li class="next_btn" title="next"></li></a>');
                    

                	//--페이지 셋팅
                	$(document).on("click","#searchBtn",function() {
                		var sch_value = $('#sch_value').val();
                		var sch_type = $('#sch_type').val();
                		$.ajax({ 
                			type: 'POST' , 
                			url: '/archaveList.do?sch_value='+ sch_value +'&sch_type='+sch_type,
                			dataType : 'html' ,
                			success: function(data) { 
                				$('#archaveList').empty();
                				$('#archaveList').html(data);
                /* 				$('#pagination').empty(); */
                /* 				$("#pagination").append(pagination); */
                			} 
                		});
                	});

                	//하단 네비바 클릭 시 이동
                	$(document).off("click","a[name='archave_page_move']").on("click","a[name='archave_page_move']",function() {
                				var id_check = $(this).attr("id"); //해당 seq값을 가져오기위해 새로 추가
                				var totalPage = $('#archaveTotalPage').val(); //다운로드 목록 전체 페이지 수
                				var visiblePages = 10;//리스트 보여줄 페이지
                				var sp = $('#servletPath').val();
                				
                				if(id_check == "archave_page_num"){
                				$('#archaveStartPage').val($(this).attr("start_page"));//보고 싶은 페이지
                				var startPageList = $('#archaveStartPage').val();
                				$('#archaveStartPageList').val(startPageList);
                				var startPage = $('#archaveStartPageList').val(); 
                				$('#archaveVisiblePages').val(visiblePages);
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/archaveList.do?startPage='+ startPage +'&visiblePages='+visiblePages ,
                						dataType : 'text' ,
                						success: function(data) { 
                							/* $('#pagination').empty(); */
                							$('#archaveList').empty();
                							$('#archaveList').html(data);
                							/* $("#pagination").append(pagination); */
                						} 
                					});
                				}
                				
                				if(id_check == "page_first"){
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/archaveList.do?startPage=1&visiblePages=10',
                						dataType : 'text' , 
                						success: function(data) { 
                							$('#archaveList').empty();
                							$('#archaveList').html(data);
                						} 
                					});

                				}else if(id_check == "page_last"){
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/archaveList.do?startPage='+totalPage+'&visiblePages=10',
                						dataType : 'text' , 
                						success: function(data) {
                							$('#archaveList').empty();
                							$('#archaveList').html(data);
                						} 
                					});

                				}
                		});
                	

                	</script>
                    </form> 
                    <form name="archave_form" id="archave_form" enctype="multipart/form-data">
                    <div id="pop_master02" style="z-index:1;" >
                    </div>
                    </form>
                    <!-- .form_select START-->
                    <div class="form_select text_center ">
                            <input type="hidden" name="bo_table" value="notice">
                            <input type="hidden" name="sca" value="">
                            <input type="hidden" name="sop" value="and">
                            
                            <select name="sfl" id="sfl">
                                <!-- <option value="wr_subject||wr_content">ALL</option> -->
                                <option value="wr_subject">Title</option>
                                <!-- <option value="wr_content">Content</option> -->
                            </select>
                            
                        <form name="board_search" method="get">
                            <span class="form_text">
                                <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                                <input type="text" id="sch_value" name="sch_value" value="${sch_value}" required class="sch_input" size="25" maxlength="20" placeholder="Please enter your search term">
                                <button type="button" id="searchBtn" value="SEARCH" class="btn_search"><h5>Search</h5></button>
                                <input type="hidden" id="sch_type" value="board_title" name="sch_type" />
                            </span>
                        </form>
                    </div>
                    <!-- .form_select END-->