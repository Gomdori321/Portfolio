<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	margin:5 auto;
}

header{
    position:static;
    top: 70%;
    margin:0 auto;
    text-align:center; 
    /* align-items: center;*/
    justify-content: space-between;
    /* display: inline-block; */
    width: 100%;
}


header h1 a {
    font-size: 50px;
    text-decoration: none;
    color: black;
    font-family:'Courier New', Courier, monospace;
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

.register_wrap{
    width: 600px;
    margin-top: 10%;
    margin:0 auto;
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
    font:  "malgun gothic";

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

.listtable th,
.listtable td {
    padding: 5px;
    box-sizing: border-box;
    border-bottom: 1px solid rgba(237, 237, 237, 0.696);
}

.listtable th {
    text-align: center;
    background-color: #dededebd;
    width: 300px;
    color: rgb(79, 79, 79);
}

.listtable td {
    width: 500px;
}

.listtable .textForm {
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

footer{
    margin-top: 70px;
    border-top: solid 1px #dddddd;
    margin: 0 auto;
    text-align: center;
    
}



#footer_menu{
    padding-bottom: 10px;
    padding-top: 10px;
}


#footer_menu li{
    display: inline-block;
    margin-left: 10px;
}
.footers{

    display: inline-block;
    text-align: center;
    margin: 0 auto;
    width: 20%;

}
.footers li{
    margin-top: 8px;
    font-size: 12px;
}
.footers span{
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

			<form>
				<input type="text" placeholder="검색" name="keyword"
					value="${keyword}" /> <input type="submit" value="검색" />
			</form>
			
			<table class=listtable>
				<thead>
					<tr>	
						<td>상품코드</td>
						<td>상품명</td>
						<td>상품 가격</td>
						<td>상품 이미지</td>
						<td>상품 카테고리1</td>
						<td>상품 카테고리2</td>
						<td>상품수정/삭제</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${data}">
						<tr>
							<td>${row.pd_num}</td>
							<td>${row.pd_name}</td>
							<td><fmt:formatNumber type="number" maxFractionDigits="3"
									value="${row.price}" /></td>
							<td>${row.img}</td>
							<td>${row.pd_category}</td>
							<td>${row.pd_category_big}</td>
							<td><a href="/admin/goods/detail?pd_num=${row.pd_num}">수정/삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</section>

		<footer id="footer">
			<div id="footer_box">
				<%@ include file="../include/footer.jsp"%>
			</div>
		</footer>

	</div>
</body>
</html>
