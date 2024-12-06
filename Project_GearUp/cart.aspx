<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Project_GearUp.cart" %>

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

		.auto-style1 {
            width: 64px;
        }
        .auto-style2 {
            width: 844px;
        }
        .auto-style3 {
            width: 64px;
            height: 22px;
        }
        .auto-style4 {
            width: 844px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 844px;
            text-align: right;
        }

		</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-area">
				<div class="header-area">
					<!-- Start Navigation -->
				    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

				        <div class="container-fluid" style="background-color:black">

				            <!-- Start Header Navigation -->
				            <div class="navbar-header">
				                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
				                    <i class="fa fa-bars"></i>
				                </button>
				                <a class="navbar-brand" href="Home.aspx">GEARUP<span></span></a>

				            </div><!--/.navbar-header-->
				            <!-- End Header Navigation -->
							 <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                             <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
        <li class="scroll"><a href="userdash.aspx">Home</a></li>
      
        <li class="active"><a href="cart.aspx">Cart</a></li>
        <li class="scroll"><a href="#brand">Orders</a></li>
        
       
                          <li class="dropdown">
                            <a class="logout" href="Home.aspx">LOGOUT</a>
                         </li>
                         </ul><!--/.nav -->
                                 </div>
                            </div>
                        </div>

        <table class="nav-justified">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="223px" Width="833px" DataKeyNames="cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="pro_name" HeaderText="NAME"></asp:BoundField>
                            <asp:BoundField DataField="pro_desc" HeaderText="DESCRIPTION"></asp:BoundField>
                            <asp:BoundField DataField="pro_quantity" HeaderText="QUANTITY"></asp:BoundField>
                            <asp:BoundField DataField="total_price" HeaderText="AMOUNT"></asp:BoundField>
                            <asp:ImageField DataImageUrlField="pro_photo" HeaderText="IMAGE">
                            </asp:ImageField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Height="36px" Text="BUY" Width="119px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
