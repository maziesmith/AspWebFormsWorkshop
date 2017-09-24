<%@ Page Title="Sales by Category" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="CategorySales.aspx.cs" Inherits="GourmetGrocery.Admin.CategorySales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lblCategory" runat="server" AssociatedControlID="lstCategories" Text="Category:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblYear" runat="server" AssociatedControlID="ddlYear" Text="Year:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ListBox ID="lstCategories" runat="server"></asp:ListBox>
            </td>
            <td style="vertical-align: top">
                <asp:DropDownList ID="ddlYear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <br/>
    <asp:Button ID="btnGetSales" runat="server" Text="Get Sales" OnClick="btnGetSales_Click"/>
    <br/>
    <br/>
    <asp:GridView ID="grdSales" runat="server" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
        <FooterStyle BackColor="White" ForeColor="#333333"/>
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"/>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center"/>
        <RowStyle BackColor="White" ForeColor="#333333"/>
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White"/>
        <SortedAscendingCellStyle BackColor="#F7F7F7"/>
        <SortedAscendingHeaderStyle BackColor="#487575"/>
        <SortedDescendingCellStyle BackColor="#E5E5E5"/>
        <SortedDescendingHeaderStyle BackColor="#275353"/>
    </asp:GridView>
    <br/>
    <asp:Button ID="btnExport" runat="server" Text="Export Data" OnClick="btnExport_Click"/>
    <br/>
    <br/>
</asp:Content>