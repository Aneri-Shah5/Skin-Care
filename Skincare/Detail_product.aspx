<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="Detail_product.aspx.cs" Inherits="Skincare.Detail_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            text-align: left;
        }
        .style4
        {
            height: 23px;
            text-align: center;
            margin-left: 80px;
        }
        .style5
        {
            width: 204px;
            text-align: center;
        }
        .style6
        {
            width: 237px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" 
            DataSourceID="SqlDataSource1" style="margin-right: 53px" 
            onitemcommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style5" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="400px" 
                                ImageUrl='<%# Eval("product_image") %>' Width="400px" />
                        </td>
                        <td class="style6"><h1>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label></h1>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                          <b>  Type:</b>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                           <b> Main Ingredient:</b>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("main_ingredient") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                          <b>  Qty:&nbsp;</b>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="63px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                         <b> Price: Rs.</b>
                            <asp:Label ID="cost" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                           <b> 
                            <br />
                            <br />
                            Description:</b>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            <br />
                           <b> Ingredients:</b>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ingredients") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="buy" runat="server" Text="Buy Now" BackColor="#CC99FF" 
                                Font-Bold="True" Font-Size="10pt" Height="37px" Width="95px" 
                                CommandArgument='<%#Eval("product_id") %>' CommandName="Buy" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:skincareConnectionString2 %>" 
            SelectCommand="SELECT * FROM [products] WHERE ([product_id] = @product_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="product_id" QueryStringField="id" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
