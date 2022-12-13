<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>



<style>
body {
	font-family: '맑은 고딕', verdana;
	padding: 0;
	margin: 0;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

div#root {
	width: 90%;
	margin: 0 auto;
}

header#header {
	font-size: 30px;
	padding: 20px 0;
}

header#header h1 a {
	color: #000;
	font-weight: bold;
}

nav#nav {
	padding: 10px;
	text-align: right;
}

nav#nav ul li {
	display: inline-block;
	margin-left: 10px;
}

section#container {
	padding: 20px 0;
	border-top: 2px solid #eee;
	border-bottom: 2px solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

aside {
	float: left;
	width: 200px;
}

div#container_box {
	float: right;
	width: calc(100% - 200px - 20px);
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
}

aside ul li a:hover {
	background: #eee;
}

footer#footer {
	background: #f9f9f9;
	padding: 20px;
}

footer#footer ul li {
	display: inline-block;
	margin-right: 10px;
}
</style>


</head>



<body>
	<div id="root">
		<header id="header">
			<div id="header_box">
				<%@ include file="../include/header.jsp"%>
			</div>
		</header>

		<nav id="nav">
			<div id="nav_box">
				<%@ include file="../include/nav.jsp"%>
			</div>
		</nav>

		<section id="container">
			<aside>
				<%@ include file="../include/aside.jsp"%>
			</aside>

	<form method="post" >

		<select name="pd_category" onchange="categoryChange(this)">
		<option value>카테고리 선택</option>
		<option value="OUTER">OUTER</option>
		<option value="TOP">TOP</option>
		<option value="BOTTOM">BOTTOM</option>
		<option value="DRESS">DRESS</option>	
		</select>
		
		<select name="pd_category_big" id="pd_category_big">
	  <option>세부 카테고리</option>
	  
	  
		</select>
		<p>상 품 명: <input type="text" name="pd_name" value="${ data.pd_name }" /></p>
		<p>가   격 : <input type="text" name="price" value="${ data.price }" /></p>
		<p>상품이미지: <input type="text" name="img" value="${ data.img }" /></p>
		
		<p>상품 소개 : <textarea  rows="10" cols="50" name="pd_des" style="resize:none;" value="${ data.pd_des} "></textarea></p>

		
		

		<p><input type="submit" value="저장" />
	</form>

			
			
		</section>

		<footer id="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>

	</div>
	
	
	
	<script>
		function categoryChange(e) {
			var target = document.getElementById("pd_category_big");

			const OUTER = [ "CARDIGAN", "JUMPER", "COAT", "JACKET" ];
			const TOP = [ "KNIT", "TEE&SHIRT", "MTM&HOOD", "BLOUSE" ];
			const BOTTOM = [ "STRAIGHT", "WIDE", "MTM&SLACKS" ];
			const DRESS = [ "SKIRT", "DRESS" ];
			const ACC = [ "SKIRT", "DRESS" ];

			if (e.value == "OUTER") {
				var d = OUTER;
			} else if (e.value == "TOP") {
				var d = TOP;
			} else if (e.value == "BOTTOM") {
				var d = BOTTOM;
			} else if (e.value == "DRESS") {
				var d = DRESS;
			} else if (e.value == "ACC") {
				var d = ACC;
			}

			target.options.length = 0;

			for (property in d) {
				let opt = document.createElement("option");
				opt.value = d[property];
				opt.innerHTML = d[property];
				target.appendChild(opt);
			}
		}
	</script>
	
	
	
</body>
</html>
