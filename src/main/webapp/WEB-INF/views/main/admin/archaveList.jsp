<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
					<h2 class="text_center">ARCHAVE</h2>
                    <div class="title_red_line"></div>
                    <form name="archave_list"  method="get" id="archave_list">
					<input type="hidden" id="board_division" name="board_division" value="archave" />
					<input type="hidden" id="totalCnt" name="totalCnt" value="${totalCnt}">
					<input type="hidden" id="totalPage" name="totalPage" value="${totalPage}">
					<input type="hidden" id="servletPath" name="servletPath" value="${servletPath}">
					<input type="hidden" id="startPage" name="startPage" value="">
					<input type="hidden" id="visiblePages" name="visiblePages" value="">
					<input type="hidden" id="startPageList" name="startPageList" value="${startPage}">
                    <table class="reveal reveal-top">
                        <tr>
                            <th scope="col" class="th_line">No</th>
                            <th scope="col" class="th_line">Title</th>
                            <th scope="col" class="th_line">Date</th>
                            <th scope="col">File Download</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
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
                            <td class="td_file"><span class="file_down"></span> EYECAP_CATALOG_pdf (9.2M)</td>
                            <td class="td_master">
                            	<c:if test="${sessionScope.ad_id != null}">
                                <a onclick="popAcModify(${archave_list.board_seq});" class="td_modify">Modify</a>
                                <a id="aDelete" class="td_delete" idx="${archave_list.board_seq}">Delete / ${archave_list.board_seq}</a>
                                </c:if>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                      
                   <!-- add -->
                    <div id="btn_master_write" class="reveal action">
                    	<c:if test="${sessionScope.ad_id != null}">
                        <a onClick="popAcWrite();">Write</a>
                        </c:if>
                    </div>
                    <div class="reveal reveal-top board_pg">
                        <ul>
                            <li class="prev_btn" title="prev">
                            <a href="javascript:void(0);" name="page_move" id="page_first"></a>
                            </li>
                            <li id="pagination"></li>
                            <li class="next_btn" title="next">
                            <a href="javascript:void(0)" name="page_move" id="page_last"></a>
                            </li>
                        </ul>
                    </div>
                    </form> 
                    <form name="archave_form" id="archave_form" enctype="multipart/form-data">
                    <input type="text" value="${servletPath}">
                    <div id="pop_master02">
                    </div>
                    </form>
                    <!-- .form_select START-->
                    <div class="form_select text_center ">
                            <input type="hidden" name="bo_table" value="notice">
                            <input type="hidden" name="sca" value="">
                            <input type="hidden" name="sop" value="and">
                            
                            <select name="sfl" id="sfl">
                                <option value="wr_subject||wr_content">ALL</option>
                                <option value="wr_subject">Title</option>
                                <option value="wr_content">Content</option>
                            </select>
                            
                            <span class="form_text">
                                <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                        <form name="board_search" method="get">
                                <input type="text" id="sch_value" name="sch_value" value="${sch_value}" required class="sch_input" size="25" maxlength="20" placeholder="Please enter your search term">
                                <button type="submit" id="searchBtn" value="SEARCH" class="btn_search"><h5>Search</h5></button>
                                <input type="hidden" value="board_title" name="sch_type" />
                        </form>
                            </span>
                    </div>
                    <!-- .form_select END-->