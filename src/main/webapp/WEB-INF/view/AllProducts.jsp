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

	<div id="all">

        <header>




        </header>

        
            <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>All Products</h1>
                    </div>
                    </div>
            </div>
        </div>

     
			<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item" height="45px"
						ng-repeat="p in plo">
						
						 <div class="col-md-9 product-model-sec">
					 <a href="single.html"><div class="product-grid">
										
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="resources/img/PImage/{{p.pid}}.jpg" class="img-responsive" alt="">
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>{{p.pname}}</h4>								
								<span class="item_price">Rs.{{p.ppriceperunit}}</span>
																<div class="ofr">
								  <p class="pric1"><del>Rs 380</del></p>
						          <p class="disc">[15% Off]</p>
								</div>
								<input type="button" class="item_add items" value="In Stock">
								<a href="singleprod?getpid={{p.pid}}"><input type="button" class="item_add items" value="View"></a>
								<div class="clearfix"> </div>
							</div>												
							
						</div>
					</div>	
						
							
						</div>
						</div>
						
						</body>
		
				
		
        <!-- *** COPYRIGHT ***
_________________________________________________________ -->

        <div id="copyright">
            <div class="container">
                <div class="col-md-12">
                   <p>© 2017  Lorel India. All Rights Reserved | Design by  M.S.Swasthik </p>
                   <div class="clearfix"></div> 
                </div>
            </div>
        </div>
        <!-- /#copyright -->

        <!-- *** COPYRIGHT END *** -->



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
	