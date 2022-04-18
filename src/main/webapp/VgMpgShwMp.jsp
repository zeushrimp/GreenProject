<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="modal" id="modal6" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						<h1>포인트내역보기</h1>
					</div>

					<table>
						<thead>
							<tr>
								<th>날짜</th>
								<th>포인트 내역</th>
								<th>포인트</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2022-04-18</td>
								<td>포인트 적립</td>
								<td>+2000P</td>
							</tr>
							<tr>
								<td>2022-04-17</td>
								<td>포인트 적립</td>
								<td>+2000P</td>
							</tr>
							<tr>
								<td>2022-04-16</td>
								<td>포인트 적립</td>
								<td>+2000P</td>
							</tr>
							<tr>
								<td>2022-04-15</td>
								<td>포인트 적립</td>
								<td>+2000P</td>
							</tr>
							<tr>
								<td>2022-04-14</td>
								<td>포인트 적립</td>
								<td>+2000P</td>
							</tr>
						</tbody>
						<div class="pager">
							<a href="#">1</a> <a href="#" class="current">2</a> <a href="#">3</a>
							<a href="#">4</a> <a href="#">5</a>
						</div>
					</table>					
				</div>
			</div>
		</div>
		<a href="VgMpgMain.jsp">VgMpgMain로 이동</a>
</body>
</html>