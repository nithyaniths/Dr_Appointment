<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Common_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <title>Therapeutic a Medical Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Therapeutic web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
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
                                        <li><a href="Login.aspx" role="button" style="font-size:large;color:#00a0f0" >HOME<strong></strong></a></li>
                                     <li class="dropdown menu__item menu__item--current">
                                          <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" style="font-size:medium;color:#00a0f0" role="button" aria-haspopup="true" aria-expanded="false">REGISTRATION</a>
                                            <ul class="dropdown-menu">
                                               <li><a href="Registration.aspx">Patient Registration</a></li>
                                               <li><a href="DoctorsRegistration.aspx">Doctor Registraion</a></li>
                                            </ul>
                                       </li>                                                                                                                     
                                        <li><a href="../Patient/mail.html" style="font-size:medium;color:#00a0f0">Mail Us</a></li>
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
     <form  runat="server">
         <div class="tips w3agile" id="content" style="margin:0 auto">

              <h2 class="text-success text-center">REGISTRATION FORM</h2>
              <div class="container" style=" border:double; padding:30px">
   
   
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">NAME</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px">
                              <asp:TextBox runat="server" ID="txtname" CssClass="form-control" ></asp:TextBox>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">GENDER</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:13px">
                             <asp:RadioButtonList ID="radiobtn" runat="server">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">AGE</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px">
                             <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">ADDRESS</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                              <asp:TextBox ID="txtaddress" runat="server" Height="113px" Width="400px" TextMode="MultiLine" CssClass="col-xs-offset-0"></asp:TextBox>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">MOBILE NO</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                              <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobile" ErrorMessage="Invalid MobileNo" ForeColor="Red" ValidationExpression="^\d{10,12}$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">EMAIL</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                               <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">PASSWORD</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px">
                               <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                   <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">CONFIRM PASSWORD</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                              <asp:TextBox ID="txtconfirm" CssClass="form-control" BorderWidth=""  runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirm" ErrorMessage="not match" ForeColor="Red"></asp:CompareValidator>
        
                            </div>
                        </div>
            <div class="text-center" style="padding-bottom:20px;padding-top:10px">
                 <asp:Button  ID="Button1" CssClass="btn btn-primary" runat="server"  ForeColor="White"  OnClick="Button1_Click" Text="REGISTER" />
            </div>
  
  
             </div>
             </div>
           </form>

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
                    <div class="copyrights">
                        <p>&copy; 2017 Therapeutic. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="../Therapeutic/TherapueticWeb/js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="../Therapeutic/TherapueticWeb/js/bootstrap.js"></script> 


    <script src="../Therapeutic/TherapueticWeb/js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: false,
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
                pager: false,
                nav: true,
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
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    items: 1,
                    lazyLoad: true,
                    autoPlay: true,
                    navigation: false,
                    navigationText: false,
                    pagination: true,
                });
            });
        </script>
        </body>
</asp:Content>



