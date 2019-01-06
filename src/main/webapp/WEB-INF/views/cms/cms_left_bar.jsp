<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="cmsLeft">
	<ul class="leftbar_ul">
		<li class="title">관리</li>
			<li id="li_02"><a class="right" id="corp">&rtrif;</a><a href="/corpList.do?board_division=corp">  업체관리</a></li>
			<li id="li_03"><a class="right" id="download">&rtrif;</a><a href="/downloadsList?board_division=download">  DOWNLOADS</a></li>
		<li class="title">설정</li>
			<li id="li_04"><a class="right" id="info">&rtrif;</a><a href="/info?ad_seq=${ad_seq}"> 내정보수정</a></li>
			<li id="li_05"><a class="right" id="admin">&rtrif;</a><a href="/adminList?division=admin"> 사원관리</a></li>
	</ul>
</div>