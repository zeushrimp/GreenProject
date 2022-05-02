<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* 채팅을위한 css 시작*/
.portlet {
	margin-bottom: 15px;
}

.btn-white {
	border-color: #cccccc;
	color: #333333;
	background-color: #ffffff;
}

.portlet {
	border: 1px solid;
}

.portlet .portlet-heading {
	padding: 0 15px;
}

.portlet .portlet-heading h4 {
	padding: 1px 0;
	font-size: 16px;
}

.portlet .portlet-heading a {
	color: #fff;
}

.portlet .portlet-heading a:hover, .portlet .portlet-heading a:active,
	.portlet .portlet-heading a:focus {
	outline: none;
}

.portlet .portlet-widgets .dropdown-menu a {
	color: #333;
}

.portlet .portlet-widgets ul.dropdown-menu {
	min-width: 0;
}

.portlet .portlet-heading .portlet-title {
	float: left;
}

.portlet .portlet-heading .portlet-title h4 {
	margin: 10px 0;
}

.portlet .portlet-heading .portlet-widgets {
	float: right;
	margin: 8px 0;
}

.portlet .portlet-heading .portlet-widgets .tabbed-portlets {
	display: inline;
}

.portlet .portlet-heading .portlet-widgets .divider {
	margin: 0 5px;
}

.portlet .portlet-body {
	padding: 15px;
	background: #fff;
}

.portlet .portlet-footer {
	padding: 10px 15px;
	background: #e0e7e8;
}

.portlet .portlet-footer ul {
	margin: 0;
}

.portlet-green, .portlet-green>.portlet-heading {
	border-color: #16a085;
}

.portlet-green>.portlet-heading {
	color: #fff;
	background-color: #16a085;
}

.portlet-orange, .portlet-orange>.portlet-heading {
	border-color: #f39c12;
}

.portlet-orange>.portlet-heading {
	color: #fff;
	background-color: #f39c12;
}

.portlet-blue, .portlet-blue>.portlet-heading {
	border-color: #2980b9;
}

.portlet-blue>.portlet-heading {
	color: #fff;
	background-color: #2980b9;
}

.portlet-red, .portlet-red>.portlet-heading {
	border-color: #e74c3c;
}

.portlet-red>.portlet-heading {
	color: #fff;
	background-color: #e74c3c;
}

.portlet-purple, .portlet-purple>.portlet-heading {
	border-color: #8e44ad;
}

.portlet-purple>.portlet-heading {
	color: #fff;
	background-color: #8e44ad;
}

.portlet-default, .portlet-dark-blue, .portlet-default>.portlet-heading,
	.portlet-dark-blue>.portlet-heading {
	border-color: #34495e;
}

.portlet-default>.portlet-heading, .portlet-dark-blue>.portlet-heading {
	color: #fff;
	background-color: #34495e;
}

.portlet-basic, .portlet-basic>.portlet-heading {
	border-color: #333;
}

.portlet-basic>.portlet-heading {
	border-bottom: 1px solid #333;
	color: #333;
	background-color: #fff;
}

@media ( min-width :768px) {
	.portlet {
		margin-bottom: 30px;
	}
}

.img-chat {
	width: 40px;
	height: 40px;
}

.text-green {
	color: #16a085;
}

.text-orange {
	color: #f39c12;
}

.text-red {
	color: #e74c3c;
}
/* 채팅을위한 css 끝*/
</style>
</head>
<body>
	<div class="row">
		<div class="modal" id="modal8" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div style="text-align: center;">

						<div class="modal-body">

							<div class="container bootstrap snippet">

								<div class="row">

									<div class="col-xs-12">

										<div class="portlet portlet-default">

											<div class="panel-heading">

												<div class="portlet-title">

													<h4>

														<i class="fa fa-circle text-green"></i>실시간 채팅방
													</h4>

												</div>
												<div class="clearfix"></div>

											</div>
											<div id="chat" class="panel-cpllapse collapse in">
												<div class="portlet-body chat-widget"
													style="overflow-y: auto; width: auto; height: 300px">
													<div class="row">
														<div class="col-lg-12">
															<p class="text-center text-muted small">2022년 5월 01일</p>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-12">
														<div class="media">
														<a class="pull-left" href="#">
															<img class="media-object img-circle" alt="" src="/resources/images/model.png" style="width: 80%; height:80%;">
														</a>
														</div>
														</div>
													</div>


												</div>



											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>