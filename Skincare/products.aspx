<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Skincare.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
       Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
        onitemcommand="DataList1_ItemCommand" >
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <br />
            <table class="style1" align="center">
                <tr>
                    <td style="text-align: center">
                        <asp:Image Width="200" Height="200" ID="Image1" runat="server" ImageUrl='<%# Eval("product_image") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label1" runat="server" 
                            Text='<%# Eval("product_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        Rs.
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="View Details" BackColor="#CCCCCC" 
                            CommandArgument='<%# Eval("product_id")%>' CommandName="Details" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:skincareConnectionString2 %>" 
        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
&nbsp;
</asp:Content>
