<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="vegcipefile.do" method="post"
		enctype="multipart/form-data">

		<div class="inputArea">
			<label for="gdsImg">이미지</label> <input type="file" id="gdsImg1"
				name="file" accept="image/gif, image/jpeg, image/png" />
			<div class="select_img">
				<img src="" />
			</div>

			<input type="submit">
	</form>

	<script>
		$("#gdsImg1")
				.change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(300);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
	</script>
</body>
</html>