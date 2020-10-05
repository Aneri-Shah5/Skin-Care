<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="cpay.aspx.cs" Inherits="Skincare.cpay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 281px;
        }
        .style2
        {
            height: 281px;
            width: 226px;
        }
        .style3
        {
            width: 182px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center" style="background-image: url('photos/pay.jpg')">
<table style="width: 582px">
<tr>
<td class="style1">
<table>
<tr><td class="style3" style="text-align: left">Phone<br />
    <asp:TextBox ID="TextBox1" pattern="[0-9]{10}" runat="server" MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td><br /></tr>
<tr><td class="style3" style="text-align: left">Address<br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td><br /></tr>
<tr><td class="style3" style="text-align: left">City<br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td><br /></tr>
<tr><td class="style3" style="text-align: left">State<br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td><br /></tr>
<tr><td class="style3" style="text-align: left">Postal code<br />
    <asp:TextBox ID="TextBox5" pattern="[0-9]{6}" runat="server" MaxLength="6"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
</table>
</td>

<td class="style2">
<table style="height: 70px; width: 211px">
<tr><td class="style4" style="font-weight: bolder; font-size: x-large">Customized Kit</td></tr>
<tr><td class="style4" style="font-weight: bolder">Price 1599 Rs<br />
    <br />
    </td></tr>
<tr><td class="style4" style="font-weight: bold; text-align: left;">Payment mode(By 
    Default COD):<br />
    <asp:ImageButton ID="ImageButton1" runat="server" Height="56px" 
        ImageUrl="~/photos/cod.jpg" style="text-align: left" Width="170px" 
        onclick="ImageButton1_Click" />
    <br />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" 
        ImageUrl="~/photos/card.png" Width="149px" onclick="ImageButton2_Click1" />
    <br />
    </td></tr>
    <br />
    <tr>
    <td>
     <div runat="server" id="div_card" 
           style=" background-color: #FFFFCC; ">
           <table>
           <tr><td style="text-align: left" class="style3">Card no<br />
               <asp:TextBox ID="cardtxt" runat="server" pattern="[0-9]{16}" MaxLength="16"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                   ControlToValidate="cardtxt" ErrorMessage="*" Font-Size="Smaller" 
                   ForeColor="Red"></asp:RequiredFieldValidator>
               <br />
               </td></tr>
           <tr><td style="text-align: left" class="style3">Exp Date<br />
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem>Month</asp:ListItem>
                   <asp:ListItem>01</asp:ListItem>
                   <asp:ListItem>02</asp:ListItem>
                   <asp:ListItem>03</asp:ListItem>
                   <asp:ListItem>04</asp:ListItem>
                   <asp:ListItem>05</asp:ListItem>
                   <asp:ListItem>06</asp:ListItem>
                   <asp:ListItem>07</asp:ListItem>
                   <asp:ListItem>08</asp:ListItem>
                   <asp:ListItem>09</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
                   <asp:ListItem>11</asp:ListItem>
                   <asp:ListItem>12</asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
               <asp:DropDownList ID="DropDownList2" runat="server">
                   <asp:ListItem>Year</asp:ListItem>
                   <asp:ListItem>21</asp:ListItem>
                   <asp:ListItem>22</asp:ListItem>
                   <asp:ListItem>23</asp:ListItem>
                   <asp:ListItem>24</asp:ListItem>
                   <asp:ListItem>25</asp:ListItem>
                   <asp:ListItem>26</asp:ListItem>
                   <asp:ListItem>27</asp:ListItem>
                   <asp:ListItem>28</asp:ListItem>
                   <asp:ListItem>29</asp:ListItem>
                   <asp:ListItem>30</asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
               <br />
               </td></tr>
           <tr><td style="text-align: left" class="style3">Cvv<br />
               <asp:TextBox ID="cvvtxt" pattern="[0-9]{3}" runat="server" MaxLength="3"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                   ControlToValidate="cvvtxt" ErrorMessage="*" Font-Size="Smaller" 
                   ForeColor="Red"></asp:RequiredFieldValidator>
               </td></tr>
           </table>
   </div>
    </td>
    </tr>


</table>
</td>
</tr>
</table>
    <asp:Button ID="Button1" runat="server" Text="Place Order" BackColor="#9B8FCB" 
        Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="36px" 
        onclick="Button1_Click" Width="123px" />
</div>
</asp:Content>
