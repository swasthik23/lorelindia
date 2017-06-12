<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta name="resources/css/robots" content="all,follow">
    <meta name="resources/css/googlebot" content="index,follow,snippet,archive">
    <meta name="resources/css/viewport" content="width=device-width, initial-scale=1">
    
    <meta name="resources/css/keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
     Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    
<title>Lorel India-Single Product</title>

<meta name="resources/css/keywords" content="">

<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800" rel='stylesheet' type='text/css'>

<!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="resources/css/font-awesome.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/3.3.6/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="resources/css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="resources/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="resources/css/custom.css" rel="stylesheet">
    <link href="resoures/css/owl.carousel.css" rel="stylesheet">
    <link href="resources/css/owl.theme.css" rel="stylesheet">


<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="resources/js/jquery.min.js"></script>
<!--//theme style-->


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->

<script src="resources/js/simpleCart.min.js"> </script>
<!-- start menu -->

<link href="resources/css/memenu.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="resources/js/memenu.js"></script>

<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->

<link href="resources/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />



<script src="resources/js/angular.js"></script>


<script>
	
	var productlist=${productsobject};
	
	
	angular.module('lorelindia', []).controller('ProductController',
			function($scope) {
				$scope.plo=productlist;
				
			});
</script>

</head>


<body ng-app="lorelindia" ng-controller="ProductController">

<div>        
 <div id="heading-breadcrumbs">
            <div class="container">
                <div class="logo">
					<h1><a href="index">Lorel India</a></h1>					
				</div>
				<div class="cart box_1">
				 <a href="checkout.html">
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)
					</div>
					<i class="fa fa-shopping-cart"></i>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
            </div>
        </div>

      <div class="panel animated fadeInUp delay-05s" id="panel-2">
			<div class="panel-heading">
				<span class="lead"></span>
			</div>
			<!-- end panel2 heading -->
			<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item" height="45px">
						
  <div class="product">
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/si.jpg">
									<div class="thumb-image"> <img src="resources/img/PImage/{{plo.pid}}.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
																 
							  </ul>
						</div>	
										 					 
					 <script src="resources/js/imagezoom.js"></script>
						<script defer src="resources/js/jquery.flexslider.js"></script>
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						 <h4>{{plo.pname}}</h4>							
							<h5 class="item_price">Rs.{{plo.ppriceperunit}}</h5>							
							
							<div class="prdt-info-grid">
								 <ul>
									 <li>- Product ID          : {{plo.pid}}</li>
									 <li>- Product Description : {{plo.pdescription}}</li>
									 <li>- Product Quantity    :{{plo.pquantity}}</li>
									
								 </ul>
							</div>
							<div class="check">
							 <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Enter pin code for delivery &amp; availability</p>
							 <form class="navbar-form">
								  <div class="form-group">
									<input type="text" class="form-control" placeholder="Enter Pin code">
								  </div>
								  <button type="submit" class="btn btn-default">Verify</button>
							 </form>
						    </div>
							<a href="#" class="add-cart item_add">ADD TO CART</a>							
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
	     </div>
		 </div>
		 </li>
		 </ul>
		 </div>
       

        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

        <div id="copyright">
            <div class="container">
                <div class="col-md-12">
                    <p class="pull-left">&copy; 2017.Lorel India</p>
                    
                </div>
            </div>
        </div>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    <!-- #### JAVASCRIPT FILES ### -->

    <script src="resources/js/jquery/1.11.0/jquery.min.js"></script>
    <script>
        window.jQuery || document.write('<script src="resources/js/jquery-1.11.0.min.js"><\/script>')
    </script>
    <script src="resources/js/3.3.2/js/bootstrap.min.js"></script>

    <script src="resources/js/jquery.cookie.js"></script>
    <script src="resources/js/waypoints.min.js"></script>
    <script src="resources/js/jquery.counterup.min.js"></script>
    <script src="resources/js/jquery.parallax-1.1.3.js"></script>
    <script src="resources/js/front.js"></script>

    



</body>

</html>
	