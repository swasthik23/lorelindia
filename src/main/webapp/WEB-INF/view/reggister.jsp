<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="resources/css/robots" content="all,follow">
    <meta name="resources/css/googlebot" content="index,follow,snippet,archive">
    <meta name="resources/css/viewport" content="width=device-width, initial-scale=1">

    <title>Lorel India-About Us</title>

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

</head>
<body>


    <div id="all">
       <jsp:include page="navvbar.jsp"></jsp:include>
       
       
       
             
        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>New account / Sign in</h1>
                    </div>
                    </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">New account</h2>

                            <p class="lead">Not our registered customer yet?</p>
                            <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                            <p class="text-muted">If you have any questions, please feel free to <a href="contactus">contact us</a>, our customer service center is working for you 24/7.</p>

                            <hr>

                            <form:form action="reguser" method="post" modelAttribute="User">
                                <div class="form-group">
                                    <label for="name-login">Name</label>
                                    <form:input type="text" class="form-control" id="name-login" path="uname"/>
                                </div>
                                <div class="form-group">
                                    <label for="email-login">Email</label>
                                    <form:input type="text" class="form-control" id="email-login" path="uemail"/>
                                </div>
                                <div class="form-group">
                                    <label for="password-login">Password</label>
                                    <form:input type="password" class="form-control" id="password-login" path="upassword"/>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-user-md"></i> Register</button>
                                </div>
                            </form:form>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="box">
                            <h2 class="text-uppercase">Login</h2>

                            <p class="lead">Already our customer?</p>
                            <p class="text-muted">Login with us new world of fashion, fantastic discounts and much more opens to you!</p>
                            <br>
                            <p> If you have any questions, please feel free to <a href="contactus">contact us</a>, our customer service center is working for you 24/7.</p>

                            <hr>

                            <form:form action="userlog" method="post" modelAttribute="login">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <form:input type="text" class="form-control" id="email" path="aemail"/>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <form:input type="password" class="form-control" id="password" path="apassword"/>
                                </div>
                                <div class="text-center">
                                <br>
                                <br>
                                <br>
                                <br>
                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-sign-in"></i> Log in</button>
                                </div>
                            </form:form>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


      
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




    </div>
    <!-- /#all -->


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