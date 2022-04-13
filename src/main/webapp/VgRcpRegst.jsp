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
	
<link rel="stylesheet" href="resources/css/styleHeader.css" />
<link rel="stylesheet" href="resources/css/styleFooter.css" />
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
		
	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="VgMain.jsp" title="Home">Home</a></li>
					<li>Submit a recipe</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>Add a new recipe</h1>
				</header>
					
				<!--content-->
				<section class="content full-width">
					<div class="submit_recipe container">
						<form>
							<section>
								<h2>Basics</h2>
								<p>All fields are required.</p>
								<div class="f-row">
									<div class="full"><input type="text" placeholder="Recipe title" /></div>
								</div>
								<div class="f-row">
									<div class="third"><input type="text" placeholder="Preparation time" /></div>
									<div class="third"><input type="text" placeholder="Cooking time" /></div>
									<div class="third"><input type="text" placeholder="Difficulty" /></div>
								</div>
								<div class="f-row">
									<div class="third"><input type="text" placeholder="Serves how many people?" /></div>
									<div class="third"><select><option selected="selected">Select a category</option></select></div>
								</div>
							</section>
							
							<section>
								<h2>Description</h2>
								<div class="f-row">
									<div class="full"><textarea placeholder="Recipe title"></textarea></div>
								</div>
							</section>	
							
							<section>
								<h2>Ingredients</h2>
								<div class="f-row ingredient">
									<div class="large"><input type="text" placeholder="Ingredient" /></div>
									<div class="small"><input type="text" placeholder="Quantity" /></div>
									<div class="third"><select><option selected="selected">Select a category</option></select></div>
									<button class="remove">-</button>
								</div>
								<div class="f-row full">
									<button class="add">Add an ingredient</button>
								</div>
							</section>	
							
							<section>
								<h2>Instructions <span>(enter instructions, each step at a time)</span></h2>
								<div class="f-row instruction">
									<div class="full"><input type="text" placeholder="Instructions" /></div>
									<button class="remove">-</button>
								</div>
								<div class="f-row full">
									<button class="add">Add a step</button>
								</div>
							</section>
							
							<section>
								<h2>Photo</h2>
								<div class="f-row full">
									<input type="file" />
								</div>
							</section>	
							
							<section>
								<h2>Status <span>(would you like to further edit this recipe or are you ready to publish it?)</span></h2>
								<div class="f-row full">
									<input type="radio" id="r1" name="radio"/>
									<label for="r1">I am still working on it</label>
								</div>
								<div class="f-row full">
									<input type="radio" id="r2" name="radio"/>
									<label for="r2">I am ready to publish this recipe</label>
								</div>
							</section>
							
							<div class="f-row full">
								<input type="submit" class="button" id="submitRecipe" value="Publish this recipe" />
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
	
	
    <!--footer-->
    <%@ include file="resources/Footer.jsp" %>
    <!--//footer-->
	
	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
</body>
</html>


