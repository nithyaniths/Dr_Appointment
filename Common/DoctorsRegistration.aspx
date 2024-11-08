﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="DoctorsRegistration.aspx.cs" Inherits="Common_DoctorsRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Therapeutic a Medical Category Flat Bootstrap Responsive website Template | Home :: w3layouts</title>

    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Therapeutic web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--// Meta tag Keywords -->

    <!-- css files -->
    <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/font-awesome.css">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="../Therapeutic/TherapueticWeb/css/jquery-ui.css" />
    <!-- Date-script-CSS -->
    <link href="../Therapeutic/TherapueticWeb/css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
    <!-- Time-script-CSS -->
    <!-- //css files -->

    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Convergence" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=ABeeZee:400,400i" rel="stylesheet">
    <!-- //online-fonts -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                          <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" style="font-size:medium;color:#00a0f0" aria-haspopup="true" aria-expanded="false">REGISTRATION</a>
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

        <form runat="server">
            <div class="tips w3agile" id="content" style="margin: 0 auto">
                <div class="container">
                    <h2 class="text-success text-center">DOCTOR'S REGISTRATION FORM</h2>
                    <div class="container" style="border: double; padding: 20px">

                        <div class="row">
                            <div class="col-md-3">
                            <asp:Image ID="imgphoto" CssClass="img-thumbnail" Style="margin-right: 900px" runat="server" Height="135px" Width="191px" />
                            <asp:FileUpload ID="fulphoto" runat="server" />
                                </div>
                            <div class="col-md-3" style="padding-top:102px">
                            <asp:Button ID="Button1" CssClass="btn btn-primary" Style="margin-right: 900px" runat="server" Text="Upload" OnClick="Button1_Click" />
                        </div>
                            </div>

                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">NAME</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px">
                                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">AGE</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px"">
                                <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row" style="padding-top:5px;text-align:left ">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">GENDER</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px"">
                                <asp:RadioButtonList ID="rdogender" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">PLACE</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px"">
                                <asp:TextBox ID="txtplace" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                            <div class="row" style="padding-top: 5px;text-align:left">
                                <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                    <asp:Label Style="font-weight: bold" runat="server">MOBILE NO</asp:Label>
                                </div>
                                <div class="col-md-8" style="padding-right:100px">
                                    <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="row" style="padding-top: 5px;text-align:left">
                                <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                    <asp:Label Style="font-weight: bold" runat="server">EMAIL</asp:Label>
                                </div>
                                <div class="col-md-8" style="padding-right:100px">
                                    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter email" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="row" style="padding-top: 5px;text-align:left">
                                <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                    <asp:Label Style="font-weight: bold" runat="server">PASSWORD</asp:Label>
                                </div>
                                <div class="col-md-8" style="padding-right:100px">
                                    <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="row" style="padding-top: 5px;text-align:left">
                                <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                    <asp:Label Style="font-weight: bold" runat="server">VERIFY PASSWORD</asp:Label>
                                </div>
                                <div class="col-md-8" style="padding-right:100px">
                                    <asp:TextBox ID="txtconfirm" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <h2 class="text-center text-success" style="padding-top:10px;padding-bottom:10px">ACADEMIC DETAILS</h2>

                            <div class="row" style="padding-top: 5px;text-align:left">
                                <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                    <asp:Label Style="font-weight: bold" runat="server">SPECIALISED IN</asp:Label>
                                </div>
                                <div class="col-md-8" style="padding-right:100px">
                                    <asp:DropDownList ID="ddlspecial" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Orthopedics</asp:ListItem>
                                        <asp:ListItem>Gynecology</asp:ListItem>
                                        <asp:ListItem>Pediatrics</asp:ListItem>
                                        <asp:ListItem>Radiology</asp:ListItem>
                                        <asp:ListItem>Ophthalmology</asp:ListItem>
                                        <asp:ListItem>General Surgery</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                    
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">LANGUAGE KNOWN</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                                <asp:DropDownList ID="ddllanguage" runat="server">
                                    <asp:ListItem>Select Language</asp:ListItem>
                                    <asp:ListItem>Malayalam</asp:ListItem>
                                    <asp:ListItem>English</asp:ListItem>
                                    <asp:ListItem>Hindi</asp:ListItem>
                                    <asp:ListItem>Kannada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">YEAR OF CLINICAL EXPERIENCE</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-bottom:10px"">
                                <asp:TextBox ID="txtyear" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px;padding-bottom:10px"">
                                <asp:Label Style="font-weight: bold" runat="server">EDUCATION QUALIFICATION</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px">
                                <asp:TextBox ID="txtedu" runat="server" CssClass="form-control" Height="102px" Width="194px" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 5px;text-align:left">
                            <div class="col-md-4" style="padding-left:60px;padding-top:5px">
                                <asp:Label Style="font-weight: bold" runat="server">AWARD/PUBLICATIONS(IF ANY)</asp:Label>
                            </div>
                            <div class="col-md-8" style="padding-right:100px;padding-top:10px">
                                
                                <asp:TextBox ID="txtaward" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="text-center" style="padding-bottom: 20px;padding-top:10px">
            <asp:Button ID="Button2" runat="server" CssClass="btn  btn-primary" OnClick="Button2_Click1" Text="SUBMIT" ForeColor="white" />
        </div>

                     
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
                                <div class="clearfix"></div>
                            </div>
                            <div class="ftr-address">
                                <div class="local">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                </div>
                                <div class="ftr-text">
                                    <p>+1 (512) 154 8176</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="ftr-address">
                                <div class="local">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                </div>
                                <div class="ftr-text">
                                    <p><a href="mailto:info@example.com">info@example.com</a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
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
