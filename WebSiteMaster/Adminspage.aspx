<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminspage.aspx.cs" Inherits="Adminspage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">

            <div class="col-md-8 center-block">
                <asp:Label runat="server" Text="List of registered users:" Font-Size="30px" Font-Bold="True"></asp:Label>

                <br/>
                <br/>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id"/>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"/>
                        <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname"/>
                        <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName"/>
                        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd"/>
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"/>
                        <asp:BoundField DataField="emailAdd" HeaderText="emailAdd" SortExpression="emailAdd"/>
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image"/>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br/>
                <br/>
                <br/>
                <asp:Label ID="regusers" runat="server" Text=""></asp:Label>
                <br/>
                <br/>
                <asp:Button ID="Button1" runat="server" Text="Reset the list" OnClick="Button1_Click"/>
                <br/>
                <br/>
                <br/>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @original_Id AND [name] = @original_name AND [surname] = @original_surname AND [userName] = @original_userName AND [pwd] = @original_pwd AND [gender] = @original_gender AND [emailAdd] = @original_emailAdd AND [image] = @original_image" InsertCommand="INSERT INTO [Users] ([name], [surname], [userName], [pwd], [gender], [emailAdd], [image]) VALUES (@name, @surname, @userName, @pwd, @gender, @emailAdd, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [name] = @name, [surname] = @surname, [userName] = @userName, [pwd] = @pwd, [gender] = @gender, [emailAdd] = @emailAdd, [image] = @image WHERE [Id] = @original_Id AND [name] = @original_name AND [surname] = @original_surname AND [userName] = @original_userName AND [pwd] = @original_pwd AND [gender] = @original_gender AND [emailAdd] = @original_emailAdd AND [image] = @original_image">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32"/>
                        <asp:Parameter Name="original_name" Type="String"/>
                        <asp:Parameter Name="original_surname" Type="String"/>
                        <asp:Parameter Name="original_userName" Type="String" />
                        <asp:Parameter Name="original_pwd" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_emailAdd" Type="String" />
                        <asp:Parameter Name="original_image" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String"/>
                        <asp:Parameter Name="surname" Type="String"/>
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="pwd" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="emailAdd" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String"/>
                        <asp:Parameter Name="surname" Type="String"/>
                        <asp:Parameter Name="userName" Type="Int32"/>
                        <asp:Parameter Name="pwd" Type="String"/>
                        <asp:Parameter Name="gender" Type="String"/>
                        <asp:Parameter Name="emailAdd" Type="String" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_surname" Type="String" />
                        <asp:Parameter Name="original_userName" Type="String" />
                        <asp:Parameter Name="original_pwd" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_emailAdd" Type="String" />
                        <asp:Parameter Name="original_image" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br/>
                <br/>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [admins] WHERE [id] = @original_id AND [userName] = @original_userName AND [pwd] = @original_pwd" InsertCommand="INSERT INTO [admins] ([userName], [pwd]) VALUES (@userName, @pwd)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [admins]" UpdateCommand="UPDATE [admins] SET [userName] = @userName, [pwd] = @pwd WHERE [id] = @original_id AND [userName] = @original_userName AND [pwd] = @original_pwd">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32"/>
                        <asp:Parameter Name="original_userName" Type="String"/>
                        <asp:Parameter Name="original_pwd" Type="String"/>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userName" Type="String"/>
                        <asp:Parameter Name="pwd" Type="String"/>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userName" Type="String"/>
                        <asp:Parameter Name="pwd" Type="String"/>
                        <asp:Parameter Name="original_id" Type="Int32"/>
                        <asp:Parameter Name="original_userName" Type="String"/>
                        <asp:Parameter Name="original_pwd" Type="String"/>
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br/>


                <asp:Label runat="server" Text="List of admins:" Font-Size="30px" Font-Bold="True"></asp:Label>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                        <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                
                 <asp:Label runat="server" Text="List of products:" Font-Size="30px" Font-Bold="True"></asp:Label>
                <br/>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
                <asp:Button ID="Button2" runat="server" Text="Submit a product" OnClick="Button2_Click" />
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @original_Id AND [prodName] = @original_prodName AND [prodType] = @original_prodType AND [prodPrice] = @original_prodPrice AND [prodImage] = @original_prodImage" InsertCommand="INSERT INTO [Products] ([Id], [prodName], [prodType], [prodPrice], [prodImage]) VALUES (@Id, @prodName, @prodType, @prodPrice, @prodImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [prodName] = @prodName, [prodType] = @prodType, [prodPrice] = @prodPrice, [prodImage] = @prodImage WHERE [Id] = @original_Id AND [prodName] = @original_prodName AND [prodType] = @original_prodType AND [prodPrice] = @original_prodPrice AND [prodImage] = @original_prodImage">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_prodName" Type="String" />
                        <asp:Parameter Name="original_prodType" Type="String" />
                        <asp:Parameter Name="original_prodPrice" Type="String" />
                        <asp:Parameter Name="original_prodImage" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodType" Type="String" />
                        <asp:Parameter Name="prodPrice" Type="String" />
                        <asp:Parameter Name="prodImage" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="prodName" Type="String" />
                        <asp:Parameter Name="prodType" Type="String" />
                        <asp:Parameter Name="prodPrice" Type="String" />
                        <asp:Parameter Name="prodImage" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_prodName" Type="String" />
                        <asp:Parameter Name="original_prodType" Type="String" />
                        <asp:Parameter Name="original_prodPrice" Type="String" />
                        <asp:Parameter Name="original_prodImage" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>

        </div>


    </div>
</asp:Content>
