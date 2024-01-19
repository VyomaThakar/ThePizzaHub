<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs"  MasterPageFile="~/admin/admin.master"  Inherits ="admin_order" %>
    



  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <style>
       .head {
           color:#fa5f55;
           margin-left: 730px;
           font-size:30px;
       }
       .cart {
           margin-top: 100px;
           margin-left: 200px;
       }
          </style>
      <div class="head">
        <h3>Order</h3>
    </div>
      <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="cart">
          <AlternatingRowStyle BackColor="White" />
          <FooterStyle BackColor="#fa5f55" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#fa5f55" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#fa5f55" ForeColor="#333333" HorizontalAlign="Center" />
          <RowStyle BackColor="white" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
          <SortedAscendingCellStyle BackColor="#FDF5AC" />
          <SortedAscendingHeaderStyle BackColor="#4D0000" />
          <SortedDescendingCellStyle BackColor="#FCF6C0" />
          <SortedDescendingHeaderStyle BackColor="#820000" />

      </asp:GridView>
      
     
</asp:Content>  
