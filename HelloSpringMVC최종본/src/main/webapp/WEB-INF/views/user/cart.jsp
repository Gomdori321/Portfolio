<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>



</head>
<body>

<h1>유저리스트</h1>
<table border='1'>
				<thead>
					<tr>
						<td>주문번호</td>
						<td>상품명</td>
						<td>상품 가격</td>
						<td>상품 수량</td>
					
					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${data1}">
						<tr>
							<td>${row.address}</td>
							<td>${row.pd_name}</td>
							<td>${row.orderCount}</td>
							<td>${row.orderCount}</td>

								<td><a href="/admin/goods/detail?pd_num=${row.pd_num}">삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				
		</div>
</body>
</html>