<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>SocialChef</title>
	
	<link rel="stylesheet" href="resources/css/style.css" />
	<link rel="stylesheet" href="resources/css/icons.css" />
	<link href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="resources/images/favicon.ico" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	
    <!--header-->
    <%@ include file="resources/Header.jsp" %> 
    <!--//header--> 
	<form>
	<!--main-->
		<main class="main" role="main">
			<!--wrap-->
			<div class="wrap clearfix">
				<!--breadcrumbs-->
				<nav class="breadcrumbs">
					<ul>
						<li><a href="VgMain.jsp" title="Home">메인</a></li>
						<li>레시피 등록</li>
					</ul>
				</nav>
				<!--//breadcrumbs-->
				
				<!--row-->
				<div class="row">
					<header class="s-title">
					</header>
						
					<!--content-->
					<section class="content full-width">
						<div class="submit_recipe container">
							<form>
								<section>
									<div class="f-row">
										<div class="full"><span style="font-size: x-large;font-weight: 600;">제목 입력하기</span>
										<input type="text" placeholder="레시피의 제목을 입력해주세요" style="width: 75% !important;float: right !important;"/></div>
									</div>
									<div class="f-row">
										<div class="full"><span style="font-size: x-large;font-weight: 600;">한줄설명 입력하기</span>
										<input type="text" placeholder="레시피를 소개할 수 있는 한줄설명을 입력해주세요" style="width: 75% !important;float: right !important;" /></div>
									</div>
									<div class="f-row">
										<div class="third" style="width: 50%"><span>조리시간 총  </span><input id="cocktime" type="text" placeholder="조리 시간" style="float: none !important; width: 80px !important;"/><span> 분 소요 (숫자로만 입력해주세요)</span></div>
										<div class="third" style="float: right !important;">
										<select naem="vege" required>
										<option disabled selected style="display: none;">알맞는 채식의 유형을 선택해주세요</option>
										<option>프루테리언</option>
										<option>비건</option>
										<option>락토 베지테리언</option>
										<option>오보 베지테리언</option>
										<option>락토 오보 베지테리언</option>
										<option>폴로 베지테리언</option>
										</select>
										</div>
										<div class="third" style="width: 50%"><span>조리분량 총  </span><input id="cocktime" type="text" placeholder="조리 분량" style="float: none !important; width: 80px !important;"/><span> 인분 (숫자로만 입력해주세요)</span></div>
									</div>
								</section>
								<section>
									<div class="f-row"><span style="font-size: x-large;font-weight: 600;">재료 입력하기</span>
									</div>
									<div class="f-row ingredient">
										<div class="large"><input type="text" placeholder="재료를 하나씩 입력해주세요 (예. 묵은 김치)" /></div>
										<div class="small"><input type="text" placeholder="수량 (예. 1포기)" /></div>
										<button class="remove">-</button>
									</div>
									<div class="f-row full">
										<button class="add">재료 추가하기</button>
									</div>
								</section>
								<section>
									<div class="f-row"><span style="font-size: x-large;font-weight: 600;">조리과정 입력하기</span>
									</div>
									<div class="f-row ingredient">
										<div class="large" style="width: 80%; "><input type="text" placeholder="(한 번에 각 단계에 조리과정 입력)"/></div>
										<button class="remove">-</button>
									</div>
									<div class="f-row full">
										<button class="add">조리과정 단계 추가하기</button>
									</div>
								</section>
								
								<section>
									<div class="full"><span style="font-size: x-large;font-weight: 600;">사진</span>(대표사진 1장만 등록해주세요)
									<div class="f-row full">
										<input type="file" />
									</div>
									</div>
								</section>	
								
								<section>
									<h2>상태 <span>(이 레시피를 추가로 편집하시겠습니까, 아니면 게시할 준비가 되셨습니까?)</span></h2>
									<div class="f-row full">
										<input type="radio" id="r1" name="radio"/>
										<label for="r1">아직 작업 중입니다.</label>
									</div>
									<div class="f-row full">
										<input type="radio" id="r2" name="radio"/>
										<label for="r2">이 레시피를 게시할 준비가 되었습니다.</label>
									</div>
								</section>
								
								<div class="f-row full">
									<input type="submit" class="button" id="submitRecipe" value="레시피 게시" />
								</div>
							</form>
						</div>
					</section>
					<!--//content-->
				</div>
				<!--//row-->
			</div>
			<!--//wrap-->
		</main>
		<!--//main-->
		
		
	  </form>
	<!--footer-->
    <%@ include file="resources/Footer.jsp" %>
    <!--//footer-->
	
	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>


