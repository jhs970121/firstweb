<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/jhs_web_project/jquery/jquery-3.6.4.min.js"></script>
<style>
	div#target {
		width:500px; height:100px;
		background:tomato;
		margin:20px;
	}
</style>
<script>
	$(document).ready(function(){
		$("button").click(function(){
			let id = $(this).attr("id");
			if(id === "hide") {
				$("#target").hide(500, function(){ alert("hide 성공!"); });
			}else if(id === "show"){
				$("#target").show(500, function(){ alert("show 성공!") });
			}else {
				$("#target").toggle(500, function(){ alert("toggle 성공 !") });
			}
		})
	});
</script>
</head>
<body>
	<h1>Hide/Show/Toggle Method</h1>
	<div id="target"></div>
	<button type="button" id="hide">Hide</button>
	<button type="button" id="show">Show</button>
	<button type="button" id="toggle">Toggle</button>
</body>
</html>