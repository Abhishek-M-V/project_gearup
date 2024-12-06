<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product_edit.aspx.cs" Inherits="Project_GearUp.product_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-image: url('assets/images/welcome-hero/welcome-banner.jpg'); /* Replace with your background image URL */
    background-size: cover; /* Ensures the image covers the entire page */
    background-position: center;
    background-repeat: no-repeat;
    height: 100vh; /* Ensures the background covers the full viewport height */
}

.navbar {
    background-color: black;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 80px; /* Adjust the height as needed */
    position: fixed; /* Keeps the navbar at the top of the page */
    top: 0;
    z-index: 1000; /* Ensures the navbar stays on top of other content */
}
    .navbar .branding {
        display: flex;
        align-items: center;
        color: white;
        font-family: 'Calisto MT';
    }
    .navbar img {
        height: 40px;
    }
    .navbar a {
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    .navbar a.active {
        color: blue;
        font-family: 'Roboto', sans-serif;
        font-size: 24px;
    }
    .navbar .menu {
        display: flex;
    }
    .navbar .menu a {
        float: none;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="navbar">
        <div class="branding">
            <a href="index.html">GEARUP<span></span></a>
        </div>
        <div class="menu">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True"  PostBackUrl="~/admindash.aspx">CATEGORY</asp:LinkButton>

            <a class="logout" href="Home.aspx">LOGOUT</a>
                
        </div>
    </div>
    </form>
</body>
</html>
