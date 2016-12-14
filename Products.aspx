<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Table ID="Table1"  runat="server" Width="1117px">
        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">
        <asp:TableHeaderCell ID="TableHeaderCell1" runat="server">Products Name:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell2" runat="server">Products Type:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell3" runat="server">Products Price:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell4" runat="server">Products Image:</asp:TableHeaderCell>
    </asp:TableHeaderRow>
    </asp:Table>
    <br/>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Select the product that you want to purchase: "></asp:Label>
    <br/>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" Width="261px"></asp:DropDownList>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="    Place Your Order    " OnClick="Button1_Click" />
     
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
   
</asp:Content>

