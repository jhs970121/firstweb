<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/jhs_web_project/jquery/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btnLogin").click(function(){
			if($("#id").val() == "") {
				alert("아이디를 입력해주세요");
				$("#id").focus();
				return false;
				
			}else if($("#pass").val() == "") {
				alert("패스워드를 입력해주세요");
				$("#pass").focus();
				return false;
				
			}else{
				loginForm.submit();
			}
		});
		
		$("#btnReset").click(function(){
			$("#id").val("").focus();
			$("#pass").val("");
		});
	});
</script>
</head>
<body>
	<h1>Login Form</h1>
	<form name="loginForm" action="#" method="get">
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id" id="id">
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass" id="pass">
			</li>
			<li>
				<button type="button" id="btnLogin">Login</button>
				<button type="button" id="btnReset">Cancle</button>
			</li>
		</ul>
	</form>
</body>
</html>