<%@ Page Title="Shop for Music" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShoppingCart.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Select a CD (all CDs are $12.99) and click Add to Cart to add the CD to your Shopping Cart</h3>
    <asp:ListBox ID="lstItems" Width="350px" Height="200px" runat="server"></asp:ListBox>
    <br/>
    <br/>
    <asp:Label ID="lblCartCount" runat="server"></asp:Label>
    <br/>
    <br/>
    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn" OnClick="btnAddToCart_Click"/>
    <br/>
    <br/>
    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btn" OnClick="btnCheckout_Click"/>
</asp:Content>