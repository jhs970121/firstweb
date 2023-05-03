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
		$("button#in").click(function(){
			$("div#d1").fadeIn();
			$("div#d2").fadeIn(1000);
			$("div#d3").fadeIn("slow", function(){ alert("d3 fadeIn 성공")});
		});
		$("button#out").click(function(){
			$("div#d1").fadeOut();
			$("div#d2").fadeOut(1000, function(){ alert("d2 fadeOut 성공") });
			$("div#d3").fadeOut("slow");
		});
		$("button#toggle").click(function(){
			$("div#d1").fadeToggle();
			$("div#d2").fadeToggle(1000);
			$("div#d3").fadeToggle("slow");
		});
		$("button#to").click(function(){
			$("div#d1").fadeTo(200,0.8);
			$("div#d2").fadeTo(1000,0.5);
			$("div#d3").fadeTo("slow",0.3);
		});
	});
</script>
<style>
	div {
		width:200px; height:200px;
		margin:20px;
		float:left;
		display:none;
	}
	div#d1{ background: tomato; }
	div#d2{ background: cyan; }
	div#d3{ background: mediumseagreen; }
	hr { clear:left; }
</style>
</head>
<body>
	<h1>Fade in/Out/Toggle/To</h1>
	<div id="d1"></div>
	<div id="d2"></div>
	<div id="d3"></div>
	<hr>
	<button type="butto" id="in">Fade In</button>
	<button type="butto" id="out">Fade Out</button>
	<button type="butto" id="toggle">Fade Toggle</button>
	<button type="butto" id="to">Fade To</button>
</body>
</html>