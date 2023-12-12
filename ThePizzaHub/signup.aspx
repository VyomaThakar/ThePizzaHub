<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
    <head>
        <title>Signup</title>
   <style>
  *{
    box-sizing: border-box;
}

html, body, .wrapper{
    height: 100%;
}

body{
    background-image: url("images/signup1.png");
    background-repeat: no-repeat;
    background-position:right center;
    color: #fff;
    animation: rotate 6s infinite alternate linear;
    font-family: "Ubuntu";
    background-size:40%;
}
  .first{
    display: flex;
    place-items: center;
    margin: 0;
    padding: 0 14px;
  }
.signup-card{
    /*position: relative;
    width: 30%;
    margin: 110px 440px;
    padding: 70px 30px 44px;
    border-radius: 1.25rem;
    
    text-align: center;
    border: 2px solid gray;*/
}

.signup-card > h2{
    font-size: 36px;
    font-weight: 600;
   margin-top:0px;
   color: black;
   margin: 80px 0px 0px 350px;
}

.signup-card > h3{
  
    color: black;
    margin: 50px 0 30px 210px;
    font-weight: 500;
    font-size: 1rem;
}

.signup-form{
    width: 100%;
  /* margin: 0;*/
    display: grid;
    gap: 16px;
     margin: 50px 0 30px 200px;
    
}

.signup-form > .input, .signup-form > .button{
    width: 100%;
    height: 50px;
}

.signup-form > .input {
    border: 2px solid #ebebeb;
    font-family: inherit;
    font-size: 15px;
    padding: 0 16px;
    border-radius: 1.25rem;
    transition: all 0.375s;
}
       .signup-form > .input:hover {
           border: 2px solid gray;
       }

.signup-form > .button{
    cursor: pointer;
    width: 100%;
    padding: 0 16px;
    border-radius: 1.25rem;
    background: #fa5f55;
    color: #f9f9f9;
    border: 0;
    font-family: inherit;
    font-size: 1rem;
    font-weight: 600;
    text-align: center;
    letter-spacing: 2px;
    transition: all 0.375s;
}

.signup-form > .button:hover{
    background: white;
    color: #fa5f55;
    border: 2px solid #fa5f55;
}

        </style>
       
      
    </head>
    <body>
        <div class="first">
    <div class="signup-card">

        <form action="signup.aspx" method="post" class="signup-form">
            
                <h2>Signup</h2>
               <div class="signup-form">
                <asp:TextBox ID="unm" runat="server" placeholder="Enter Username" Class="input"></asp:TextBox>
                
                
             <asp:TextBox ID="pass" Class="input" runat="server" placeholder="Enter Password"></asp:TextBox>
                
                

                <asp:TextBox ID="email" Class="input" runat="server"  placeholder="Enter Email"></asp:TextBox>
                
                

                <asp:TextBox ID="phone" Class="input" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
                
               
                
                <asp:Button ID="Button1" Class="button" runat="server" Text="Sign Up" OnClick="Button1_Click" /><br />
                
                
                
                </div>
            </form>
        </div>
           
        </div>
    </body>
</html>
</asp:Content>

