<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_GearUp.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('assets/images/welcome-hero/welcome-banner.jpg'); /* Ensure the path is correct */
            background-size: cover;
            background-position: top center; /* Places the background at the top center */
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Aligns content at the top */
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 50px; /* Increase padding size */
            margin-top: 30px; /* Adds space from the top */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px; /* Set width for consistent alignment */
            text-align: center; /* Center the text inside the container */
        }
        .login-container table {
            margin: 10px auto; /* Centers the table inside the container */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="login-container">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#3333FF" Text="LOGIN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="USERNAME :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="PASSWORD :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#3333FF" Height="38px" OnClick="Button1_Click" Text="LOGIN" Width="100px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
