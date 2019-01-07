<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/main/style.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style type="text/css">
     .fnqArea {
           white-space: pre-wrap; /* CSS3*/
           white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
           white-space: -pre-wrap; /* Opera 4-6 */
           white-space: -o-pre-wrap; /* Opera 7 */
           word-wrap: break-all; /* Internet Explorer 5.5+ */
     }
</style>
					<h2 class="text_center">SUPPORT</h2>
					<input type="hidden" id="fnqTotalCnt" name="totalCnt" value="${totalCnt}">
					<input type="hidden" id="fnqTotalPage" name="totalPage" value="${totalPage}">
					<input type="hidden" id="servletPath" name="servletPath" value="${servletPath}">
					<input type="hidden" id="fnqStartPage" name="startPage" value="">
					<input type="hidden" id="fnqVisiblePages" name="visiblePages" value="">
					<input type="hidden" id="fnqStartPageList" name="startPageList" value="${startPage}">
                    <div class="title_red_line"></div>
                    <h4 class="sec_sub_title">FAQ</h4>
<!-- 	                    <div id="btn_master_write" class="reveal action"> -->
	                    <div id="btn_master_write">
	                    <c:if test="${sessionScope.ad_id != null}">
	                        <a onClick="popFnQWrite();">Write</a>
	                        </c:if>
	                    </div>
                    <div id="accordian">
                        <ul> 
                        <c:choose>
						<c:when test="${fn:length(fnq_List) == 0}">												
							<li class="accordian_dotted">
							조회결과가 없습니다.
							</li>
						</c:when>
						<c:otherwise>
                        	<c:forEach var="fnq_List" items="${fnq_List}"  varStatus="status">
                            <!-- <li class="accordian_dotted active reveal reveal-top"> -->
                            <li class="accordian_dotted">
                                <h4><span class="point_red_circle"></span>${fnq_List.board_title}
                                    <span class="ico_ar">+</span></h4>
                                <ul style="display : none;"><!-- display none 제거해야함  -->
                                    <li>
                                        <p><pre class="fnqArea">${fnq_List.board_content}</pre></p>
                                        
                                    </li>
                                <!-- add -->
                                	<c:if test="${sessionScope.ad_id != null}">
                                    <li class="btn_master">
                                        <a style="cursor: pointer;" onClick="popFnQModify(${fnq_List.board_seq});" class="btn_master_modify">
                                            Modify
                                        </a>
                                        <a style="cursor: pointer;" class="btn_master_delete" id="aDelete" idx="${fnq_List.board_seq}*${fnq_List.board_division}">
                                            Delete
                                        </a>
                                    </li>
                                    </c:if>
                                </ul>
                            </li>
                            </c:forEach>
                            </c:otherwise>
                            </c:choose>
                        </ul>
                        <!-- add -->
                        <form name="FnQ_form" id="FnQ_form" enctype="multipart/form-data">
                        <div id="pop_master" style="z-index: 1">
                            
                        </div>
                        <!-- <div class="reveal reveal-top board_pg"> -->
                        <c:choose>
						<c:when test="${fn:length(fnq_List) == 0}">												
						</c:when>
						<c:otherwise>
						<br>
                   		<div class="reveal-top board_pg">
	                       <ul id="fnqPagination">
	                           
	                       </ul>
                   		</div>
                   		</c:otherwise>
                   		</c:choose>
                    		<script type="text/javascript">
                    var startPage = $('#fnqStartPageList').val(); //현재 페이지
                	var totalPage = $('#fnqTotalPage').val(); //전체 페이지
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
                			pagination  +=  '<a class="page_active" name="fnq_page_move" id="fnq_page_num" start_page="'+i+'" disabled>' +
                		   					'<li><span>'+ i + '</span></li></a>';
                		} else {
                			pagination += ' <a name="fnq_page_move" id="fnq_page_num" start_page="'+i+'" style="cursor:pointer;" >' +
                			        '<li><span>'+ i + '</span></li></a>';
                		}
                	}
                	//하단 페이지 부분에 붙인다.
                	$("#fnqPagination").append('<a name="fnq_page_move" id="page_first" style="cursor:pointer;"><li class="prev_btn" title="prev"></li></a>'+pagination+
                	'<a name="fnq_page_move" id="page_last" style="cursor:pointer;"><li class="next_btn" title="next"></li></a>');
                    

                	//--페이지 셋팅
                	$(document).on("click","#searchBtn",function() {
                		var sch_value = $('#sch_value').val();
                		var sch_type = $('#sch_type').val();
                		$.ajax({ 
                			type: 'POST' , 
                			url: '/fnqList.do?sch_value='+ sch_value +'&sch_type='+sch_type,
                			dataType : 'html' ,
                			success: function(data) { 
                				$('#fnqList').empty();
                				$('#fnqList').html(data);
                /* 				$('#pagination').empty(); */
                /* 				$("#pagination").append(pagination); */
                			} 
                		});
                	});

                	//하단 네비바 클릭 시 이동
                	$(document).on("click","a[name='fnq_page_move']",function() {
                				var id_check = $(this).attr("id"); //해당 seq값을 가져오기위해 새로 추가
                				var totalPage = $('#fnqTotalPage').val(); //다운로드 목록 전체 페이지 수
                				var visiblePages = 5;//리스트 보여줄 페이지
                				var sp = $('#servletPath').val();
                				
                				if(id_check == "fnq_page_num"){
                				$('#fnqStartPage').val($(this).attr("start_page"));//보고 싶은 페이지
                				var startPageList = $('#fnqStartPage').val();
                				$('#fnqStartPageList').val(startPageList);
                				var startPage = $('#fnqStartPageList').val(); 
                				$('#fnqVisiblePages').val(visiblePages);
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/fnqList.do?startPage='+ startPage +'&visiblePages='+visiblePages ,
                						dataType : 'text' ,
                						success: function(data) { 
                							/* $('#pagination').empty(); */
                							$('#fnqList').empty();
                							$('#fnqList').html(data);
                							/* $("#pagination").append(pagination); */
                						} 
                					});
                				}
                				
                				if(id_check == "page_first"){
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/fnqList.do?startPage=1&visiblePages=5',
                						dataType : 'text' , 
                						success: function(data) { 
                							$('#fnqList').empty();
                							$('#fnqList').html(data);
                						} 
                					});

                				}else if(id_check == "page_last"){
                					$.ajax({ 
                						type: 'POST' , 
                						url: '/fnqList.do?startPage='+totalPage+'&visiblePages=5',
                						dataType : 'text' , 
                						success: function(data) {
                							$('#fnqList').empty();
                							$('#fnqList').html(data);
                						} 
                					});

                				}
                		});
                	

                	</script>
                    		
                        </form>
                    </div>