<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SubmitDeal.aspx.cs" Inherits="SubmitDeal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-6 center-block">
            <asp:Label ID="Label1" runat="server" Text="Submit a Deal" Font-Size="40 px"></asp:Label>
        </div>
         <br/>
        <br/>
        <br/>
         <br/>
      
        <div class="col-sm-4">
            <asp:Image ID="ProdImage" runat="server" Height="200px" Width="200px"></asp:Image> <br/>
            <asp:FileUpload ID="FileUpload1" runat="server"/>
            <asp:Button ID="Button2" ValidationGroup="image" runat="server" Text="Preview the picture" OnClick="Button2_Click"/>
        </div>
        <div class="col-sm-8">
            <asp:Label ID="Label2" runat="server" Text="Product Name:"></asp:Label>
            <asp:TextBox ID="prodName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" runat="server" ErrorMessage="Please enter the product's name." ControlToValidate="prodName"></asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="Label3" runat="server" Text="Product Type:"></asp:Label>
            <asp:TextBox ID="prodType" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" runat="server" ErrorMessage="Please enter the product's type." ControlToValidate="prodType"></asp:RequiredFieldValidator>

            <br/>
            <asp:Label ID="Label4" runat="server" Text="Product Price:"></asp:Label>
            <asp:TextBox ID="prodPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" runat="server" ErrorMessage="Please enter the product's price." ControlToValidate="prodPrice"></asp:RequiredFieldValidator>
        </div>
         <br/>
        <br/>
        <br/>
         <br/>
        <br/>
        <br/> <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="col-md-4 center-block">
            <asp:Button ID="Button1" runat="server" Text="   Submit   " OnClick="Button1_Click"/>
        </div>
    </div>
        </div>
</asp:Content>