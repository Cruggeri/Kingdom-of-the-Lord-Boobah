<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Memberspage.aspx.cs" Inherits="Memberspage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 center-block">

                <asp:Label id="myprofile" runat="server" Text="My Profile" Font-Size="40px" Font-Bold="True"></asp:Label> <br/><br/>


            </div>

            <div class="col-md-4">

                <asp:Image ID="userImg" runat="server" Width="200px"/>
                <br/>
                <br/>
                <asp:Label ID="Label2" runat="server" Font-Size="20px" Font-Bold="True" Text="Registered User Benefits:"></asp:Label> <br/> <br/>
                <asp:Button ID="submitButton" runat="server" Text="Sell your own product." OnClick="submitButton_Click"/> <br/>
                <asp:Button ID="prButton" runat="server" Text="Check out these premium deals" OnClick="prButton_Click"/>

            </div>
            <div class="col-md-6">
                
                <asp:Label id="name" Font-Bold="True" runat="server" Font-Size="30px" Text=""></asp:Label>
                <asp:Label ID="surname" Font-Bold="True" Font-Size="30px" runat="server" Text=""></asp:Label>
                <br/>
                <br/>
                <asp:Label ID="Label3" Font-Size="18px" runat="server" Text="Username:"></asp:Label>
                <asp:Label ID="username" Font-Size="18px" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Password:" Font-Size="18px"></asp:Label>
                <asp:Label ID="password" runat="server" Text="" Font-Size="18px"></asp:Label>
                <br/>
                <asp:Label ID="Label5" Font-Size="18px" runat="server" Text="Gender:"></asp:Label>
                <asp:Label ID="gender" Font-Size="18px" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label6" Font-Size="18px" runat="server" Text="Email Address:"></asp:Label>
                <asp:Label ID="emailAddress" Font-Size="18px" runat="server" Text="Label"></asp:Label>


                <br/>


            </div>
        </div>
    </div>
    <div>
    <br/>
          <asp:Button ID="editSelfButton" runat="server" Text="Change your password" />


        <div class="container">
            <div>
                <h3 id =" sellPanel" >Seller Panel-</h3>
            </div>
          <asp:Table ID="Table1"  runat="server" Width="1117px">
        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">
        <asp:TableHeaderCell ID="TableHeaderCell1" runat="server">Products Name:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell2" runat="server">Products Type:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell3" runat="server">Products Price:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell4" runat="server">Products Image:</asp:TableHeaderCell>
    </asp:TableHeaderRow>
    </asp:Table>
    
     
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        
       
        
          <br />
          <asp:Label ID="addItemLabel" runat="server" Text="Place an item up for sale" ></asp:Label>
          <br />
         
        
       
        
    <asp:Label ID="prNameLabel" runat="server" Text="Product Name: "></asp:Label>
    <asp:TextBox ID="prName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ErrorMessage="Name field may not be left empty" ControlToValidate="prName" ForeColor="green"></asp:RequiredFieldValidator>      
    <br />
    <asp:Label ID="prTypeLabel" runat="server" Text="Product Type: "></asp:Label>
    <asp:DropDownList ID="prTypeDropDownList" runat="server">
        <asp:ListItem>none</asp:ListItem>
        <asp:ListItem>Shiny Rock</asp:ListItem>
        <asp:ListItem>Soap-on-a-Rope</asp:ListItem>
        <asp:ListItem>Welsh Person</asp:ListItem>
        <asp:ListItem>Shoe Contents</asp:ListItem>
    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="prDDLRequiredFieldValidator" runat="server" ErrorMessage="Must choose a product type" ControlToValidate="prTypeDropDownList" ForeColor="orange" InitialValue="none"></asp:RequiredFieldValidator>
        <br />
          <asp:Label ID="uploadPicLabel1" runat="server" Text="you may upload an image of the item belowS"></asp:Label>
    <asp:FileUpload ID="picFileUpload" runat="server" />
        <asp:Label ID="picUpLabel" runat="server" Text=""></asp:Label>
        <asp:RequiredFieldValidator ID="picRequiredFieldValidator" runat="server" ErrorMessage="Must upload a picture" ControlToValidate="picFileUpload" ForeColor="Purple" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:Image ID="inImage" runat="server" Height="135px" Width="157px" />
        <br />
<asp:Button ID="saveButton" runat="server" Text="submit" OnClick="saveButton_Click" />
    </div>
          </div>

</asp:Content>