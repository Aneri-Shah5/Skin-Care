<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Register.Master" Theme="Button" CodeBehind="Signup.aspx.cs" Inherits="Skincare.Signup" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" style="color: #FFFFFF">
    <p>
        <br />
    </p>
    <p>
    </p>
    <h2 style="font-family: Arial; font-size: 20pt; color: #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
    <h2 style="font-family: Arial; font-size: 20pt; color: #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign-up</h2>
    <p style="font-family: Arial; font-size: 20pt; color: #FFFFFF;">
        &nbsp;</p>
    <p style="margin-left: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="uname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="uname" ErrorMessage="Plaese enter name" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="uname" ErrorMessage="Enter valid name" 
            OnServerValidate="namevalidate" ForeColor="#CC3300"></asp:CustomValidator>
        </p>
    
    <p style="margin-left: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="email" 
            runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="email" ErrorMessage="Plaese enter email" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="email" ErrorMessage="Please enter valid email" 
            ForeColor="#CC3300" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p style="margin-left: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Password : <asp:TextBox ID="password" TextMode="Password"
            runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="password" ErrorMessage="Plaese enter password" 
            ForeColor="#CC3300"></asp:RequiredFieldValidator>
        
    </p><asp:CustomValidator ID="passwordvalid" runat="server" 
            ControlToValidate="password" ErrorMessage="Password should be more than 6 character" 
            OnServerValidate="passwordvalidate" ForeColor="#CC3300"></asp:CustomValidator>
    <p style="margin-left: 160px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="signin" runat="server" Text="Sign-up" onclick="signin_Click" />
    </p>
    
        
            <div style="margin-left: 280px">
                <asp:Menu ID="Menu1" runat="server" >
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Login.aspx" Text="Already have an account?" 
                    Value="Already have an account"></asp:MenuItem>
                    </Items>
                </asp:Menu>
    </div>
  
  
    <p style="margin-left: 40px">
        &nbsp;</p>
    </form>

</asp:Content>