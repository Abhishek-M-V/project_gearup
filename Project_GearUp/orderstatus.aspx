<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderstatus.aspx.cs" Inherits="Project_GearUp.orderstatus" %>

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

		.nav-justified {
            width: 70%;
            margin-top:200px;/* Adjust width as needed */
            margin: 20px auto; /* Centers the table */
            padding: 20px; /* Padding around the table content */
            border: 1px solid #ccc; /* Border around the table */
            border-radius: 10px; /* Rounded corners */
            background-color: #f9f9f9; /* Light background color */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        /* Styling for table cells */
        .nav-justified td {
            padding: 10px 20px; /* Padding within each cell */
            font-size: 16px; /* Font size for better readability */
            text-align: left; /* Align text to the left */
        }

        /* Label styling within the table */
        .nav-justified asp\:Label {
            font-weight: bold;
        }

        /* Style for the "ORDER SUMMARY" header */
        .nav-justified asp\:Label#Label1 {
            font-size: 20px;
            font-weight: bold;
            text-decoration: underline;
            display: block;
            text-align: center;
            margin-bottom: 15px;
        }

        /* Styling for the "CONFIRM" button */
        .nav-justified asp\:Button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        /* Hover effect for the "CONFIRM" button */
        .nav-justified asp\:Button:hover {
            background-color: #0056b3;
        }

		.auto-style1 {
            height: 52px;
        }

		</style>
</head>
<body>
    <form id="form1" runat="server">
        
      
       <table class="nav-justified">
        

        <tr>
            <td colspan="2" style="text-align: center;" class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="ORDER SUMMARY" Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 30px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="USER ID :"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="text-align: right; padding-right: 30px;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="DATE :"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="PRODUCT QUANTITY :"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
             <td style="text-align:center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="TOTAL PRICE :"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="EXTRA CHARGES :"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="Rs.5.00/-"></asp:Label>
            </td>
        </tr>
        <tr>
             <td style="text-align:center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="GRAND TOTAL :"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="CONFIRM" Width="119px" Font-Bold="True" Height="33px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
