<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>We are here to help.</p>
    <asp:DropDownList ID="contactDDL" runat="server" AutoPostBack="true" OnSelectedIndexChanged="contactDDL_SelectedIndexChanged">
        <asp:ListItem>choose a topic...</asp:ListItem>
        <asp:ListItem>My Account</asp:ListItem>
        <asp:ListItem>My Orders</asp:ListItem>
        <asp:ListItem>Shipping Rates and Policies</asp:ListItem>
        <asp:ListItem>Returns</asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:TextBox ID="TopicTextBox" runat="server"  Text="enter a topic here..." Visible="false"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="MessageTextBox" runat="server" Height="47px" TextMode="MultiLine" Width="193px" Text="What seems to be the issue?" Font-Italic="True" ForeColor="Blue"></asp:TextBox>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

