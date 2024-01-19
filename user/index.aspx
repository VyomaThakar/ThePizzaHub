<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Index</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
</head>
<body>
<style>
    body {
      
       overflow-x: hidden;
    }
    
    .section {
        padding: 90px 15% 80px;
    }
    .home {
        height: 88vh;
        width: 100%;
        position: relative;
        display: grid;
        flex-align:center;
        column-gap: 2rem;
        margin-left: 100px;
        margin-top: 50px;
    }
    .home-img img {
        width: 600px;
        height: 500px;
        float: right;
        margin-right: 50px;
    }
   .home-text h1 {
        font-size: 50px;
        line-height: 1.2;
        margin-bottom: 2rem;
    }
    .home-text p {
        font-size: medium;
        font-weight: 500;
        line-height: 32px;
        margin-bottom:2.3rem;
    }
    .btn {
        display: inline-block;
        padding: 14px 26px;
        background: red;
        color: white;
        font-size: 15px;
        font-weight: 600;
        border-radius: 5rem;
        transition: all .40s ease;
        text-decoration: none;
    }
        .btn:hover {
            letter-spacing: 1px;
            color: red;
            background: white;
            border: 2px solid red;
        }
.head{
    font-size: 20px;
    position: absolute;
    z-index: 2;  
    width: 600px;
    height: 400px;
    animation-name: head;
    animation-duration: 2.3s;
    animation-fill-mode: forwards;
}
@keyframes head{
    from{left: -30%;}
    to{left: 3%;}
}

    .i {
        position: absolute;
        animation-name: i;
    animation-duration: 2.3s;
    animation-fill-mode: forwards;
    }
    @keyframes i{
    from{right: -30%;}
    to{right: 3%;}
}

.img1
{
	margin: -90px 0px 0px 0px;
	height: 500px;
	float: left;
	width: 600px;
}

.ingre
{
   
	font-size: 35px;
	margin-top: -450px;
	flex-wrap: wrap;
    margin-left: 750px;
}

.ingrecon
{
	font-size: 20px;
	margin: -360px 0px 0px 750px;
	flex-wrap: wrap;
}

.ingrebtn
{
	background-color: palegreen;
	padding: 10px 40px 10px 40px;
	margin: 50px 0px 0px 0px;
	cursor: pointer;
	color:black;
	float: left;
	flex-wrap: wrap;
	
	text-decoration: none;
}

.ingrebtn:hover
{
	background-color: white;
	color: black;
	border: 1px solid lightgreen;
	transition: 0.5s;
	cursor: pointer;
}


 
</style>
 <section class="home">
     <div class="head">
     <div class="home-text">
         <h1 ><span><font color="red">Welcome</font></span><br /><h2>to The world of Tasty & Fresh Pizza</h2></h1>
         <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br /> Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
         <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" PostBackUrl="~/user/menu.aspx"> Choose a Pizza</asp:LinkButton>
     </div>
         </div>     
     <div class="home-img">
         <img class="i" src="../images/2.png"/>
     </div>
    
 </section>
    <section class="home">
        
        <img src="../images/3_i.png" class="img1">
        
        <h1 class="ingre">We Pride Ourselves On <br>Making Real Food From The<br> Best Ingredients.</h1>
        <p class="ingrecon">Health concerns continue to increase globally and <br />consumersare looking to change their diet for more <br />natural and nutrient-rich food and beverages. </p>
        
   
    
 </section>
     
</body>
</html>

</asp:Content>


