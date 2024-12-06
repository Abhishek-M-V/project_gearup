<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adash.aspx.cs" Inherits="Project_GearUp.adash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            color:black;
            height: 26px;
            width: 702px;
        }
        .auto-style4 {
            width: 702px;
        }
        .auto-style5 {
            width: 567px;
        }
        
        body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color:antiquewhite; /* Replace with your background image URL */
    /* Ensures the image covers the entire page */
    
    
    /* Ensures the background covers the full viewport height */
}

.navbar {
    background-color: black;
    overflow: hidden;
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 30px; /* Adjust the height as needed */
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
    
        .auto-style6 {
            width: 713px;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
       <div class="navbar">
        <div class="branding">
            <a href="index.html">GEARUP<span></span></a>
        </div>
        <div class="menu">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True">CATEGORY</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True">PRODUCT</asp:LinkButton>
               
            <a class="logout" href="Home.aspx">LOGOUT</a></div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Panel ID="Panel3" runat="server" Height="542px" Visible="False" Width="702px">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="ADD CATEGORY"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;<asp:Label ID="Label22" runat="server" Text="NAME :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label23" runat="server" Text="DESCRIPTION :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label24" runat="server" Text="IMAGE :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INSERT" Width="85px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="EDIT CATEGORY"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cat_id" Height="172px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="675px">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:BoundField DataField="cat_name" HeaderText="NAME" />
                                        <asp:BoundField DataField="cat_desc" HeaderText="DESCRIPTION" />
                                        <asp:ImageField DataImageUrlField="cat_photo" HeaderText="IMAGE">
                                            <ControlStyle Height="150px" Width="200px" />
                                        </asp:ImageField>
                                        <asp:CommandField ShowDeleteButton="True" />
                                        <asp:TemplateField HeaderText="EDIT PHOTO">
                                            <ItemTemplate>
                                                <asp:FileUpload ID="FileUpload4" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="auto-style2">
                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style1">
                                        <tr>
                                            <td colspan="2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="ADD PRODUCTS"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label15" runat="server" Text="NAME :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label16" runat="server" Text="PRICE :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label17" runat="server" Text="DESCRIPTION :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label18" runat="server" Text="PHOTO"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label19" runat="server" Text="STOCK :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">
                                                <asp:Label ID="Label20" runat="server" Text="CATEGORY :"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" Width="113px" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="Label21" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="EDIT PRODUCTS"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="pro_id" OnRowCancelingEdit="GridView3_RowCancelingEdit" OnRowDeleting="GridView3_RowDeleting" OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
                                                    <Columns>
                                                        <asp:CommandField ShowEditButton="True" />
                                                        <asp:BoundField DataField="pro_name" HeaderText="NAME" />
                                                        <asp:BoundField DataField="pro_desc" HeaderText="DESCRIPTION" />
                                                        <asp:BoundField DataField="pro_price" HeaderText="PRICE" />
                                                        <asp:BoundField DataField="pro_stock" HeaderText="STOCK" />
                                                        <asp:ImageField DataImageUrlField="pro_photo" HeaderText="IMAGE">
                                                            <ControlStyle Height="150px" Width="200px" />
                                                        </asp:ImageField>
                                                        <asp:CommandField ShowDeleteButton="True" />
                                                        <asp:TemplateField HeaderText="EDIT IMAGE">
                                                            <ItemTemplate>
                                                                <asp:FileUpload ID="FileUpload5" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   </form>
</body>
</html>
