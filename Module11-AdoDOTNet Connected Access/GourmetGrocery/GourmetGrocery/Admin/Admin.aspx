<%@ Page Title="Admin Tools" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GourmetGrocery.Admin.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink">
        <asp:ListItem Value="CategorySales.aspx">CategorySales</asp:ListItem>
        <asp:ListItem Value="EmployeeInfo.aspx">EmployeeInfo</asp:ListItem>
    </asp:BulletedList>
</asp:Content>