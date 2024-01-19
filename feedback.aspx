<%@ Page Title="" Language="C#" MasterPageFile="~/visitor.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>


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
    background-image: url("images/feedback1.png");
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
.feedback-card{
   /* position: relative;
 
    width: 30%;
    margin: 110px 440px;
    padding: 70px 30px 44px;
    border-radius: 1.25rem;
    
    text-align: center;
    border: 2px solid gray;*/
}

.feedback-card > h2{
    font-size: 36px;
    font-weight: 600;
    margin-top:0px;
   color: white;
   margin: 80px 0px 0px 250px;
   
}

.feedback-card > h3{
  
    color: white;
    margin: 50px 0 30px 210px;
    font-weight: 500;
    font-size: 1rem;
    font-family: inherit;
}

.feedback-form{
    width: 100%;
  /* margin: 0;*/
    display: grid;
    gap: 16px;
    margin: 50px 0 30px 100px;
    
}

.feedback-form > .input, .feedback-form > .button{
    width: 100%;
    height: 50px;
}

.feedback-form > .input {
    border: 2px solid #ebebeb;
    font-family: inherit;
    font-size: 15px;
    padding: 0 16px;
    border-radius: 1.25rem;
    transition: all 0.375s;
}

.feedback-form > .input:hover{
    border: 5px solid #fa5f55;
}

.feedback-form > .button{
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

.feedback-form > .button:hover{
    background: white;
    color: #fa5f55;
    border: 2px solid #fa5f55;
}

.feedback-form > .a1{
    color: black;
    text-decoration: none;
    /*font-size: 0.9rem;
    text-align: left;
    text-decoration: none;
   margin-bottom: 6px;
    /*transition: all 0.375s;*/
    /*margin-left: 70px;
    margin-top: 20px;*/
    margin: 0px 0 0px 90px;
    padding: 10px;
}

.feedback-form > .a1:hover{
    color: black;
    border-bottom: 2px solid #FA5F55;

}





</style>
 
    <head>
        <body>
              <div class="first">
    <div class="feedback-card">
        <h2>Feedback</h2>
        <h3>We are Waiting for your Feedback...</h3>
        <div class="feedback-form">
        <asp:TextBox ID="unm"  class="input" runat="server" placeholder="Enter Your Name"></asp:TextBox>
        <asp:TextBox ID="email" class="input" runat="server" placeholder="Enter Your Email"></asp:TextBox>
            <asp:TextBox ID="feed" class="input" runat="server" placeholder="Your Feedback"></asp:TextBox>
       
        <asp:Button ID="Button1" runat="server" Text="Submit" Class="button" OnClick="Button1_Click" />
            
            &nbsp; </div>
    </div>
</div>

      
</asp:Content>
      