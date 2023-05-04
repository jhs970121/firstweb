$(document).ready(function(){
	//1.json data --> $.getJson(url,function(JSON데이터를 담고 있는 변수){});
	let url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230503";
	$.getJSON(url, function(kobis){ //kobis 변수를 만들어 놓고 json 데이터를 받아준다 (callback함수)
		
		let boxoffice = kobis.boxOfficeResult;
		
		let output = "<h1>"+boxoffice.boxofficeType+"</h1>";
		output += "<h3>"+boxoffice.showRange+"</h3>";
		output += "<table border=1>";
		output += "<tr>";
		output += "<th>순위</th>";
		output += "<th>영화제목</th>";
		output += "<th>개봉일</th>";
		output += "<th>누적관객수</th>";
		output += "<th>상영횟수</th>";
		output += "</tr>";
		
		for(list of boxoffice.dailyBoxOfficeList){
			output += "<tr>";
			output += "<td>"+list.rank+"</td>";
			output += "<td>"+list.movieNm+"</td>";
			output += "<td>"+list.openDt+"</td>";
			output += "<td>"+list.audiAcc+"</td>";
			output += "<td>"+list.showCnt+"</td>";
			output += "</tr>";
		}
		output += "</table>";
		$("body").append(output);
		
	});//getJSON
	
});//ready