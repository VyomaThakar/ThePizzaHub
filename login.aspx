<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>LOGIN</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <div class="first">
    <div class="login-card">
        <h2>Login</h2>
        <h3>Enter your credentials</h3>
        <div class="login-form">
        <asp:TextBox ID="unm"  class="input" runat="server" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="pass" class="input" runat="server"  type="password" placeholder="Password"></asp:TextBox>
       
        <asp:Button ID="log" runat="server" Text="Login" Class="button" OnClick="log_Click" />
             <a class="a1" href="forget.aspx">Forget your password?</a>
         <a class="a1" href="signup.aspx">Create an account...</a>
            </div>
    </div>
</div>
</body>

     </html>  
   
</asp:Content>

