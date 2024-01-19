<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="edit_food.aspx.cs" Inherits="admin_edit_food" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Product</title>
<style>
    h1 {
        color: #fa5f55;
    }
b{
  color: #fa5f55;
}
body {background: url("image/background.svg");}

.input{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid #fa5f55;
  box-sizing: border-box;
  border-radius: 1.25rem;
}
.container {
  padding-left: 500px;
  padding-right: 500px;
}
</style>
</head>
<body>
<br />

<h1 align="center">EDIT PRODUCT</h1>

  <div class="container">  

    <b>Item No :</b>
    <asp:TextBox ID="no" runat="server" class="input" placeholder="ENTER ITEM NO"></asp:TextBox>

	<b>Item Name :</b>
    <asp:TextBox ID="name" runat="server" class="input" placeholder="ENTER ITEM NAME"></asp:TextBox>
    
    <b>Price :</b>
    <asp:TextBox ID="price" runat="server" class="input" placeholder="ENTER PRICE"></asp:TextBox>


     <b>Price :</b>
    <asp:TextBox ID="descr" runat="server" class="input" placeholder="ENTER DESCRIPTION"></asp:TextBox>

     
    <asp:Button ID="Submit" runat="server" Text="Submit" style="font-size:20px;border-color:#fa5f55;color:white;background:#fa5f55;border-radius:10px;margin:1px;padding:8px;border-width:10px;" OnClick="Submit_Click"></asp:Button>
	
  </div>


</body>
</html>

</asp:Content>

