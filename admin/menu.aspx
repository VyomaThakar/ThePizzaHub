<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/admin.master" CodeFile="menu.aspx.cs" Inherits="admin_menu" %>

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
   
    color: #fff;
    
    font-family: "Ubuntu";
  
}
  .first{
    display: flex;
    place-items: center;
    margin: 0;
    padding: 0 14px;
    margin-left: 350px;
  }


.order-card > h2{
    font-size: 36px;
    font-weight: 600;
    margin-top:0px;
   color: black;
   margin: 80px 0px 0px 250px;
   
}



.order-form{
    width: 100%;
  /* margin: 0;*/
    display: grid;
    gap: 16px;
    margin: 50px 0 30px 100px;
    
}

.order-form > .input, .order-form > .button{
    width: 100%;
    height: 50px;
}

.order-form > .input {
    border: 2px solid #ebebeb;
    font-family: inherit;
    font-size: 15px;
    padding: 0 16px;
    border-radius: 1.25rem;
    transition: all 0.375s;
}

.order-form > .input:hover{
    border: 2px solid gray;
}

.order-form > .button{
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

.order-form > .button:hover{
    background: white;
    color: #fa5f55;
    border: 2px solid #fa5f55;
}

.order-form > .a1{
    color: black;
    text-decoration: none;
    margin: 0px 0 0px 90px;
    padding: 10px;
}

.order-form > .a1:hover{
    color: black;
    border-bottom: 2px solid #FA5F55;

}

</style>
 
    
        
              <div class="first">
    <div class="order-card">
        <h2>ADD MENU</h2>
        <div class="order-form">
            <asp:FileUpload runat="server" id="photo" class="input"></asp:FileUpload>
            <asp:TextBox ID="nm"  class="input" runat="server" placeholder="Enter Name"></asp:TextBox>
            <asp:TextBox ID="desc1" class="input" runat="server" placeholder="Description"></asp:TextBox>
            <asp:TextBox ID="price" class="input" runat="server" placeholder="price"></asp:TextBox>
            
       
             <asp:Button ID="Button1" runat="server" Text="Submit" Class="button" OnClick="Button1_Click"/>
            
           </div>
    </div>
</div>

      
</asp:Content>
      

