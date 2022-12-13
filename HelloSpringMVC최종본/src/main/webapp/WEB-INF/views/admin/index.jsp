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

aside {
	float: left;
	width: 200px;
}

div#container_box {
    font-size: 40px;
    font-weight: bold;
    text-decoration: none;
    color: black;
    font-family:'Courier New', Courier, monospace;
    display: inline-block;
    text-align: right;
    margin: 15% auto;
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
	font-weigt: bold;
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
				<%@ include file="include/header.jsp"%>
			</div>
		</header>

		<nav id="nav">
			<div id="nav_box">
				<%@ include file="include/nav.jsp"%>
			</div>
		</nav>

		<section id="container">
			<aside>
				<%@ include file="include/aside.jsp"%>
			</aside>
				<div id="container_box" >Welcome</div>
		</section>
			
		<footer id="footer">
			<div id="footer_box">
				<%@ include file="include/footer.jsp"%>
			</div>
		</footer>

	</div>
</body>
</html>


