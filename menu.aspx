<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f2f2f2;
  }
  
  .menu-section {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  
  h2 {
    text-align: center;
    color: #333;
  }
  
  .pizza-item {
    margin-bottom: 20px;
  }
  
  img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
  }
  
  h3 {
    margin-top: 10px;
    color: #333;
  }
  
  p {
    color: #777;
  }
  
  .price {
    display: block;
    color: #ff5733;
    font-weight: bold;
    margin-top: 5px;
  }
        .btn {
            margin: 10px;
            height: 50px;
            width: 150px;
            border-radius: 30px;
            float: right;
            margin-top: -55px;
            color: white;
            background-color: #fa5f55;
        }
            .btn:hover {
                background: white;
                 color: #fa5f55;
                border: 2px solid #fa5f55;
               
            }

  
    </style>
<div class="menu-section">
    <h2> Menu</h2>
    
    <div class="pizza-item">
        <asp:Image ID="Image1" runat="server" src="images/m1.jpg"/>
      
      <h3>Pizza Mania</h3>
      <p>Classic tomato sauce, fresh mozzarella, basil</p>
     
        <asp:Button ID="Button1" runat="server" Text="View Details" class="btn" OnClick="Button1_Click"/>
    </div>

    <div class="pizza-item">
       <asp:Image ID="Image2" runat="server" src="images/m2.jpg"/>
      <h3>Bow Tie Pasta</h3>
      <p>Tomato sauce, pepperoni, mozzarella, olives</p>
      
        <asp:Button ID="Button2" runat="server" Text="View Details" class="btn" OnClick="Button2_Click"/>
    </div>

    <div class="pizza-item">
       <asp:Image ID="Image3" runat="server" src="images/m3.jpg"/>
      <h3>Pepperoni Pizza</h3>
      <p>Tomato sauce, pepperoni, mozzarella, olives</p>
      
        <asp:Button ID="Button3" runat="server" Text="View Details" class="btn" OnClick="Button3_Click"/>
    </div>

    <div class="pizza-item">
       <asp:Image ID="Image4" runat="server" src="images/m5.jpg"/>
      <h3>Garlic Bruschetta</h3>
      <p>Tomato sauce, pepperoni, mozzarella, olives</p>
      
        <asp:Button ID="Button4" runat="server" Text="View Details" class="btn" OnClick="Button4_Click" />
    </div>

    <!-- Add more pizza items as needed -->

  </div>
  
</asp:Content>

