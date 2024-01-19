<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="temp_cart.aspx.cs" Inherits="user_temp_cart" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <body>
            <h2 align="center" style="color:#fa5f55">Add to Cart</h2>

            <table style="margin-left:600px;margin-top:50px;">
               
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
                    </td>
                   
                </tr>
                <tr></tr><tr></tr><tr></tr><tr></tr>
                <tr>
                    <td>
                        <asp:Label ID="p_name" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr></tr><tr></tr><tr></tr>
                <tr>
                    <td>
                        <asp:Label ID="price" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="qty" runat="server" Text="Quantity"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Width="210px" Height="30px" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" style="font-size:20px;border-color:#fa5f55;color:white;background:#fa5f55;border-radius:10px;margin:1px;padding:8px;border-width:10px;text-decoration:none;width:100%;margin-top:10px;" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </body>
    </html>
</asp:Content>

