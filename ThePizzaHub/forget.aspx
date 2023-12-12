<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
<style>
       body{
           display: inline-flexbox;
            background-image: url("images/forget password.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;   
            overflow-x:hidden;    
            position:center; 
            
               
        }
        .forget-card{
            position: relative;
            z-index: 3;
            width: 100%;
            margin: 0 20px;
            padding-left:400px;
            padding-right:500px;
            padding-top:140px;
            padding-bottom:140px;
            border-radius: 1.25rem;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0));
            text-align: center;
        }

        h2{
            color:#FA5f55;
            font-size: 36px;
            font-weight: 600;
            margin: 0 0 20px 0;
        }

        .input, .button{
            width: 60%;
            height: 50px;
        }

        .input {
            border: 2px solid #ebebeb;
            font-family: inherit;
            font-size: 15px;
            padding: 0 16px;
            border-radius: 1.25rem;
            transition: all 0.375s;
        }

        .input:hover{
            border: 2px solid gray;
            
        }

        .button{
            cursor: pointer;
            width: 60%;
            padding: 0 16px;
            border-radius: 20px;
            border-width:2px;
            background: white;
            color: black;
            border: 2;
            font-family: inherit;
            font-size: 1rem;
            font-weight: 600;
            text-align: center;
            letter-spacing: 2px;
            transition: all 0.375s;
        }

        .button:hover{
            border: 2px solid gray;
            border-radius: 1.25rem;
            background-color:gray;
        }

        .a{
            color: red;
            font-size: 1rem;
            text-align: left;
            text-decoration: none;
            margin-bottom: 6px;
            transition: all 0.375s;
            border-radius:3px;
            border-width: 3px;
        }

        .a:hover{
            color:gray;
        }

   </style>
    <title>Forgot Password</title>
</head>
<body>
	<div>
		<div class="forget-card">
			<h2>FORGET PASSWORD</h2><br /><br>
            <asp:TextBox ID="txtemail" runat="server" class="input" placeholder="Registered Email"></asp:TextBox><br /><br />
            <a href="login.aspx" class="a">Back to login..!</a><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" class="button" OnClick="Button1_Click"  />
            <h4> Your Password will be send on your Registered Email-ID.</h4>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
		</div>
	</div>
</body>
</html>	
</asp:Content>



