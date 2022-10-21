<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>
</head>
<body>
	<h1>책 목록</h1>
	<p>
		<form>
			<input type="text" placeholder="검색" name="keyword" value="${keyword}" />
			<input type="submit" value="검색" />
		</form>
	</p>
	
	<a href="https://www.bootstrapdash.com/demo/corona-free/jquery/template/index.html" target="_blank"><img src="preview.jpg"></a>
	
	<table>
		<thead>
			<tr>
				<th>제목</th>
				<th>카테고리</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${data}">
				<tr>
					<td>
						<a href="/detail?bookId=${row.book_id}">${row.title}</a>
					</td>
					<td>${row.category }</td>
					<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="/create">생성</a>
	</p>
</body>
</html>