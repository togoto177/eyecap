<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function login_btn() {
		if ($("#user_id").val().length < 1) {
			alert("아이디를 입력하세요.");
			this.focus();
		} else if ($("#user_pwd").val().length < 1) {
			alert("비밀번호를 입력해주세요");
			this.focus();
		} else {
			/* window.opener.name = "parentPage"; // 부모창의 이름 설정

			document.login_form.target = "parentPage"; // 타켓을 부모창으로 설정
			document.login_form.action = "loginTry.do";
			document.login_form.submit();

			self.close(); */
			
			var params = $("#login_form").serialize()
			
		$.ajax({

			type : "POST",
			url : "/loginTry.do",
			data : params,
			dataType : "json",
			success : function(data) {
				fail=data.fail;
				sucess=data.sucess;
				if (fail == "fail") {
					alert('로그인에 실패하였습니다.');
				} else if(sucess == "sucess"){
					alert('로그인에 성공하였습니다.');
					opener.document.location.reload();
					self.close();
				}
			},
			error : function(request, status, error) {
				alert("code:" + request.status + "\n" + "error:" + error);
			}
		})
		}

	}
</script>
</head>
<body>
	<form name="login_form" id="login_form">
		<input type="hidden" id="result" name="result" value="${result}" />
		<input type="hidden" id="ss_id" name="ss_id" value="${sessionScope.ad_id}" />
		<div class="con2">
			<div class="con2Input">
				<div class="con2Input1">
					<label>ID</label><input type="text" id="user_id" name="ad_id" />
				</div>
				<div class="con2Input2">
					<label>PASSWORD</label><input type="password" id="user_pwd"
						name="ad_pw" />
				</div>
			</div>
			<div class="con2But">
				<a class="con2But1" href="#" style="cursor: pointer;"
					onclick="login_btn()">SIGN IN</a>
			</div>
		</div>
	</form>
</body>
<%@ include file="../includeMAin.jsp"%>
</html>