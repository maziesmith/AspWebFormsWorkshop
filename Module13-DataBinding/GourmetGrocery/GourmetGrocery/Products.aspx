<%@ Page Title="Gourmet Products" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GourmetGrocery.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gourmet Grocery Products</h1>
    <asp:Label ID="lblCategory" runat="server" AssociatedControlID="ddlCategories" Text="Category"></asp:Label>
    <asp:DropDownList ID="ddlCategories" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True">
    </asp:DropDownList>
    <br/><br/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" SelectCommand="SELECT [ProductID], [ProductName] FROM [Products] WHERE (([CategoryID] = @CategoryID) AND ([Discontinued] = @Discontinued))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCategories" DefaultValue="1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32"/>
            <asp:Parameter DefaultValue="false" Name="Discontinued" Type="Boolean"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="grdProducts" runat="server" AllowPaging="True"
                  AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="8">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="~/ProductDetails.aspx?ProductID={0}" DataTextField="ProductID" HeaderText="Product ID" Target="_blank"/>
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName"/>
        </Columns>
    </asp:GridView>
    <br/>
</asp:Content>