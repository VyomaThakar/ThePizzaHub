<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap');

*{
    box-sizing: border-box;
}

html, body, .wrapper{
    height: 100%;
}

body{
    background-repeat: no-repeat;
    background-size: cover;
    color: #fff;
    animation: rotate 6s infinite alternate linear;
    font-family: "Ubuntu";
  
}
  .first{
    display: flex;
    place-items: center;
    margin: 0;
    padding: 0 14px;
  }
.menu-card{
   /* position: relative;
 
    width: 30%;
    margin: 110px 440px;
    padding: 70px 30px 44px;
    border-radius: 1.25rem;
    
    text-align: center;
    border: 2px solid gray;*/
}

.menu-card > h2{
    font-size: 70px;
    font-weight: 600;
    margin-top:0px;
   color: green;
   margin: 80px 0px 0px 250px;
   font-family:Pristina;
   margin-left:650px;
   
}

.menu-card > h3{
  
    color: brown;
    margin: 50px 0 30px 210px;
    font-weight: 500;
    font-size: 1rem;
    font-family: inherit;
    position:center;
    margin-left:100px;
    font-family: 'Buxton Sketch' ;
    font-size:40px;
    font-weight:bold;
    text-underline:solid;
}


.dishes .box-container .box img{
    height: 17rem;
    margin: 1rem 0;
    margin-left: 10%;
    margin-top:5%;
    
}

.dishes .box-container .box h3{
    color: green;
    font-size: 2.5rem;
    margin-left: 10%;
}


.dishes .box-container .box span{
    color: brown;
    font-weight: bolder;
    margin-right: 1rem;
    font-size: 2rem;
    margin-left: 10%;
}
.symbol{
    
    margin: 1rem 0;
    margin-left: 1%;
    margin-top:5%;
    height: 2 px;

    
}

</style>
 
    <head>
        <body>
              <div class="first">
    <div class="menu-card">
        <h2>MENU</h2>
        <h3>REGULAR CLASSIC PIZZAS (7 Pcs)</h3>

        <section class="dishes" id="dishes">
   
    <div class="box-container">
      <div class="box">
        <div class="symbol">

        <img src="images/vegsymbol.png" alt="">
        <img src="images/margrita1.png" alt="">
        <h3>Margarita Pizza</h3>
        <span> 549/-</span>
        <a href="cart.aspx" class="btn">add to cart</a>
</div>
     </div>
 
    </div>

     <div class="box-container">
      <div class="box">
        
        <img src="images/veg.png" alt="">
        <h3>Onion Blast Pizza</h3>
        <span> 784/--</span>
        <a href="cart.aspx" class="btn">add to cart</a>
      </div>
 
    </div>
</div>
</asp:Content>

