<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Inherits="Loginpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 center-block">
                <asp:Label runat="server" Text="Login Page" Font-Size="40px" Font-Bold="True"></asp:Label> <br/><br/>
                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="member" ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="Please enter username" ForeColor="red"></asp:RequiredFieldValidator>
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="member" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Please enter password" ForeColor="red"></asp:RequiredFieldValidator><br/>
                <br/>
                <asp:Label ID="errorLabel" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
                <br/>
                
            </div>
            
            <div class="col-md-4 center-block">
            <asp:Button ValidationGroup="member" ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"/>
                  </div>
        </div>
        <br/>
        <br/>
        <br/>
        
        
        <div class="row">
            <div class="col-md-6 center-block">
                <asp:Label runat="server" Text="Login as admin" Font-Size="40px" Font-Bold="True"></asp:Label> <br/><br/>
                <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="adminUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="admin" ID="RequiredFieldValidator3" runat="server" ControlToValidate="adminUsername" ErrorMessage="Please enter username" ForeColor="red"></asp:RequiredFieldValidator>
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="adminPassword" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="admin" ID="RequiredFieldValidator4" runat="server" ControlToValidate="adminPassword" ErrorMessage="Please enter password" ForeColor="red"></asp:RequiredFieldValidator><br/>
                <br/>
                <asp:Label ID="adminErrorLabel" runat="server" Text="Label" Visible="False" ForeColor="red"></asp:Label>
                <br/>
                
            </div>
            
            <div class="col-md-4 center-block">
            <asp:Button ID="adminButton" ValidationGroup="admin" runat="server" Text="submit" OnClick="Button2_Click"/>
                  </div>
        </div>
    </div>
  
    
          
</asp:Content>