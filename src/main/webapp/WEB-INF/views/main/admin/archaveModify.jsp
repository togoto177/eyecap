<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
						<h4 class="pop_master_tit">
                            ARCHIVE - Write new post
                        </h4>
                        <input type="hidden" id="board_seq" name="board_seq" value="${board_read.board_seq}">
                        <input type="hidden" id="board_division" name="board_division" value="${board_read.board_division}">
                        <c:if test="${board_read.board_notice == 1}">
                        <input type="checkbox" id="board_notice" name="board_notice" value="1" checked="checked"> Notice
                        </c:if>
                        <c:if test="${board_read.board_notice == 0}">
                        <input type="checkbox" id="board_notice" name="board_notice" value="1"> Notice
                        </c:if>
                        
                        <input id="pop_master_write_tit" class="acboard_title" name="board_title" type="text" placeholder="Title" value="${board_read.board_title}" >
                        <!-- <input id="pop_master_write_serch" name="serch_tit" type="text"> -->
                        
                        <div id="fileDiv">
                        <c:forEach var="file_list" items="${file_list}"  varStatus="status">
						<c:if test="${file_list.file_use_yn eq 'Y'}">
						<div id="flist_${status.count}">
						 	<c:set var="TextValue" value="${file_list.file_sub_name}"/>
							<input type="hidden" name="file_key" id="file_key" value="${file_list.file_seq}" />
							<input type="hidden" id="update_id" name="update_id" value="${sessionScope.admin_id}" />
							<input type="hidden"  name="flag" id="flag" value="C" />
							<button type="button" id="delFile" idx="${status.count}">삭제</button>
							 파일 이름 : ${file_list.file_ori_name} | 파일 크기 : ${file_list.file_size} KB
							<br/>
						</div>		
						</c:if>
						</c:forEach>
                        <div class="filebox preview-image" id="fileIndex">
                        <input class="upload-name" id="upload-name0" value="Filename">
                        <label for="input-file" class="fileSearch" id="fileSearch0" idx="0" >SEARCH</label>
                        <input type="file" id="input-file0" name="uploadfile" class="upload-hidden">
                        </div>
<!--                         <div class="filebox preview-image" id="fileIndex">
                        <input class="upload-name" id="upload-name1" value="Filename">
                        <label for="input-file" class="fileSearch" id="fileSearch1" >SEARCH</label>
                        <input type="file" id="input-file1" name="input-file[1]" class="upload-hidden">
                        </div> -->
                        
                        </div>
                        
						<div class="fileAdd">
							<a id="addbt">Add</a>
						</div>
                        <ol class="pop_master_btn02">
                            <li>
                                <!-- <a href="" class="pop_master_btn_submit" onclick="modifyAcSubmit();">SUBMIT</a> -->
                                <a style="cursor: pointer;" id="modifyAcSubmit" class="pop_master_btn_submit" >SUBMIT</a>
                            </li>
                             <li class="margin_none">
                                <a onclick="Close02();" class="pop_master_btn_cancle">CANCLE</a>
                            </li>
                        </ol>