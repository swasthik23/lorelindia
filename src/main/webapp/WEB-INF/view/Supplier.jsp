<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="resources/css/robots" content="all,follow">
    <meta name="resources/css/googlebot" content="index,follow,snippet,archive">
    <meta name="resources/css/viewport" content="width=device-width, initial-scale=1">

    <title>Supplier Registration Form</title>

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
    <script src="resources/js/angular.js"></script>


<script>
	var suplist = ${suplistfinal};
	
	angular.module('lorelindia', []).controller('SupplierController',
			function($scope) {
				$scope.slo = suplist;
			
			});
</script>


</head>

<body ng-app="lorelindia" ng-controller="SupplierController">


    <div id="all">
        <header>

            <jsp:include page="navvbar.jsp"></jsp:include>

        </header>

      
        <div id="heading-breadcrumbs">
            <div class="container">
                    <div class="col-md-7">
                        <h1>Supplier Registration Form</h1>
                    </div>
                </div>
            </div>

    
                    <div class="container">
                            <div class="heading">
                                <h3 class="text-uppercase">Supplier details</h3>
                            </div>
                            <div>

                            <form:form action="Supuser" modelAttribute="Supplier" >
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Supplier ID</label>
                                            <form:input type="text" class="form-control" id="sid" path="sid"/>
                                        
                                            <label>Supplier name</label>
                                            <form:input type="text" class="form-control" id="sname" path="sname"/>
                                            
                                            <label>Supplier Contact</label>
                                            <form:input type="text" class="form-control" id="scontact" path="scontact"/>
                                            
                                            <label>Supplier Address</label>
                                            <form:input type="text" class="form-control" id="saddress" path="saddress"/>
                                            
                                            <label>Supplier Email</label>
                                            <form:input type="text" class="form-control" id="semail" path="semail"/>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-12 text-center">
                                    <c:if test="${check}">
                                        <form:button type="submit" class="btn btn-template-main" name="add"><i class="fa fa-user-md"></i>ADD SUPPLIER</form:button>
                                         </c:if>
                                        <c:if test="${!check}">
                                       <form:button type="submit" class="btn btn-template-main" name="edit"><i class="fa fa-user-md"></i>EDIT SUPPLIER</form:button>
							             </c:if>
							             
					

                                    </div>

                                </div>

                            </form:form>

</div>

                            </div>
                         
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
			<div class="panel-heading" style="background-color: orange;">
				<span class="lead">Supplier List</span>
			</div>
			<!-- end panel2 heading -->
			<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item" height="45px"
						ng-repeat="s in slo">
						<table style="width: 100%">
							<tr>
								<td class="col-md-5">
									<ul>
										<li><span><b>Supplier Id      : </b></span>{{s.sid}}</li>
										<li><span><b>Supplier Name    : </b></span>{{s.sname}}</li>
										<li><span><b>Supplier Contact : </b></span>{{s.scontact}}</li>
										<li><span><b>Supplier E-mail  :</b></span>{{s.semail}}</li>
										<li><span><b>Supplier Address : </b></span>{{s.saddress}}</li>
									</ul>
								</td>
								<td class="col-md-3"><a href="editingsupplier?getsid={{s.sid}}"><button id="editbuttons" 
											type="submit" class="btn" style="background-color: Lightgreen;">Edit</button></a> <a
									href="removingsupplier/{{s.sid}}"><button id="removebuttons"
											type="button" class="btn" style="background-color: Lightred;">Remove</button></a></td>
							</tr>
						</table>
					</li>
				</ul>
			</div>
			<!-- panel2 body end -->
                            </div>
                            
</div>

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
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.cookie.js"></script>
    <script src="resources/js/waypoints.min.js"></script>
    <script src="resources/js/jquery.counterup.min.js"></script>
    <script src="resources/js/jquery.parallax-1.1.3.js"></script>
    <script src="resources/js/front.js"></script>

    
</body>

</html>