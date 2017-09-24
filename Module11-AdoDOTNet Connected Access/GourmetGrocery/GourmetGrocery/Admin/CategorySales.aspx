<%@ Page Title="Sales By Category" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="CategorySales.aspx.cs" Inherits="GourmetGrocery.Admin.CategorySales" %>

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
</asp:Content>