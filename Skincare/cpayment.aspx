<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="cpayment.aspx.cs" Inherits="Skincare.cpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div align="center">
<br />

<h1 style="font-family: 'Yu Gothic Medium'; font-weight: bolder; font-style: normal; color: #9B8FCB; text-decoration: blink; background-color: #000000;">YOUR CUSTOMIZED KIT</h1>
<table style="background-color: #9B8FCB">

<tr>
<td>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="style1">
            <tr><td class="style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text='<%# Eval("product_name") %>'></asp:Label>
                </td></tr>
                <tr>
                
                       <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="300px" 
                            ImageUrl='<%# Eval("product_image") %>' Width="300px" />
                    </td>
                </tr>
                <tr><td style="font-weight: bolder; font-size: medium">Step-1 Cleanse Your face</td></tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:skincareConnectionString2 %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([main_ingredient] = @main_ingredient)">
        <SelectParameters>
            <asp:SessionParameter Name="main_ingredient" SessionField="m1" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
<td>
  
    <asp:DataList ID="DataList2" runat="server" DataKeyField="product_id" 
        DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <table class="style1">
            <tr><td> 
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text='<%# Eval("product_name") %>'></asp:Label>
                </td></tr>
            <tr><td> 
                <asp:Image ID="Image2" runat="server" Height="300px" 
                    ImageUrl='<%# Eval("product_image") %>' Width="300px" />
                </td></tr>
                <tr><td style="font-size: medium; font-weight: bolder">Step-2 Treat your face</td></tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:skincareConnectionString2 %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([main_ingredient] = @main_ingredient)">
        <SelectParameters>
            <asp:SessionParameter Name="main_ingredient" SessionField="m2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
    <td>
    <asp:DataList ID="DataList3" runat="server" DataKeyField="product_id" 
        DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <table class="style1">
            <tr><td> 
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Text='<%# Eval("product_name") %>'></asp:Label>
                </td></tr>
                <tr>
                    <td>
                        <asp:Image ID="Image3" runat="server" Height="300px" 
                            ImageUrl='<%# Eval("product_image") %>' Width="300px" />
                    </td>
                </tr>
                <tr><td style="font-weight: bolder; font-size: medium">Step-3 Moisturise your face</td></tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:skincareConnectionString2 %>" 
        SelectCommand="SELECT * FROM [products] WHERE ([main_ingredient] = @main_ingredient)">
        <SelectParameters>
            <asp:SessionParameter Name="main_ingredient" SessionField="m3" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td>
    </tr>
    </table>
    <h2>Price: 1599Rs</h2><br />
    <asp:Button ID="Button1" runat="server" Text="Buy" BackColor="Black" 
        BorderColor="Black" Font-Bold="True" Font-Size="Larger" ForeColor="#9B8FCB" 
        Height="36px" onclick="Button1_Click" Width="107px" />
    </div>
</asp:Content>
