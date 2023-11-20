<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Common_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
  
 
        <title>Therapeutic a Medical Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>

        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Therapeutic web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
             addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--// Meta tag Keywords -->
        <!-- css files -->
        <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
        <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/style.css" type="text/css" media="all" /> <!-- Style-CSS -->
        <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/jquery-ui.css" /> <!-- Date-script-CSS -->
        <link href="../Therapeutic/TherapueticWeb/css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" /> <!-- Time-script-CSS -->
        <!-- //css files -->
        <!-- online-fonts -->
        <link href="//fonts.googleapis.com/css?family=Convergence" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=ABeeZee:400,400i" rel="stylesheet">
        <!-- //online-fonts -->
   
    <script type="text/javascript" src="../Scripts/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../Scripts/js/jquery-1.8.3.min.js"></script>

    <link href="../Scripts/css/bootstrap.min_style.css" rel="stylesheet" media="screen" />


   
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">	
    
	<body>
    
        <div class="Main-agile">
            <!-- banner -->
            <div class="banner">
                <div class="container">
                    <div class="col-md-4 agile1">
                        <nav class="navbar ">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                                <nav class="stroke">
                                    <ul class="nav navbar-nav">
                                        <li><a role="button" aria-haspopup="true" aria-expanded="false" style="font-size:large;color:#00a0f0"  class="popup-with-zoom" id="btnShowLogin">LOGIN<strong></strong></a></li>
                                     <li class="dropdown menu__item menu__item--current">
                                          <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" style="font-size:medium;color:#00a0f0" aria-haspopup="true" aria-expanded="false">REGISTRATION</a>
                                            <ul class="dropdown-menu">
                                               <li><a href="Registration.aspx">PATIENT REGISTRATION</a></li>
                                               <li><a href="DoctorsRegistration.aspx">DOCTOR REGISTRATION</a></li>
                                            </ul>
                                       </li>                                                                                                                     
                                       <%-- <li><a href="mail.html" style="font-size:medium;color:#00a0f0">MAIL US</a></li>--%>
                                    </ul>
                                </nav>
                            </div>
                            <!-- /.navbar-collapse -->
                        </nav>
                    </div>
                    <div class="col-md-4 logo">
                        <div class="logo-w3l">
                            <i class="fa fa-stethoscope" aria-hidden="true"></i>
                        </div>
                        <h1><a>Therapeutic<span>Care For you</span></a></h1>
                    </div>
                    <div class="col-md-4 ph-agile">
                        <p><i class="fa fa-phone" aria-hidden="true"></i><span>+00 28 28 28 85</span></p>
                    </div>
                    <div class="clearfix"> </div>
                    <!-- banner-text -->
          <div class="slider" style="padding-top:100px">
				<div class="callbacks_container">
					<ul class="rslides callbacks callbacks1" id="slider4">
						<li>
							<div class="w3layouts-banner-top">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>Best Treatments</h3>
										<p>We Provide the Best Medical Services.</p>
									</div>	
								</div>
							</div>
						</li>
						<li>
							<div class="w3layouts-banner-top">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>We Provide</h3>
										<p>Medical Services that you can Trust.</p>
									</div>	
								</div>
							</div>
						</li>
						<li>
							<div class="w3layouts-banner-top">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>Better Technology</h3>
										<p>We Care About Your Health.</p>
									</div>	
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				
				<!-- //banner-text -->
			</div>
                </div>
                
            </div>
        </div>
     
        <!-- what-we-do -->
        
        <!-- //what-we-do -->
        <!-- Services -->
        <div class="feature-w3l">
            <div class="container">
                <h3 class="tittle">Our services <span></span></h3>
                <div class="feature-grids">
                    <div class="col-md-3 feature-grid">
                        <div class="icons-w3">
                            <i class="fa fa-user-md" aria-hidden="true"></i>
                        </div>
                        <h4>Review service</h4>
                        <span></span>
                        <p>esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </div>
                    <div class="col-md-3 feature-grid">
                        <div class="icons-w3">
                            <i class="fa fa-medkit" aria-hidden="true"></i>
                        </div>
                        <h4>Choose best practice</h4>
                        <span></span>
                        <p>esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </div>
                    <div class="col-md-3 feature-grid">
                        <div class="icons-w3">
                            <i class="fa fa-ambulance" aria-hidden="true"></i>
                        </div>
                        <h4>Book appointment</h4>
                        <span></span>
                        <p>esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </div>
                    <div class="col-md-3 feature-grid">
                        <div class="icons-w3">
                            <i class="fa fa-hospital-o" aria-hidden="true"></i>
                        </div>
                        <h4>Medical professionals</h4>
                        <span></span>
                        <p>esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
       
    
        <div class="footer w3ls">
            <div class="container">
                <div class="footer-main">
                    <div class="footer-top">
                        <div class="col-md-4 services-grids">
                            <h3>About Us</h3>
                            <ul>
                                <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="single.html">Lorem ipsum dolor sit amet, consectetur.</a></li>
                                <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="single.html">do eiusmod tempor incididunt ut labore.</a></li>
                                <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="single.html">et dolore magna aliqua.</a></li>
                                <li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="single.html">onec dut quam lscel quam erisque.</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4 ftr-grid">
                            <div class="logo-fo">
                                <div class="logo-w3l">
                                    <i class="fa fa-stethoscope" aria-hidden="true"></i>
                                </div>
                                <h2><a href="index.html">Therapeutic<span>Care For you</span></a></h2>
                            </div>
                        </div>
                        <div class="col-md-4 ftr-grid fg2">
                            <h3>Our Address</h3>
                            <div class="ftr-address">
                                <div class="local">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </div>
                                <div class="ftr-text">
                                    <p>Lorem ipsum dolor sit amet.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="ftr-address">
                                <div class="local">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </div>
                                <div class="ftr-text">
                                    <p>+1 (512) 154 8176</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="ftr-address">
                                <div class="local">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </div>
                                <div class="ftr-text">
                                    <p><a href="mailto:info@example.com">info@example.com</a></p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="right-w3l">
                        <ul class="top-links">
                            <li class="get-w3"><a href="mail.html"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>Get In Touch</a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- //Footer -->
        <!-- js-scripts -->
        <!-- js -->
        <script type="text/javascript" src="../Therapeutic/TherapueticWeb/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="../Therapeutic/TherapueticWeb/js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap -->
        <!-- //js -->
        <!-- Baneer-js -->

          <!--popupbox-->


        <form runat="server">
        <div class="modal fade" id="LoginModel" tabindex="-1" role="dialog" aria-labelledby="ModalTitle" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header"  style="text-align:center;background-color:#428bca;color:white">
                             
							<h4 class="modal-title"  id="ModalTitle">LOGIN PAGE</h4>
								</div>
                        <div class="modal-body">
								<label for="txtemail">EMAIL</label>																
								<asp:TextBox runat="server" Placeholder="Email"  CssClass="form-control" ID="txtemail" ></asp:TextBox> 
								<label for="txtpassword">PASSWORD</label>
								<asp:TextBox runat="server" Placeholder="Password" CssClass="form-control" ID="txtpassword" ></asp:TextBox><span class='glyphicon glyphicon-ok form-control-feedback'></span>																												
						</div>
                        <div class="modal-footer" style="text-align:center;background-color:#428bca">
                             <asp:Label ID="lblmsg"  ForeColor="White" runat="server"></asp:Label>
					 <asp:Button ID="btnlogin" runat="server" CssClass="btn"  ForeColor="Red" OnClick="btnlogin_Click" Text="SUBMIT" />
                        </div>
					</div>
				</div>
			</div>
      </form>

        <script src="../Therapeutic/TherapueticWeb/js/responsiveslides.min.js"></script>
        <script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });

						});
        </script>
        <script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });

								});
        </script>


        <!--popup-->

        <script type="text/javascript">
            $(function () {
                $("#btnShowLogin").click(function () {
                    $('#LoginModel').modal('show');
                });
            });
        </script>

        <!-- //Baneer-js -->
        <!-- Calendar -->
        <script src="../Therapeutic/TherapueticWeb/js/jquery-ui.js"></script>
        <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
        </script>
        <!-- //Calendar -->
        <!-- Time -->
        <script type="text/javascript" src="../Therapeutic/TherapueticWeb/js/wickedpicker.js"></script>
        <script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
        </script>
        <!-- //Time -->
        <!-- jarallax-js -->
        <script src="../Therapeutic/TherapueticWeb/js/jarallax.js"></script>
        <script src="../Therapeutic/TherapueticWeb/js/SmoothScroll.min.js"></script>
        <script type="text/javascript">
				/* init Jarallax */
				$('.jarallax').jarallax({
					speed: 0.5,
					imgWidth: 1366,
					imgHeight: 768
				})
        </script>
        <!-- //jarallax-js -->
        <!-- for-Testimonials -->
        <!-- required-js-files-->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <script src="../Therapeutic/TherapueticWeb/js/owl.carousel.js"></script>
        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							        items : 1,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation : false,
							        navigationText :  false,
							        pagination : true,
							      });
							    });
        </script>

       

        <!--//required-js-files-->
        <!-- //for-Testimonials -->
        <!-- //js-scripts -->
    </body>
        
</asp:Content>






