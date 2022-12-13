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
	display: relative;
	text-align: center;
	margin: 5 auto;
}

header {
	position: static;
	top: 70%;
	margin: 0 auto;
	text-align: center;
	/* align-items: center;*/
	justify-content: space-between;
	/* display: inline-block; */
	width: 100%;
}

header h1 a {
	font-size: 50px;
	text-decoration: none;
	color: black;
	font-family: 'Courier New', Courier, monospace;
	display: inline-block;
	text-align: center;
	width: 100%;
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
	border-top: 1px solid #eee;
	border-bottom: 0 solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

.register_wrap {
	width: 600px;
	margin-top: 10%;
	margin: 0 auto;
	text-align: center;
	font: "malgun gothic";
}

.box {
	padding: 10px;
	display: inline-block;
}

.select {
	width: 150px;
	height: 35px;
	padding: 5px 30px 5px 10px;
	border-radius: 4px;
	outline: 0 none;
	font: "malgun gothic";
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 0 10px;
	box-sizing: border-box;
}

.select option {
	background: white;
	color: black;
	padding: 3px 0;
}

.select option:hover {
	background: rgb(58, 58, 58)
}

.registertable th, .registertable td {
	padding: 5px;
	box-sizing: border-box;
	border-bottom: 1px solid rgba(237, 237, 237, 0.696);
}

.registertable th {
	text-align: center;
	background-color: #dededebd;
	width: 300px;
	color: rgb(79, 79, 79);
}

.registertable td {
	width: 500px;
}

.registertable .textForm {
	width: 420px;
	height: 42px;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 0 10px;
	box-sizing: border-box;
}

.btn_area {
	text-align: center;
	margin: 30px 0;
}

.btn_area button {
	width: 120px;
	height: 50px;
	margin: 0 10px;
	border: 0;
	font-size: 16px;
	font-weight: bolder;
}

.btn_area .btn_register {
	background-color: #dddddd;
	color: #333;
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

footer {
	margin-top: 70px;
	border-top: solid 1px #dddddd;
	margin: 0 auto;
	text-align: center;
}

#footer_menu {
	padding-bottom: 10px;
	padding-top: 10px;
}

#footer_menu li {
	display: inline-block;
	margin-left: 10px;
}

.footers {
	display: inline-block;
	text-align: center;
	margin: 0 auto;
	width: 20%;
}

.footers li {
	margin-top: 8px;
	font-size: 12px;
}

.footers span {
	font-weight: bold;
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
			<div class="register_wrap">

				<form method="post" enctype="multipart/form-data">
					<fieldset>
						<table class="registertable">
							<div class="box">
								<select name="pd_category" onchange="categoryChange(this)"
									class="select">
									<option disabled selected>카테고리 선택</option>
									<option value="OUTER">OUTER</option>
									<option value="TOP">TOP</option>
									<option value="BOTTOM">BOTTOM</option>
									<option value="DRESS">DRESS</option>
								</select>
							</div>
							<div class="box">
								<select name="pd_category_big" id="pd_category_big"
									class="select">
									<option disabled selected>세부 카테고리</option>
								</select>
							</div>
							<tr>
								<th>제품코드</th>
								<td><input type="text" name="pd_num" class="textForm"></td>
							</tr>
							<tr>
								<th>상 품 명</th>
								<td><input type="text" name="pd_name" class="textForm"></td>
							</tr>
							<tr>
								<th>가 격</th>
								<td><input type="text" name="price" class="textForm"></td>
							</tr>
							<tr>
								<th>상품이미지</th>
								<td><input type="file" name="img"></td>
							</tr>
							<tr>
								<th>상품 소개</th>
								<td><textarea rows="10" cols="50" name="pd_des"
										style="resize: none;"></textarea></td>
							</tr>

						</table>
					</fieldset>
					<div class="btn_area">
						<button type="submit" class="btn_register" name="upload_file">상품등록</button>
					</div>
				</form>
			</div>
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
