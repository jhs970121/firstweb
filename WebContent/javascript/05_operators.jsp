<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JS - Operators</title>
<script>
	let num1 = 100;
	let num2 = 50;
	
	/* 산술 연산자 */
	document.write("<h5>산술연산자</h5>");
	document.write("num1 + num2 -->" + (num1 + num2) + "<br>");
	document.write("num1 - num2 -->" + (num1 - num2) + "<br>");
	document.write("num1 * num2 -->" + (num1 * num2) + "<br>");
	document.write("num1 / num2 -->" + (num1 / num2) + "<br>");
	document.write("num1 % num2 -->" + (num1 % num2) + "<br>");
	document.write("<hr>");
	
	/* 비교 연산자 */
	document.write("<h5>비교연산자</h5>");
	document.write("num1 == num2 -->" + (num1 == num2) + "<br>"); //문자, 숫자 == 동일
	document.write("num1 != num2 -->" + (num1 != num2) + "<br>");
	document.write("num1 >= num2 -->" + (num1 >= num2) + "<br>");
	document.write("num1 <= num2 -->" + (num1 <= num2) + "<br>");
	document.write("<hr>");
	
	/* 논리 연산자 */
	document.write("<h5>논리연산자</h5>"); //논리곱 AND, 논리합 OR
	document.write("(10>9) && (10>5) -->" + (10>9) && (10>5) + "<br>");
	document.write("(10>9) && (10<5) -->" + (10>9) && (10<5) + "<br>"); 
	document.write("(10<9) && (10>5) -->" + (10<9) && (10>5) + "<br>");
	document.write("(10<9) && (10<5) -->" + (10<9) && (10<5) + "<br>");
	
	document.write("(10>9) || (10>5) -->" + (10>9) || (10>5) + "<br>");
	document.write("(10>9) || (10<5) -->" + (10>9) || (10<5) + "<br>"); 
	document.write("(10<9) || (10>5) -->" + (10<9) || (10>5) + "<br>");
	document.write("(10<9) || (10<5) -->" + (10<9) || (10<5) + "<br>");
	document.write("<hr>");
	
	/* 증감 연산자 out:출력 in:메모리에 잡히는 값 */
	var i = 10;
	document.write("<h5>증감연산자</h5>");
	document.write("i++ = " + (i++) + '<br>'); //out:10, in:11
	document.write("++i = " + (++i) + '<br>'); //out:12, in:12
	document.write("--i = " + (--i) + '<br>'); //out:11, in:11
	document.write("<hr>");
	
	/* 중첩 연산자 */
	var sum = 100;
	document.write("<h5>중첩연산자</h5>");
	document.write("sum = sum + 100 --> " + (sum = sum + 100) + '<br>');
	document.write("sum += 100 --> " + (sum += 100) + '<br>');
	document.write("<hr>");
</script>
</head>
<body>

</body>
</html>