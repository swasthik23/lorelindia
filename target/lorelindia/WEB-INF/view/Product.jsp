<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="resources/css/robots" content="all,follow">
    <meta name="resources/css/googlebot" content="index,follow,snippet,archive">
    <meta name="resources/css/viewport" content="width=device-width, initial-scale=1">

    <title>Lorel India-Product</title>

    <meta name="resources/css/keywords" content="">

    <link href="resources/css/fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800" rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="resources/css/font-awesome.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="resources/css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="resources/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="resources/css/custom.css" rel="stylesheet">
    <link href="resoures/css/owl.carousel.css" rel="stylesheet">
    <link href="resources/css/owl.theme.css" rel="stylesheet">



<body>
<script src="resources/js/angular.js"></script>


<script>
	var categorylist = ${catlistfinal};
	var productlist=${productsobject};
	var supplierlist = ${suplistfinal};
	angular.module('lorelindia', []).controller('ProductController',
			function($scope) {
				$scope.clo = categorylist;
				$scope.slo= supplierlist;
				$scope.plo=productlist;
			});
</script>


</head>

<body ng-app="lorelindia" ng-controller="ProductController">
<jsp:include page="navvbar.jsp"></jsp:include>

	<div id="all">
		<header>

			

		</header>



		<div id="heading-breadcrumbs">
			<div class="container">
				<div class="col-md-7">
					<h1>Product Entry</h1>
				</div>
			</div>
		</div>


		<div class="container">
			<div class="heading">
				<h3 class="text-uppercase">Product Details</h3>
			</div>

			<form:form action="Prouser" modelAttribute="Product" enctype="multipart/form-data">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
						
						<label>Product ID</label>
							<form:input type="text" class="form-control" id="pid"
								path="pid" />
						
							<label>Product Name</label>
							<form:input type="text" class="form-control" id="pname"
								path="pname" />

							<label>Product Quantity</label>
							<form:input type="text" class="form-control" id="pquantity"
								path="pquantity" />

							<label>Product Description</label>
							<form:input type="text" class="form-control" id="pdescription"
								path="pdescription" />

							<label>Product Price Per Unit</label>
							<form:input type="text" class="form-control" id="ppriceperunit"
								path="ppriceperunit" />
<br>
<br>
							<label>Product Category</label>
							<form:select path="pcateory" >
							<form:option ng-repeat="c in clo" value="{{c.cid}}">  {{c.cname}}</form:option></form:select>

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

							<label>Product Supplier</label>
							<form:select path="psupplier" >
							<form:option ng-repeat="s in slo" value="{{s.sid}}">  {{s.sname}}</form:option></form:select>
						
							<label>Product Image</label>
							<form:input path="PImage" type="file" class="form-control" id="PImage"/>
						</div>
					</div>
                                    <div class="col-sm-12 text-center">
                                    <c:if test="${check}">
                                        <form:button type="submit" class="btn btn-template-main" name="add"><i class="fa fa-user-md"></i>ADD PRODUCT</form:button>
                                         </c:if>
                                        <c:if test="${!check}">
                                       <form:button type="submit" class="btn btn-template-main" name="edit"><i class="fa fa-user-md"></i>EDIT PRODUCT</form:button>
							             </c:if>
							             
					

                                    </div>

				</div>

			</form:form>
		</div>
		<br>


<div class="panel animated fadeInUp delay-05s" id="panel-2">
			<div class="panel-heading" style="background-color: orange;">
				<span class="lead">Products List</span>
			</div>
			<!-- end panel2 heading -->
			<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item" height="45px"
						ng-repeat="p in plo">
						<table style="width: 100%">
							<tr>
								<td class="col-md-2"> <img class="img-responsive" style="width:125px ;height:150px" src="resources/img/PImage/{{p.pid}}.jpg" />
								</td>
								
								<td class="col-md-7">
									<ul>
										<li><span><b>Product Id         : </b></span>{{p.pid}}</li>
										<li><span><b>Product Name       : </b></span>{{p.pname}}</li>
										<li><span><b>Product Quantity   : </b></span>{{p.pquantity}}</li>
										<li><span><b>Product Price      :Rs.</b></span>{{p.ppriceperunit}}</li>
										<li><span><b>Product Description: </b></span>{{p.pdescription}}</li>
										<li><span><b>Supplier Id        : </b></span>{{p.psupplier}}</li>
										<li><span><b>Category Id        : </b></span>{{p.pcateory}}</li>
									</ul>
								</td>
								<td class="col-md-4"><a href="editingproduct?getpid={{p.pid}}"><button id="editbuttons"
											type="submit" class="btn" style="background-color: Lightgreen;">Edit</button></a> <a
									href="removingproduct/{{p.pid}}"><button id="removebuttons"
											type="button" class="btn" style="background-color: Lightred;">Remove</button></a></td>
							</tr>
						</table>
					</li>
				</ul>
			</div>
			<!-- panel2 body end -->
		</div>
		<!-- panel2 end -->
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
		window.jQuery
				|| document
						.write('<script src="resources/js/jquery-1.11.0.min.js"><\/script>')
	</script>
	<script src="resources//js/bootstrap.min.js"></script>

	<script src="resources/js/jquery.cookie.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/jquery.parallax-1.1.3.js"></script>
	<script src="resources/js/front.js"></script>


</body>

</html>