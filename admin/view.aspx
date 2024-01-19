<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/admin/admin.master" CodeFile="view.aspx.cs" Inherits="admin_view" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

    <h1 style="margin-bottom:20px; margin-top:20px;" align="center">VIEW PRODUCT</h1>
    <p style="margin-bottom:20px; margin-top:20px;" align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
                <asp:GridView ID="GridView2" runat="server" align="center" Width="100%" AutoGenerateColumns="False" Font-Size="X-Large" OnRowCommand="Grideview2_Rowcommand">
                    <Columns>  
                        <asp:TemplateField HeaderText="Item Name" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Image ID="photo" runat="server" ImageUrl='<%# Bind("photo")%>' Height="200" Width="200" ImageAlign="AbsMiddle"></asp:Image>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>  
                        <asp:TemplateField HeaderText="Price" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="nm" runat="server" Text='<%# Bind("nm") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>  
                        <asp:TemplateField HeaderText="Description" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="descr1" runat="server" Text='<%# Bind("descr") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>  
                        <asp:TemplateField HeaderText="Category" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="price" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                     
                        <Columns>  
                        <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edt" Text="EDIT" CommandArgument='<%# Bind("Id") %>' style="font-size:20px;border-color:black;color:white;background:black;border-radius:10px;margin:1px;padding:8px;border-width:10px;text-decoration:none;"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>  
                        <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="dlt" Text="DELETE" CommandArgument='<%# Bind("Id") %>' style="font-size:20px;border-color:black;color:white;background:black;border-radius:10px;margin:1px;padding:8px;border-width:10px;text-decoration:none;"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
    </asp:GridView>
    </asp:Content>
