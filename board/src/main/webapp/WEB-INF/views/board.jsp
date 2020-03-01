<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>HOME</title>
<script>
	$(function(){
		$.ajax({
			url:"/boardR",
			method:"GET",
			success: function(data){
				var List = JSON.parse(data);
				for(var i=0; i<List.length; i++){
					var tr = $("<tr id=>"+List[i].seq+"</tr>")
					tr.append("<td>"+List[i].seq+"</td>");
					tr.append("<td>"+List[i].writer+"</td>");
					tr.append("<td>"+List[i].title+"</td>");
					tr.append("<td><button type='button' class='delete' seq="+List[i].seq+">삭제</button></td>");
					tr.append("<td><button type='button' class='update' seq="+List[i].seq+">수정</button></td>");
					$("#list").append(tr);
				}
			},
			error:function(){
				alert("로딩실패");
			}
		})
	})
	
</script>
</head>
<body>
	<div id="wrapper">
		<table id="list">
		</table>
	</div>
	<script>
		$("#delete").on("click", function(){
			var seq = $(this).attr("seq");
			$.ajax({
				url:"/boardR/"+seq,
				method:"DELETE",
				success:function(data){
					$("#"+seq).attr("display", "none");
				},
				error:function(){
					alert("삭제실패");
				}
			})
		})
		$("#update").on("click", function(){
			var seq = $(this).attr("seq");
			location.href="update?seq"+seq;
		})
	</script>
</body>
</html>