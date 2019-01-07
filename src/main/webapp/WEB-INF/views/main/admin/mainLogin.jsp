<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.con2{
		width: 50%;
		margin: 0 auto;
		height: 50%;
		position: relative;
		top: 150px;
	}
	.con2 label{
	width: 30%;
	display: block;
	float: left;
	color: white;
	}
	.con2 input {
	width: 68%;
	}
	.con2Input1{
	margin: 2% 0;
	}
	.con2But{
		width: 100%;
		margin: 5% 0;
	}
	.con2But a{
		text-decoration:none;
		display:inline-block;
		text-align:center;
		vertical-align:middle;
		text-decoration:none;
		font-size:12px;
		color:#000;
		border:1px solid #000;
		width:118px;
		height:38px;
		line-height:38px;
		background: #c5c5c5;
		position: relative;
		left: 33%;
	}
}
</style>
<title>Insert title here</title>
</head>
<body style="background: url(../../resources/sub/BG.jpg) center no-repeat;">
	<form name="login_form" id="login_form">
		<input type="hidden" id="loginDivision" name="loginDivision" value=adminLogin />
		<input type="hidden" id="result" name="result" value="${result}" />
		<input type="hidden" id="ss_id" name="ss_id" value="${sessionScope.ad_id}" />
		<div class="con2">
			<div class="con2Input">
				<div class="con2Input1">
					<label>ID</label><input type="text" id="admin_id" name="ad_id" />
				</div>
				<div class="con2Input2">
					<label>PASSWORD</label><input type="password" id="admin_pwd"
						name="ad_pw" />
				</div>
			</div>
			<div class="con2But">
			<%
        session.invalidate(); // 모든세션정보 삭제
    		%>
				<a class="con2But1" href="#" style="cursor: pointer;"
					id="login_btn">SIGN IN</a>
			</div>
		</div>
	</form>
</body>
<%@ include file="../includeMAin.jsp"%>
</html>