<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productview.aspx.cs" Inherits="Project_GearUp.productview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">

	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        
        <!-- title of site -->
        <title>GEARUP</title>

        <!-- For favicon png -->
		<link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
       
        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!--linear icon css-->
		<link rel="stylesheet" href="assets/css/linearicons.css">

        <!--flaticon.css-->
		<link rel="stylesheet" href="assets/css/flaticon.css">

		<!--animate.css-->
        <link rel="stylesheet" href="assets/css/animate.css">

        <!--owl.carousel.css-->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
		
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- bootsnav -->
		<link rel="stylesheet" href="assets/css/bootsnav.css" >	
        
        <!--style.css-->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!--responsive.css-->
        <link rel="stylesheet" href="assets/css/responsive.css">
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
	<style>
	/* Initial styling for the login icon and text */
.login-icon {
    position: relative;
    display: inline-block;
    text-decoration: none;
}
.container{
    background-color:black;
    width:100%;
}
.navbar{
    width:100%;
}

.login-icon i {
    color: white; /* Initial color */
    font-size: 20px;
    transition: color 0.3s ease; /* Smooth transition for color change */
}

.login-text {
    display: none; /* Hide the login text initially */
    position: absolute;
    left: 50%; /* Center the text horizontally */
    transform: translateX(-50%); /* Adjust to perfectly center */
    bottom: 25px; /* Position the text below the icon */
    color: white;
    font-size: 14px;
}

/* Hover effect to turn icon blue and show "Login" text */
.login-icon:hover i {
    color: blue !important; /* Turn icon blue on hover */
}

.login-icon:hover .login-text {
    display: block; /* Display the "Login" text on hover */
}

		</style>
</head>
<body>
    <form id="form1" runat="server">
        <section id="home" class="welcome-hero">

			<!-- top-area Start -->
			<div class="top-area">
				<div class="header-area">
					<!-- Start Navigation -->
				    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

				        <div class="container">

				            <!-- Start Header Navigation -->
				            <div class="navbar-header">
				                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
				                    <i class="fa fa-bars"></i>
				                </button>
				                <a class="navbar-brand" href="index.html">GEARUP<span></span></a>

				            </div><!--/.navbar-header-->
				            <!-- End Header Navigation -->
							 <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                             <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
        <li class="scroll active"><a href="#home">Home</a></li>
        <li class="scroll"><a scroll="#CATEGORY">Category</a></li>
        <li class="scroll"><a href="#featured-cars">Cart</a></li>
        <li class="scroll"><a href="#brand">Orders</a></li>
        <li class="dropdown">
                            <a class="logout" href="Home.aspx">LOGOUT</a>
                         </li>
                         </ul><!--/.nav -->
                        </div>




				        </div><!--/.container-->
				    </nav><!--/nav-->
        <div>
            <table class="nav-justified">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="1383px">
                            <ItemTemplate>
                                <table class="nav-justified" style="padding: 20px; text-align: center; border: 3px solid #ccc; border-radius: 30px; background-color: #f9f9f9; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); height: 350px;">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="174px" ImageUrl='<%# Eval("pro_photo") %>' Width="223px" CommandArgument='<%# Eval("pro_id") %>' OnClick="ImageButton1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("pro_desc") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price :&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("pro_price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
