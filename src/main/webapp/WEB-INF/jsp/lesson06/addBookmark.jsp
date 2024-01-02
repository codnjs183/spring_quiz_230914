<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>

<!-- Bootstrap -->
<!-- AJAX를 사용하려면 jquery 원본 필요 (2번째 줄) -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		
		<div class="form-group">
			<label for="name">제목</label>
			<input type="text" id="name" class="form-control">
		</div>
		<div class="form-group">
			<label for="url">주소</label>
			<input type="text" id="address" class="form-control">
		</div>
		
		<input type="button" id="addBtn" value="추가" class="btn btn-success col-12">
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#addBtn").on('click', function() {
				
				let name = $("#name").val();
				if (name < 1) {
					alert("이름을 입력하세요");
					return;
				}
				
				let address = $("address").val();
				if (address < 1) {
					alert("주소를 입력하세요");
					return;
				}
				
				$.ajax({
					//request
					type:"POST"
					, url:"/lesson06/quiz01/add-bookmark"
					, data:{"name":name, "address":address}
					
					//response
					, success:function(data) {
						alert(data);
						if (data == "성공") {
							location.href = "/lesson06/quiz06/after-add-bookmark-view";
						}
					}
					
					, error:function(request, status, error) {
						alert(request);
						alert(status);
						alert(error);
					}
					
				});
			});
		});
	</script>
</body>
</html>