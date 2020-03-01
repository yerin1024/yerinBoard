<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<div>
		<button id="board">게시판</button>
		<button id="write">글쓰기</button>
	</div>
	
	<script>
		$("#board").on("click",function(){
			location.href="/board/list";
		})
		$("#write").on("click",function(){
			location.href="/board/write";
		})
	</script>
</body>
</html>