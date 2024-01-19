<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="food.aspx.cs" Inherits="admin_food" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Product</title>
<style>
h1{
    color: #FA5f55;
}
body {background: url("image/background.svg");}
.nm {
        color: #FA5f55;
    }
.input{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 3px solid #FA5F55;
  box-sizing: border-box;
  border-radius: 1.25rem;
}
    .input:hover {
        border: 3px solid gray;
    }
.container {
  padding-left: 500px;
  padding-right: 500px;
}
</style>
</head>
<body>
<br />

<h1 align="center">ADD PRODUCT</h1>

  <div class="container">  
	<b class="nm">Item Name :</b>
    <asp:TextBox ID="name" runat="server" class="input" placeholder="ENTER NAME"></asp:TextBox>
    
    <b class="nm">Price :</b>
    <asp:TextBox ID="price" runat="server" class="input" placeholder="ENTER PRICE"></asp:TextBox>

      <b class="nm">Description :</b>
      <asp:TextBox ID="descr" runat="server" class="input" placeholder="ENTER DESCRIPTION"></asp:TextBox>


	<b class="nm">Category :</b>
    <asp:DropDownList ID="category" runat="server" class="input" placeholder="ENTER CATEGORY" AutoPostBack="True">
        <asp:ListItem>--Select Item--</asp:ListItem>
        <asp:ListItem>pizza</asp:ListItem>
        <asp:ListItem>pasta</asp:ListItem>
        <asp:ListItem>garlic Bread</asp:ListItem>
        <asp:ListItem>Juice</asp:ListItem>
        

      </asp:DropDownList>
	<b class="nm">Photo :</b>
	<asp:FileUpload ID="food_img" runat="server" class="input" ></asp:FileUpload>
    
    <asp:Button ID="add" runat="server" Text="Submit" style="font-size:20px;border-color:#FA5f55;color:white;background:#FA5f55;border-radius:10px;margin:1px;padding:8px;border-width:5px" OnClick="add_Click" ></asp:Button>
	<asp:Button ID="Reset" runat="server" Text="Reset" style="font-size:20px;border-color:#FA5f55;color:white;background:#FA5f55;border-radius:10px;margin:1px;padding:8px;border-width:5px" OnClick="Reset_Click"></asp:Button>
  </div>
</body>
</html>
</asp:Content>

