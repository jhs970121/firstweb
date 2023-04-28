<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - DOM</title>
<style>
	div#menu {
		border:1px solid red;
	}
	div.top_menu > ul {
		list-style-type:none;
		margin:0px; padding:0px;
		overflow:hidden;
	}
	div.top_menu > ul > li {
		float:left;
	}
	div.top_menu > ul > li > a {
		display:block;
		text-decoration:none;
		width:100px;
		background:mediumseagreen;
		text-align:center;
		font-size:11pt;
		padding:8px 0;
		color:white;
	}
	div#menu div.sub_menu {
		height:100px;
		background:tomato;
		display:none;
	}
</style>
<script>
	window.onload = function() {
		/* document.getElementsByTagName("h1")[0].innerHTML = "(Head)DOM Test!!!"; */
		const h1List = document.getElementsByTagName("h1");
		h1List[0].innerHTML = "(Head)DOM Test!!";
		h1List[1].style.color = "red";
		h1List[1].style.textDecoration = "underline";
		
		const mList = document.getElementsByClassName("m");
		mList[2].style.textDecoration = "underline";
		mList[2].style.fontWeight = "bold";
		
		document.getElementById("menu").style.border = "1px solid blue";
	}
	
	function hidden() {
		document.getElementsByClassName("sub_menu")[0].style.display = "none";
	}
	function show() {
		let checkValue = document.getElementsByClassName("sub_menu")[0].id;
		if(checkValue == 'hide') {
			document.getElementsByClassName("sub_menu")[0].style.display = "block";
			document.getElementsByClassName("sub_menu")[0].id = "show";
		} else {
			document.getElementsByClassName("sub_menu")[0].style.display = "none";
			document.getElementsByClassName("sub_menu")[0].id = "hide";
		}
	}
	
</script>
</head>
<body>
	<h1>Document Object Model</h1>
	<h1>Document Object Model</h1>
	<div id="menu">
		<div class="top_menu" onclick="show()">
			<ul>
				<li><a href="#" class="m">로그인</a></li>
				<li><a href="#" class="m">회원가입</a></li>
				<li><a href="#" class="m">고객센터</a></li>
				<li><a href="#" class="m">공지사항</a></li>
				<li><a href="#" class="m">게시판</a></li>
			</ul>
		</div>
		<div class="sub_menu" id="hide"></div>
	</div>
	
</body>
</html>