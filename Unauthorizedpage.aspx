<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Unauthorizedpage.aspx.cs" Inherits="Unauthorizedpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-6 center-block">
    <asp:image id="img" runat="server" imageurl="http://www.wphelpline.com/wp-content/uploads/forbidden-346x315.jpg" /> <br /> <br/>
               
    
            </div> 
             <div class="col-md-8 center-block">
             <asp:Label ID="Label1" Font-Size="20px" runat="server" Text="Access Denied: You don't have permission to access on this webpage"></asp:Label>
                 
                 <br/>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" Font-Size="15px" runat="server" NavigateUrl="Registerpage.aspx">Dont have an account? click here to register</asp:HyperLink> 
                               <asp:HyperLink ID="HyperLink1" Font-Size="15px" runat="server" NavigateUrl="Loginpage.aspx"> or click here to sign in</asp:HyperLink>
            </div>
             </div>
        </div>
</asp:Content>

