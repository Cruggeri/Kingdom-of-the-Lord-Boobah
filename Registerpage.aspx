<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registerpage.aspx.cs" Inherits="Registerpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 center-block">
                <asp:Label runat="server" Text="Register Page" Font-Size="40px" Font-Bold="True"></asp:Label> <br/><br/>

            </div>

            <div class="col-xs-6">

                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                <br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" runat="server" ErrorMessage="Please enter username" ControlToValidate="Name"></asp:RequiredFieldValidator>
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
                <asp:TextBox ID="Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" runat="server" ErrorMessage="Please enter surname" ControlToValidate="Surname"></asp:RequiredFieldValidator>
                <br/>
                  <br/>
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
               <asp:RadioButtonList id="RadioButtonList1" runat="server">
               <asp:ListItem Selected="True">Male</asp:ListItem>
                 <asp:ListItem>Female</asp:ListItem>
                 </asp:RadioButtonList>
                <br/>
                
                <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" runat="server" ErrorMessage="Please enter a username" ControlToValidate="Username"></asp:RequiredFieldValidator>
                <br/>
                  <br/>
                <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red" runat="server" ErrorMessage="Please enter a password" ControlToValidate="Password"></asp:RequiredFieldValidator>
                <br/>
                  <br/>
                <asp:Label ID="Label5" runat="server" Text="Email Address:"></asp:Label>
                <asp:TextBox ID="emailAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" runat="server" ErrorMessage="Please enter email address" ControlToValidate="emailAddress"></asp:RequiredFieldValidator>
                <br/>
                <br/>

            </div>

            <div class="col-xs-6">
                <asp:Image ID="Image1" ImageUrl="~/images/default.png" runat="server" Width="180px" Height="180px"/> <br/>
                <asp:FileUpload ID="FileUpload1" runat="server"/>
                <asp:Button ID="Button1" runat="server" Text="Preview the picture" OnClick="Button1_Click1" ValidationGroup="picture"/>
            </div>
        </div>
    </div>
    <br/>
    
    <div class="col-md-4 center-block">
    <asp:Button  ID="Button2" runat="server" Text="   Submit   " OnClick="Button1_Click"/>
   </div>
   
</asp:Content>