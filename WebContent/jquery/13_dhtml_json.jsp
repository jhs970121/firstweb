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
		const gangnam = {title:"강남고등학교", address:"서울시 강남구 강남대로123",
						 grade: {gtitle:"2학년 1반",
							 	 list:[{name:"홍길동",kor:100,eng:100,math:100},
							 		   {name:"테스트",kor:90,eng:90,math:60},
							 		   {name:"자바",kor:10,eng:30,math:60},
							 		   {name:"오라클",kor:80,eng:70,math:30},
							 		   {name:"스크립트",kor:60,eng:90,math:40}] }};
		
		let output = "<h1>"+gangnam.title+"</h1>";
		output += "<h3>"+gangnam.address+"</h3>";
		output += "<h3>"+gangnam.grade.gtitle+"</h3>";
		output += ("<table><tr><th>성명</th><th>국어점수</th><th>영어점수</th><th>수학점수</th><th>총점</th><th>평균</th></tr>");
		
	 	for(score of gangnam.grade.list){
	 		let tot = score.kor + score.eng + score.math;
	 		let avg = Math.round(tot / 3);
			output += ("<tr>");
			output += ("<th>"+score.name+"</th>");
			output += ("<th>"+score.kor+"</th>");
			output += ("<th>"+score.eng+"</th>");
			output += ("<th>"+score.math+"</th>");
			output += ("<th>"+tot+"</th>");
			output += ("<th>"+avg+"</th>");
			output += ("</tr>");
		}
	 	output += ("</table>");
	 	
		$("body").append(output);
	});
	
</script>
<style>
	table, th, td { border:1px solid lightgray }
</style>
</head>
<body>

</body>
</html>