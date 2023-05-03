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
		$("#btnJoin").click(function(){
			if($("#name").val() == ""){
				alert("성명을 입력해주세요");
				$("#name").focus();
				return false;
				
			}else if($("input[name='gender']:checked").length == 0) {
				alert("성별을 체크해주세요");
				/* $($("input[name='gender']:checked")).focus(); */
				return false;
				
			}else if($("input[name='hobby']:checked").length == 0) {
				alert("취미를 체크해주세요");
				/* $($("input[name='hobby']:checked")).focus(); */
				return false;
				
			}else {
				//서버 전송
				joinForm.submit();
			}
				
		});
	});
</script>
</head>
<body>
	<h1>Join Form</h1>
	<form name="joinForm" action="#" method="get">
		<ul>
			<li>
				<label>성명</label>
				<input type="text" name="name" id="name">
			</li>
			<li>
				<label>성별</label>
				<input type="radio" name="gender" value="m">남자
				<input type="radio" name="gender" value="f">여자
			</li>
			<li>
				<label>취미</label>
				<input type="checkbox" name="hobby" value="게임">게임
				<input type="checkbox" name="hobby" value="노래">노래
				<input type="checkbox" name="hobby" value="등산">등산
				<input type="checkbox" name="hobby" value="영화">영화
			</li>
			<li>
				<button type="button" id="btnJoin">회원가입</button>
				<button type="reset" id="btnReset">다시쓰기</button>
			</li>
		</ul>	
	
	</form>
</body>
</html>