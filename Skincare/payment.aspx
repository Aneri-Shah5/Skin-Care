<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Skincare.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .style1
        {
            text-align: left;
            width: 357px;
        }
        .style2
        {
            width: 357px;
        }
        .style3
        {
            width: 309px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<div align="center" 
        style="background-image: url('photos/pay.jpg'); background-repeat: no-repeat">
  <table style="width: 582px">
  <tr>
  <td>
  

   <table>
   <tr>
   <td style="text-align: left" class="style2">Phone Number<br />
       <asp:TextBox ID="phntxt" pattern="[0-9]{10}" runat="server" TextMode="Phone" 
           MaxLength="10"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="phntxt" ErrorMessage="Enter the Data" Font-Size="Smaller" 
           ForeColor="Red"></asp:RequiredFieldValidator>
       </td><br />
   </tr>
   <tr>
   <td style="text-align: left" class="style2">
   Address
       <br />
       <asp:TextBox ID="addtxt" runat="server" TextMode="MultiLine"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="addtxt" ErrorMessage="Enter the Data" Font-Size="Smaller" 
           ForeColor="Red"></asp:RequiredFieldValidator>
       </td>
   </tr>
   <tr>
   <td class="style1">
       City<br />
       <asp:TextBox ID="citytxt" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="citytxt" ErrorMessage="Enter the Data" Font-Size="Smaller" 
           ForeColor="Red"></asp:RequiredFieldValidator>
       <br />
   </td>
   </tr>
   <tr>
   <td style="text-align: left" class="style2">
       State
       <br />
       <asp:TextBox ID="statetxt" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ControlToValidate="statetxt" ErrorMessage="Enter the Data" Font-Size="Smaller" 
           ForeColor="Red"></asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td style="text-align: left" class="style2">Postal code<br />
       <asp:TextBox ID="pintxt" pattern="[0-9]{6}" runat="server" MaxLength="6"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
           ControlToValidate="pintxt" ErrorMessage="Enter the Data" Font-Size="Smaller" 
           ForeColor="Red"></asp:RequiredFieldValidator>
       <br />
       </td>
   </tr>
   </table>
   </td>
  
   <td>
   
          <table >
           <tr>
               <td>
   
     <b>  <asp:Label ID="name" runat="server" Text="Label" Font-Bold="True" 
           Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black"></asp:Label>
                   <br />
                   </b>
               </td>
           </tr>
           <tr>
               <td style="text-align: left">
      <b> Price:&nbsp; </b><asp:Label ID="cost" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
           <tr>
               <td style="text-align: left">
      <b> Qty:&nbsp;&nbsp;&nbsp; </b><asp:Label ID="quantity" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
           <tr>
               <td>
       <b>Total: <asp:Label ID="price" runat="server" Text="Label"></asp:Label> &nbsp;Rs<br />
                   </b><br /></td>
           </tr>
           <br />
           <tr>
               <td>
      <b style="text-align: left">Payment Mode(by default cod)</b> 
                   <br />
       <asp:ImageButton ID="cod" runat="server" Height="54px" 
           ImageUrl="~/photos/cod.jpg" Width="190px" onclick="cod_Click" />
                   <br />
       <asp:ImageButton ID="cardb" runat="server" ImageUrl="~/photos/card.png" 
           Height="44px" Width="194px" onclick="cardb_Click" />
               </td>
           </tr>
       </table>
       
       &nbsp;<br />
       

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
               </td></tr></table></div>
           
   </td>
   </tr>
   </table>
   
   <asp:Button ID="order" runat="server" Text="Place Order" BackColor="#99FFCC" 
        BorderStyle="Groove" Font-Bold="True" ForeColor="#003366" Height="29px" 
        Width="87px" onclick="order_Click" />
    <br />
</div>
    
</asp:Content>
