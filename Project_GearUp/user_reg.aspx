<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_reg.aspx.cs" Inherits="Project_GearUp.user_reg" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <style type="text/css">
        body {
            background-image: url('assets/images/welcome-hero/welcome-banner.jpg'); /* Path to your background image */
            background-size: cover; /* Make the background cover the entire page */
            background-position: top center; /* Align the background to the top center */
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Align content to the top of the page */
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.85); /* Semi-transparent background */
            padding: 60px; /* Add padding inside the form */
            margin-top: 50px; /* Push the form down a little */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
            width: 600px; /* Set a fixed width for the form */
        }
        .auto-style1 {
            width: 100%;
            height: 631px;
        }
        .auto-style4, .auto-style7 {
            padding-bottom: 10px; /* Add some space between form rows */
        }
        .form-container table {
            width: 100%; /* Ensure the table takes full width inside the form */
        }
        .form-container td {
            text-align: left; /* Align form labels and input fields to the left */
        }
        .form-container .center-content {
            text-align: center; /* Center content like the 'USER REGISTRATION' label */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4 center-content" colspan="2">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#3333FF" Text="USER REGISTRATION" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4 center-content" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="NAME :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="ADDRESS :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="AGE :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Age between 18 and 70" MaximumValue="70" MinimumValue="18"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="EMAIL :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid data !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="PHONE :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter valid data !" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="GENDER :"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="59px">
                            <asp:ListItem Value="1">MALE</asp:ListItem>
                            <asp:ListItem Value="2">FEMALE</asp:ListItem>
                            <asp:ListItem Value="3">OTHERS</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select anyone!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="USERNAME :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="PASSWORD :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter valid data !"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="CONFIRM PASSWORD :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password Mismatch !"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="center-content" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="center-content" colspan="2">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="32px" OnClick="Button1_Click" Text="REGISTER" Width="124px" />
                    </td>
                </tr>
                <tr>
                    <td class="center-content" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="center-content">
                        Already have an account? 
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">LOGIN</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
