<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class = "fluid-container">
        <div>
            <h1>
                Welcome to Archaeotech!

            </h1>
            <h3>
                We're a company dedicated to bringing 
                old things to new owners~</h3>
            <p>
                --PLACEHOLDER UNTIL THE AD ROTATOR BEHAVES CIVILIZED--</p>
            <p style="font-style = fine";>
                Or I embed a shoe in the wall</p>

        </div>
    </div>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    
    </asp:Content>




