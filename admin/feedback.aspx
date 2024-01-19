<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin_feedback" MasterPageFile="~/admin/admin.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
       .head {
           color:#fa5f55;
           margin-left: 650px;
           font-size: 30px;
       }
       .cart {
           margin-top: 100px;
           margin-left: 480px;
       }
       .r1 {
          padding: 10px;
          background-color: #fa5f55;
          color: white;
          border-radius: 10px;
       }
           .r1:hover {
               background-color: white;
               color: #fa5f55;
               border: 2px solid #fa5f55;
           }
       


   </style> 
    <div class="head">
        <h3>Feedback</h3>
    </div>
       

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" Cssclass="cart" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="unm" HeaderText="unm" SortExpression="unm" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="feed" HeaderText="feedback" SortExpression="feed" />
        </Columns>

        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#fa5f55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

    </asp:GridView>

    </asp:Content>
