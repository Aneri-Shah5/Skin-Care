<%@ Page Title="" Language="C#" MasterPageFile="~/Display.Master" AutoEventWireup="true" CodeBehind="customizeaspx.aspx.cs" Inherits="Skincare.customizeaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 473px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br />
<h1 align="center" 
        style="font-family: 'Book Antiqua'; text-decoration: blink; font-size: xx-large;">Skin Assessment</h1>
<asp:Image ID="Image1" runat="server" ImageAlign="Right" 
        ImageUrl="~/photos/skin1.jpeg" />
<table style="font-family: 'Californian FB'; font-weight: bolder; font-size: large; color: #000000" 
       cellpadding="25px" >
<tr><td class="style2">GENDER <br /><br />
<asp:RadioButton ID="gendermale" runat="server" Text="Male" GroupName="gender" />  
&nbsp;<asp:RadioButton ID="genderfemale" runat="server" Text="Female" 
        GroupName="gender" /> 

    </td></tr>
<tr ><td class="style2" >AGE<br /><br />
   
    <asp:TextBox ID="age" runat="server"></asp:TextBox>
    <br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" 
        ErrorMessage="Age should be in between 15-90" Font-Size="10pt" ForeColor="Red" 
        MaximumValue="90" MinimumValue="15"></asp:RangeValidator>
    </td></tr>
<tr><td class="style2">WHAT'S THE CONCERN YOU WANT TO SOLVE?<br /><br />
    
    <asp:RadioButton ID="acne" GroupName="concern" Text="Acne" runat="server" />
    &nbsp;<asp:RadioButton ID="pigmentation" GroupName="concern" Text="Pigmentation" runat="server" />
   &nbsp; <asp:RadioButton ID="pores" GroupName="concern" Text="Pores" runat="server" />
   &nbsp; <asp:RadioButton ID="scar" GroupName="concern" Text=" Acne Scars/Marks" runat="server"/>
    </td></tr>
<tr><td class="style2">SKIN TEXTURE<br /><br />
    
<asp:RadioButton ID="oily" GroupName="texture" Text="Oily" runat="server" />
&nbsp;<asp:RadioButton ID="dry" GroupName="texture" Text="Dry" runat="server"/>
&nbsp;<asp:RadioButton ID="combination" GroupName="texture" Text="Combination" runat="server" />
</td></tr>
<tr><td class="style2">SKIN TYPE<br /><br />
    

    <asp:RadioButton ID="normal" GroupName="type" Text="Normal" runat="server" />
   &nbsp; <asp:RadioButton ID="sensitive" GroupName="type" Text="Sensitive" runat="server"/>
</td></tr>
<tr><td class="style2">ARE YOU UNDERGOING ANY TREATMENT?<br /><br />
    
    
    <asp:RadioButton ID="yes" GroupName="treat" Text="Yes" runat="server" />
   &nbsp; <asp:RadioButton ID="no" GroupName="treat" Text="No" runat="server"/>

</td></tr>
<tr><td align="center" class="style2">
    <asp:Button ID="cust" runat="server" BackColor="#CC99FF" ForeColor="Black" 
        Height="49px" Text="Customize" Font-Bold="True" onclick="cust_Click" 
        Width="119px" />
    <br />
    <br />
    <br />
    </td></tr>
</table>
</asp:Content>
