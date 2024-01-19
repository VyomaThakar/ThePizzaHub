<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" MasterPageFile="~/user/user.master" Inherits="user_message" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>
img
{
	width: 150px;
	height: 150px;
	margin-bottom: -33px;
}
    .container {
        float: left;
        margin-left: 100px;
      
    }
.text
{
	text-align: center;
	font-family: Cambrina Math;
	font-size: 20px;
	margin-top: 60px;
	margin-bottom: 50px;
}

div
{
	font-size: 30px;
	font-family: Cambrina Math;
	text-align: center;
	margin-top:15px;
	
}

.btn1
{
	padding: 10px 120px 10px 120px;
	background-color: none;
	border: 1px solid  #fa5f55;
	border-radius: 5px;
	color:  #fa5f55;
	text-decoration: none;
	margin: 0px 0px 0px 0px;
}

.btn1:hover
{
	background-color: #fa5f55;
	color: white;
	transition: 0.7s;
}

.btn2
{
	background-color: none;
	color: #fa5f55;
	margin: 0px 0px 0px 50px;
	text-decoration: none;
	padding: 10px 100px 10px 100px;
	border-radius: 5px;	
	border: 1px solid #fa5f55;
}

.btn2:hover
{
	background-color: #fa5f55;
	color: white;
	transition: 0.7s;
}

.img1
{
	width: 300px;
	height: 200px;
	margin: 0px 0px 0px 600px;
    margin-top:-1000px;
}


</style>
    <body>
        <div class="container">
        <center><img src="../images/done.jpg"></center>
        <div>Your Order is Successfully...</div>
            <div class="text">Thank You For Contacting Us! <br><br>
	            We have received your message.<br>
	            We'll reach you out immediately!
            </div>
            <a href="your_cart.aspx" class="btn1">Back</a>
            <a href="index.aspx" class="btn2">Home</a><br><br>
        </div>
            <img src="../images/okk2.jpg" class="img1">
            <%--<img src="../images/Leaves.png" class="l1">
            <img src="../images/Leaves.png" class="l2">--%>
</body>
    </asp:Content>