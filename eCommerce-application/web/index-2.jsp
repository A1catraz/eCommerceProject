<%-- 
    Document   : index-2
    Created on : Nov 28, 2013, 1:10:36 PM
    Author     : General
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="ecommerce.business.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1, maximum-scale=1" />
		<meta name="viewport" content="width=device-width" />
		<title>BESTSHOP</title>
	
	<!-- Font CSS Link -->
	    <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	<!-- Font CSS Link -->	
		
	<!-- Start CSS Link -->
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/custom_responsive.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/menu.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/supermenu.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/bounce_slider.css" type="text/css" media="all" />
		<link rel="stylesheet" href="css/jcarousel.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" media="screen" />	
		<link rel="stylesheet" href="css/grid-list.css" type="text/css" />
		<link rel="stylesheet" href="css/accrodin.css" type="text/css"/>
		<link rel="stylesheet" href="css/ui.css" type="text/css"/>
		<link rel="stylesheet" href="css/jquery.jqzoom.css" type="text/css"/>
	<!-- End CSS Link -->
	
	</head>
	<body>
		<div class="header">
			<div class="container main">
					<div class="row">
					<div class="header_top">
						<div class="currency_translator span5">	
							<div class="currency">
								CURRENCY:
									<select class="select_bg">
										<option value="dollar">DOLLAR</option>
										<option value="euro">EURO</option>
										<option value="taka">TAKA</option>
										<option value="rupe">RUPE</option>
									</select>
							</div>
							<ul class="translator">
								<li class="en"><a class="active" href="#">EN</a></li>
								<li class="en"><a href="#">ES</a></li>
								<li class="en"><a href="#">FR</a></li>
							</ul>				
						</div>
						<div class="account_login span7">
						
							<ul class="account_info">
                                                                <%
                                                                User user;
                                                                if(session.getAttribute("user")!=null){
                                                                    user = (User) session.getAttribute("user");
                                                                %>
                                                                    <li><a href="#"><img alt="" src="images/my_account.png"> Hi <%=user.getFirstName()%> <%=user.getLastName()%></a></li>
                                                                    <li><a href="wish_list.jsp"><img alt="" src="images/mywish_list.png"> MY WISHLIST</a></li>
                                                                    <li><a href="cart.jsp"><img alt="" src="images/shopping_cart.png"> MY CART</a></li>
                                                                    <li><a href="checkout.jsp"><img alt="" src="images/checkout.png"> MY CHECKOUT</a></li>
                                                                    <li><a href="logout">
                                                                        <img alt="" src="images/login.png"> SIGN OUT</a></li>
                                                                <%
                                                                }
                                                                else{
                                                                %>
                                                                    <li><a href="NotSignedIn"><img alt="" src="images/my_account.png"> MY ACCOUNT</a></li>
                                                                    <li><a href="NotSignedIn"><img alt="" src="images/mywish_list.png"> MY WISHLIST</a></li>
                                                                    <li><a href="NotSignedIn"><img alt="" src="images/shopping_cart.png"> MY CART</a></li>
                                                                    <li><a href="NotSignedIn"><img alt="" src="images/checkout.png"> MY CHECKOUT</a></li>
                                                                    <li><a href="log_in.jsp"><img alt="" src="images/login.png"> SIGN IN</a></li>
								<%
                                                                }
                                                                %>
							</ul>
						
						</div>
					</div>
					</div>
					<div class="row">
					<div class="header_top">
						<div class="span4">
							<a href="index-2.jsp">
								<div class="logo"></div>
							</a>
						</div>
						<div class="call_info span4">
							<p>PHONE: <span class="color">1 (234) 56 78 901</span></p>
							<p>Call us Monday - Saturday: 9:00 am - 6:00 pm</p>
						</div>
						<div class="cart_info span3">
							<div class="cart_data">Shopping Cart - $0.00</div>
							<button class="cart_btn btn btn-navbar" data-toggle="collapse" data-target=".item_cart_wrap"><img alt="" src="images/shopping_cart_btn_img.png"></button>
							<div class="item_cart_content">
								<div class="item_cart_wrap collapse">
									<div class="item_cart">
										<p class="item_cart_products">No Products</p>
										<p class="item_cart_info">Shipping - $0.00</p>
										<p class="item_cart_info">Total - $0.00</p>
										<button class="checkout">Checkout</button>
										<button class="cart">Cart</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				
			</div>
		</div>
			
		<div class="navigation navbar">
			
			<div class="row">
				<div class="navbar">
					<div class="container main">
	 
					<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
						<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>
					<!-- Be sure to leave the brand out there if you want it shown -->
	 
					<!-- Everything you want hidden at 940px or less, place within here -->
						<div class="nav-collapse collapse">
						<!-- .nav, .navbar-search, .navbar-form, etc -->
							<ul class="sf-menu">
								<li class="deeper parent current"><a href="index-2.jsp">Home</a></li>
								<li>
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										Men
									</a>
									<ul class="dropdown-menu">
										<li><a href="men.jsp">Dresses</a></li>
										<li><a href="product_details.jsp">Product Details</a></li>
									</ul>
								</li>
								<li class="deeper parent dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										Women
									</a>
									<ul class="dropdown-menu">
										<li><a href="grid.jsp">Dresses</a></li>
										<li><a href="men.jsp">Bags</a></li>
										<li><a href="product_details.jsp">Product Details</a></li>
									</ul>
								</li>
								<li>
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										Kids
									</a>
									<ul class="dropdown-menu">
										<li><a href="men.jsp">Dresses</a></li>
										<li><a href="product_details.jsp">Product Details</a></li>
									</ul>
								</li>
								<li><a href="contact.jsp">Contact Us</a></li>
							</ul>
							<div class="search">
								<input type="search" name="search" placeholder="search">
									<button class="search_btn">
										<img alt="" src="images/icon_search.png">
									</button>
							</div>

						</div>
					
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div class="main_content">

			<div class="container main" id="main-slide">
				<div id="wrapper">
					<div class="slide-content">
						<div class="bounce-slider" id="first">
							<ul>
								<li>
									<p class="bounce-desc right-side"><span>New Modern Dress <br/> Women Summer Collection</span></p>
									<img src="images/slides/slide1.png" alt="image 1"/>
								</li>
								<li>
									<p class="bounce-desc left-side"><span>New Modern Dress <br/> Women Summer Collection</span></p>
									<img src="images/slides/slide2.png" alt="image 2"/>
								</li>
								<li>
									<p class="bounce-desc left-side"><span>New Modern Dress <br/> Women Summer Collection</span></p>
									<img src="images/slides/slide3.png" alt="image 2"/>
								</li>
							</ul>
							<span class="next bounce-nav"></span>	
							<span class="prev bounce-nav"></span>
						</div>
					</div>
				</div>	

			</div>
			<div class="container main">
				<div class="row home-content">
					<div class="span4 feature-content">
						<div id="feature-image_1">
							<img alt="" src="images/feature-content/sweater.png">
						</div>
						<div id="feature-post-content_1">
							<ul>
								<li id="feature-post-content-title_1">Sweater</li>
								<li>Up to</li>
								<li><p id="feature-post-content-discount_1">40%</p><p>off</p></li>
							</ul>
							<ul>
								<li><button class="shop-now">Shop Now</button></li>
							</ul>
						</div>
					</div>
					<div class="span4 feature-content">
						<div id="feature-image_2">
							<img alt="" src="images/feature-content/scarf.png">
						</div>
						<div id="feature-post-content_2">
							<ul>
								<li id="feature-post-content-title_2">Scarf</li>
								<li>Up to</li>
								<li><p id="feature-post-content-discount_2">40%</p><p>off</p></li>
							</ul>
							<ul>
								<li><button class="shop-now">Shop Now</button></li> 
							</ul>
						</div>
					</div>
					<div class="span4 feature-content">
						<div id="feature-image_3">
							<img alt="" src="images/feature-content/dress.png">
						</div>
						<div id="feature-post-content_3">
							<ul>
								<li id="feature-post-content-title_3">Dress</li>
								<li>Up to</li>
								<li><p id="feature-post-content-discount_3">40%</p><p>off</p></li>
							</ul>
							<ul>
								<li><button class="shop-now">Shop Now</button></li> 
							</ul>
						</div>
					</div>					
				</div>			
				
			</div>
			<div class="container main" id="first-carousel-slide">
				<div class="row list_work">
					<h2 class="title-wrap">
						<span>New Products</span>
					</h2>
					<div class="line"></div>
					<ul id="mycarousel" class="jcarousel-skin-tango item da-thumbs">
						<li class="span3 new-product"> 
							<div class="new-product-image">
								
								<a href="#"><img src="images/new-product/01.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">
								<div class="new"></div>							
								<a href="#"><img src="images/new-product/02.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">	
								<a href="#"><img src="images/new-product/03.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">
								<div class="sell"></div>
								<a href="#"><img src="images/new-product/04.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">	
								<a href="#"><img src="images/new-product/01.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">	
								<a href="#"><img src="images/new-product/02.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">	
								<a href="#"><img src="images/new-product/03.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>
						<li class="span3 new-product"> 
							<div class="new-product-image">	
								<a href="#"><img src="images/new-product/04.jpg" alt="" /></a>
							</div>	
							<div class="new-product-info">	
								<div>
									<div class="new-product-price">$500</div>
									<div class="new-product-bg">
										<div class="newE-product-cart_like">
											<div class="new-product-cart_like">
												<div class="new-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
												<div class="new-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
											</div>
										</div>
										<div class="new-product-details"><a href="#">Details</a></div>
									</div>			
								</div>
							</div>
							<div class="new-product-content">
								<div class="new-product-title">
									<a href="#"><p>New Modern Dresses</p></a>
								</div>
								<div class="new-product-content">
									<p>Lorem ipsum dolor sit amet, conse adipiscing elit.</p>
								</div>
							</div>
						</li>						
					</ul>
				</div>	
						
					
			</div>	
			

			<div class="container main" id="second-carousel-slide">
				<div class="row">
				<div class="span8 p_product">
					<div class="list_work">
						<h2 class="title-wrap">
							<span>Popular Products</span>
						</h2>
						<div class="line"></div>
						<div class="slider2 popular_product">
							<ul class="row slide popular_product_wrap-left">
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/1.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/2.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row slide popular_product_wrap-left">
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/3.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/4.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row slide popular_product_wrap-left">
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/1.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/2.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="row slide popular_product_wrap-left">
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/3.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
								<li class="span4 popular_pro">
									<div class="popular_pro_image">	
										<img alt="" src="images/popular-product/4.png">
									</div>
									<div class="popular_pro_info">
										<p class="popular_pro_title">New Modern Dresses</p>
										<p class="popular_pro_content">Lorem ipsum dolor sit amet conse adipising elit. Eliam nutro polos.</p>
										<div class="popular-product-info">	
											<div>
												<div class="popular-product-price">$500</div>
												<div class="popular-product-bg">
													<div class="popular-product-cart_like">
														<div class="popular-product-cart_like">
															<div class="popular-product-cart"><a href="#"><img alt="" src="images/new-product/shoping-info/cart-image.png"></a></div>
															<div class="popular-product-like"><a href="#"><img alt="" src="images/new-product/shoping-info/like-img.png"></a></div>
														</div>
													</div>
													<div class="popular-product-details"><a href="#">Details</a></div>
												</div>			
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
	
					</div>
					<br/>
				</div>
				<div class="span4 feature_product">
					<div class="list_work">
						<h2 class="title-wrap">
							<span>Popular Products</span>
						</h2>
						<div class="line"></div>
						<div class="fslide">
							<ul class="bxslider">
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/1.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/2.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/3.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/1.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/2.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
								<li class="feature_pro">
									<div class="feature_pro_image">	
										<img alt="" src="images/feature-product/3.png">
									</div>
									<div class="feature_pro_info">
										<p class="feature_pro_title">New Modern Dresses</p>
										<p class="feature_pro_content">Lorem ipsum dolor sit amet conse adipising elit.</p>
										<button class="feature_pro_price">$500</button>
									</div>									
								</li>
							</ul>
						</div>

					</div>
				</div>
				</div>
			</div>	
		</div>
			
		<div class="contact_info">
			<div class="container main">
				<ul class="row">
					<li class="follow-us span4">
						<div class="follow-social">Follow us on:</div>
						<div class="social-icon">
							<ul>
								<li class="fb">
									<a href="#"><img alt="" src="images/social/facebook.png"></a>
								</li>
								<li class="tw">
									<a href="#"><img alt="" src="images/social/twitter.png"></a>
								</li>
								<li class="rss">
									<a href="#"><img alt="" src="images/social/rss.png"></a>
								</li>
								<li class="yt">
									<a href="#"><img alt="" src="images/social/youtube.png"></a>
								</li>
							</ul>
						</div>
					</li>
					<li class="span4">
					<div class="free-shipping">
						<div class="free-shipping-wrap">
							<div class="free-shipping-image">
								<img alt="" src="images/social/shiping-truck.png">
							</div>
							<div class="free-shipping-info">
								<div id="free-shipping-info-title">
									Free Shipping
								</div>
								<div id="free-shipping-info">
									On Orders  Over $ 499
								</div>
							</div>
						</div>	
					</div>	
					</li>
					<li class="contact-no span4">
						<div class="contact-no-wrap">
							<div class="contact-no-image">
								<img alt="" src="images/social/telephone.png">
							</div>
							<div class="contact-no-info">
								<div id="contact-no-info-title">
									Order Online
								</div>
								<br/>
								<div id="contact-no-info">
									<p>Phone:</p>
									<p id="nb">1 (234) 56 78 901</p>
								</div>
							</div>
						</div>
					</li>
				</ul>	
			</div>

		</div>
		
		<div class="footer">
			<div class="footer-top">
				<div class="container main" id="footer-top">
					<br/>
					<div class="row">
						<div class="span3 footer-col">
							<div class="widget-info">
								<div class="widget-title">Information</div>
								<div class="line"></div>
								<div class="widget-content">
									<ul>
										<li><a href="#">About Us</a></li>
										<li><a href="#">Customer Service</a></li>
										<li><a href="#">Privacy Policy</a></li>
										<li><a href="#">Site Map</a></li>
										<li><a href="#">Contact Us</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="span3 footer-col">
							<div class="widget-info">
								<div class="widget-title">Why Buy From Us</div>
								<div class="line"></div>
								<div class="widget-content">
									<ul>
										<li><a href="#">Shipping _ Returns</a></li>
										<li><a href="#">Secure Shopping</a></li>
										<li><a href="#">International Shipping</a></li>
										<li><a href="#">Affiliates</a></li>
										<li><a href="#">Group Sales</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="span3 footer-col">
							<div class="widget-info">
								<div class="widget-title">My Account</div>
								<div class="line"></div>
								<div class="widget-content">
									<ul>
										<li><a href="#">Sign In</a></li>
										<li><a href="#">Customer Service</a></li>
										<li><a href="#">My Wishlist</a></li>
										<li><a href="#">Track My Order</a></li>
										<li><a href="#">Help</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="span3 footer-col">
							<div class="widget-info">
								<div class="widget-title">Newsletter</div>
								<div class="line"></div>
								<div class="widget-content">
									<input type="text" name="mail" placeholder="Your E-mail Address">
									<button class="go_btn">Go</button>
									<br/>
									<p>Store Location: <span>8601 Creat Labaratory, New York, D05 86GR</span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container main" id="footer-bottom">
					<div class="row">
						<div class="span8 footer-col">
							Copyright &#169; 2013 <a href="#">Fedimo</a>. All rights reserved.
						</div>
						<div class="span4 footer-col">
							<ul>
								<li><a href="#"><img alt="" src="images/payment-getway/1.png"></a></li>
								<li><a href="#"><img alt="" src="images/payment-getway/2.png"></a></li>
								<li><a href="#"><img alt="" src="images/payment-getway/3.png"></a></li>
								<li><a href="#"><img alt="" src="images/payment-getway/4.png"></a></li>
								<li><a href="#"><img alt="" src="images/payment-getway/5.png"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- Start JS Link -->
		<script src="js/js-engine.js"></script>
		<script type="text/javascript" src="js/menu/jquery.min.js"></script>
		<script type="text/javascript" src="js/menu/superfish.js"></script>
		<script type="text/javascript" src="js/bounceslider/modernizr.js"></script>
		<script type="text/javascript" src="js/bounceslider/jquery.bounceslider.js"></script>
		<script type="text/javascript" src="js/new-product-js/jquery.jcarousel.min.js"> </script>
		<script type="text/javascript" src="js/new-product-js/responsiveslides.min.js"></script>
		<script type="text/javascript" src="js/bxslider/jquery.bxslider.min.js"></script>
		<script type="text/javascript" src="js/bxslider/jquery.bxslider.js"></script>
		<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
		<script type="text/javascript" src="js/mixitup/jquery-ui.sortable.min.js"></script>
		<script type="text/javascript" src="js/mixitup/jquery.ui.touch-punch.min.js"></script>
		<script type="text/javascript" src="js/mixitup/jquery.mixitup.min.js"></script>
		<script type="text/javascript" src="js/mixitup/mixitop-inline.js"></script>
		<script type="text/javascript" src="js/mixitup/ga.js"></script>
		<script type="text/javascript" src="js/mixitup/cloudflare.min.js"></script>
		<script type="text/javascript" src="js/contact_form/jquery.form.js"></script>
		<script type="text/javascript" src="js/contact_form/init_form.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<script type="text/javascript" src="js/zoom/jquery.jqzoom-core.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
	<!-- End JS Link -->		
	</body>
</html>
