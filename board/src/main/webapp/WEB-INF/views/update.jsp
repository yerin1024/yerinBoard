<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	$(function(){
		$.ajax({
			url:"/boardR/"+${seq},
			method:"GET",
			success: function(data){
				var List = JSON.parse(data);
				$("#title").var(data.title);
				$("#writer").var(data.writer);
				$("#contents").var(data.contents);
			},
			error:function(){
				alert("로딩실패");
			}
		})
	})
	
</style>
</head>
<body>
	<div id="wrapper">
		<form name="writeForm" id="writeForm" action="/boardR" method="POST">
			제목 <input name="title" id="title" type="text"><br>
			작성자 <input name="writer" id="writer" type="text"><br>
			<textarea name="contents" id="contents"></textarea>
		</form>
		<button id="register" type="button">글쓰기</button>
	</div>
	
	<script>
	$("#register").click(function(){
		if($("#title").val()==""){
			alert("제목을 입력하세요");
			return;
		}
		if($("#contents").val()==""){
			alert("내용을 입력하세요");
			return;
		}
		
		var writerD = $("#writer").val();
		var titleD = $("#title").val();
		var contentsD = $("#contents").val();
		$.ajax({
			url:"/boardR",
			method:"POST",
			data:{
				writer:writerD,
				title:titleD,
				contents:contentsD,
			},
			success: function(data){
				location.href="list";
			},
			error:function(){
				location.href="list";
			}
		})
	});
	</script>
</body>
</html>