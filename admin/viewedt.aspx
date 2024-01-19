﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewedt.aspx.cs" MasterPageFile="~/admin/admin.master" Inherits="admin_viewedt" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Product</title>
<style>
b{
  color: white;
}
body {background: url("image/background.svg");}

.input{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid black;
  box-sizing: border-box;
  border-radius: 0.50rem;
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
    <asp:TextBox ID="no" runat="server" class="input"></asp:TextBox>

	<b>Item Name :</b>
    <asp:TextBox ID="name" runat="server" class="input" placeholder="ENTER NAME"></asp:TextBox>
      

    <b>Description :</b>
    <asp:TextBox ID="description" runat="server" class="input" placeholder="ENTER DESCRIPTION"></asp:TextBox>

    <b>Price :</b>
    <asp:TextBox ID="price" runat="server" class="input" placeholder="ENTER PRICE"></asp:TextBox>
     
    <asp:Button ID="Submit" runat="server" Text="Submit" style="font-size:20px;border-color:black;color:white;background:black;border-radius:10px;margin:1px;padding:8px;border-width:10px;" OnClick="Submit_Click"></asp:Button>
	
  </div>


</body>
</html>
 </asp:Content>
