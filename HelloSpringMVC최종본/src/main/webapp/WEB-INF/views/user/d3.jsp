<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="create_user.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${path}/resources/create_user.css">

<style>
.grid line {
	stroke: lightgrey;
	stroke-opacity: 0.7;
}

.lineChart {
	fill: none;
	stroke: steelblue;
	stroke-width: 1.5px;
}

.lineChart:hover {
	stroke: black;
	stroke-width: 3px;
}

.toolTip {
	position: absolute;
	border: 1px solid;
	border-radius: 4px 4px 4px 4px;
	background: rgba(0, 0, 0, 0.8);
	color: white;
	padding: 5px;
	text-align: center;
	font-size: 12px;
	min-width: 30px;
}
</style>

</head>

<script src="https://d3js.org/d3.v4.min.js"></script>

<body>

	

	<header>
		<h1>
			<a href="#">Mesion Bonita</a>
		</h1>
		<div class="nav">
			<ul>
				<li><a href="#">LOGOUT</a></li>
				<li><a href="#">MYPAGE</a></li>
				<li><a href="#">CART</a></li>
				<li><a href="/weather">WEATHER</a></li>
			</ul>
		</div>
	</header>
	<!-- header section end -->

	<!-- 카테고리 코드 -->
	<div style="position: relative; z-index: 2;">
		<div class="menu" id="menu">
			<ul>
				<li><a href="#menu1">OUTER</a>
					<ul>
						<li><a href="#menu1">CARDIGAN</li>
						<li><a href="#menu1">JUMPER</li>
						<li><a href="#menu1">COAT</li>
						<li><a href="#menu1">JACKET</li>
					</ul></li>

				<li><a href="#menu2">TOP</a>
					<ul>
						<li><a href="#menu2">KNIT</li>
						<li><a href="#menu2">TEE&SHIRT</li>
						<li><a href="#menu2">MTM&HOOD</li>
						<li><a href="#menu2">BLOUSE</li>
					</ul></li>

				<li><a href="#menu3">BOTTOM</a>
					<ul>
						<li><a href="#menu3">STRAIGHT</li>
						<li><a href="#menu3">WIDE</li>
						<li><a href="#menu3">SLACKS</li>
					</ul></li>

				<li><a href="#menu4">DRESS</a>
					<ul>
						<li><a href="#menu4">SKIRT</li>
						<li><a href="#menu4">DRESS</li>
					</ul></li>
				<li><a href="#menu5">ACC</a>
					<ul>
						<li><a href="#menu5">SKIRT</li>
						<li><a href="#menu5">DRESS</li>
					</ul></li>
			</ul>
		</div>
	</div>
	
	<div id="root" style="text-align: center">

		<svg width="700" height="320"></svg>

	</div>
	
	<footer>
		<ul id="footer_menu">
			<li>회사약관</li>
			<li>회사소개</li>
			<li>이용안내</li>
			<li>고객센터</li>
			<li>개인정보취급방침</li>
		</ul>
		<div class="footer_box">
			<div class="footers">
				<h3>MesionBonita(주)</h3>
				<ul>
					<li>사업자 등록번호:12345567</li>
					<li>대표이사 홍길동 | 대구광역시 동구 신천동</li>
					<li>전화 1111-2222</li>
				</ul>
			</div>
			<div class="footers">
				<h3>고객센터</h3>
				<ul>
					<li>대구광역시 동구 신천동</li>
					<li>전화 1234-5678</li>
					<li><span>1:1문의 바로가기</span></li>
				</ul>
			</div>
			<div class="footers">
				<h3>전자금융거래 분쟁처리</h3>
				<ul>
					<li>서울특별시 강남구 압구정동</li>
					<li>전화 1588-5678</li>
					<li><span>1:1문의 바로가기</span></li>
				</ul>
			</div>
		</div>
	</footer>

	<script>
		var series = [ "최저기온", "최고기온" ];
		var dataset = [];

		var data_low = {};
		var data_high = {};

		<c:forEach items="${datalist}" var="item">

		data_low["${item.weatherNum}"] = Number("${item.lowTemp}")

		data_high["${item.weatherNum}"] = Number("${item.highTemp}")

		//	console.log(data_low)

		// 		data.push({
		// 			name: "${item.priceRange}",
		// 			value : "${item.countPrice}"}
		// 		)

		</c:forEach>

		dataset.push(data_low, data_high)

		//console.log(dataset)
		//console.log(data_low)
		//console.log(data_low)

		var keys = d3.keys(dataset[0]);

		var data = [];
		dataset.forEach(function(d, i) {
			data[i] = keys.map(function(key) {
				return {
					x : key,
					y : d[key]
				};
			})
		});

		var margin = {
			left : 20,
			top : 10,
			right : 10,
			bottom : 20
		};
		var svg = d3.select("svg");
		var width = parseInt(svg.style("width"), 10) - margin.left
				- margin.right;
		var height = parseInt(svg.style("height"), 10) - margin.top
				- margin.bottom;
		var svgG = svg.append("g").attr("transform",
				"translate(" + margin.left + "," + margin.top + ")");
		var xScale = d3.scalePoint()//scaleBand() scaleOrdinal
		.domain(keys).rangeRound([ 0, width ]);
		var yScale = d3.scaleLinear().domain([ 0, d3.max(dataset, function(d) {
			return d3.max(keys, function(key) {
				return d[key];
			});
		}) ]).nice().range([ height, 0 ]);
		var colors = d3.scaleOrdinal(d3.schemeCategory10);

		svgG.append("g").attr("class", "grid").attr("transform",
				"translate(0," + height + ")").call(
				d3.axisBottom(xScale).tickSize(-height));

		svgG.append("g").attr("class", "grid").call(
				d3.axisLeft(yScale).ticks(5).tickSize(-width));

		var line = d3.line()
		//.curve(d3.curveBasis)
		.x(function(d) {
			return xScale(d.x);
		}).y(function(d) {
			return yScale(d.y);
		});
		var lineG = svgG.append("g").selectAll("g").data(data).enter().append(
				"g");

		lineG.append("path").attr("class", "lineChart").style("stroke",
				function(d, i) {
					return colors(series[i]);
				}).attr("d", function(d, i) {
			return line(d);
		});

		lineG.selectAll("dot").data(function(d) {
			return d
		}).enter().append("circle").attr("r", 3).attr("cx", function(d) {
			return xScale(d.x)
		}).attr("cy", function(d) {
			return yScale(d.y);
		}).on("mouseover", function() {
			tooltip.style("display", null);
		}).on("mouseout", function() {
			tooltip.style("display", "none");
		}).on("mousemove", function(d) {
			tooltip.style("left", (d3.event.pageX + 10) + "px");
			tooltip.style("top", (d3.event.pageY - 10) + "px");
			tooltip.html("month. " + d.x + "<br/>" + "data value : " + d.y);
		});

		var tooltip = d3.select("body").append("div").attr("class", "toolTip")
				.style("display", "none");

		var legend = svgG.append("g").attr("text-anchor", "end").selectAll("g")
				.data(series).enter().append("g").attr("transform",
						function(d, i) {
							return "translate(0," + i * 20 + ")";
						});

		legend.append("rect").attr("x", width - 20).attr("width", 19).attr(
				"height", 19).attr("fill", colors);

		legend.append("text").attr("x", width - 30).attr("y", 9.5).attr("dy",
				"0.32em").text(function(d) {
			return d;
		});

		//     d3.csv("../resources/sangin.csv",function(data1){
		//              //if(error) throw error;
		//             for(var i =0;i<data1.length-2;i++){
		//                 //console.log(data[i]);
		//                 /* data_low[(i+1).toString()] = Number(data1[i].lowt);
		//                 data_high[(i+1).toString()] = Number(data1[i].hight);
		//                 data_avg[(i+1).toString()] = Number(data1[i].avgt);  */

		//                 data_low[(i+1)] = Number(data1[i].lowt);
		//                 data_high[(i+1)] = Number(data1[i].hight);
		//                 data_avg[(i+1)] = Number(data1[i].avgt); 
		//             };

		//             dataset.push(data_low,data_high);

		//           //  var keys = d3.keys(dataset[0]);

		// var data = [];

		// dataset.forEach(function(d, i) {
		// data[i] = keys.map(function(key) { return {x: key, y: d[key]}; })
		// });

		// var margin = {left: 20, top: 10, right: 10, bottom: 20};
		// var svg = d3.select("svg");
		// var width  = parseInt(svg.style("width"), 10) - margin.left - margin.right;
		// var height = parseInt(svg.style("height"), 10)- margin.top  - margin.bottom;
		// var svgG = svg.append("g")
		//     .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
		// var xScale = d3.scalePoint()//scaleBand() scaleOrdinal
		//     .domain(keys)
		//     .rangeRound([0, width]);
		// var yScale = d3.scaleLinear()
		//     .domain([0, d3.max(dataset, function(d) { return d3.max(keys, function(key) { return d[key];});})])
		//     .nice()
		//     .range([height, 0]);
		// var colors = d3.scaleOrdinal(d3.schemeCategory10);

		// svgG.append("g")
		//     .attr("class", "grid")
		//     .attr("transform", "translate(0," + height + ")")
		//     .call(d3.axisBottom(xScale)
		//         .tickSize(-height)
		//     );

		// svgG.append("g")
		//     .attr("class", "grid")
		//     .call(d3.axisLeft(yScale)
		//         .ticks(5)
		//         .tickSize(-width)
		//        );

		// var line = d3.line()
		//     //.curve(d3.curveBasis)
		//     .x(function(d) { return xScale(d.x); })
		//     .y(function(d) { return yScale(d.y); });
		// var lineG = svgG.append("g")
		//     .selectAll("g")
		//     .data(data)
		//        .enter().append("g");

		// lineG.append("path")
		//     .attr("class", "lineChart")
		//     .style("stroke", function(d, i) { return colors( series[i]); })
		//     .attr("d", function(d, i) {return line(d); });

		// lineG.selectAll("dot")
		//     .data(function(d) {return d })
		//     .enter().append("circle")
		//         .attr("r", 3)
		//         .attr("cx", function(d) { return xScale(d.x) })
		//         .attr("cy", function(d) { return yScale(d.y);})
		//         .on("mouseover", function() { tooltip.style("display", null); })
		//         .on("mouseout",  function() { tooltip.style("display", "none"); })
		//         .on("mousemove", function(d) {
		//             tooltip.style("left", (d3.event.pageX+10)+"px");
		//             tooltip.style("top",  (d3.event.pageY-10)+"px");
		//             tooltip.html("month. " + d.x + "<br/>" + "data value : " + d.y);
		//         });

		// var tooltip = d3.select("body")
		//     .append("div")
		//     .attr("class", "toolTip")
		//     .style("display", "none");

		// var legend = svgG.append("g")
		//     .attr("text-anchor", "end")
		//     .selectAll("g")
		//     .data(series)
		//     .enter().append("g")
		//     .attr("transform", function(d, i) { return "translate(0," + i * 20 + ")"; });

		// legend.append("rect")
		//       .attr("x", width - 20)
		//       .attr("width", 19)
		//       .attr("height", 19)
		//       .attr("fill", colors);

		//   legend.append("text")
		//       .attr("x", width - 30)
		//       .attr("y", 9.5)
		//       .attr("dy", "0.32em")
		//       .text(function(d) { return d; });

		//         });
	</script>

</body>
</html>