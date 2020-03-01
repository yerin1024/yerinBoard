<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css">
<meta charset="UTF-8">
<title>BOARD</title>

<style>
	#title, #writer{
		width:400px;
	}
	#contents{
		width:400px;
		height:600px;
	}
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