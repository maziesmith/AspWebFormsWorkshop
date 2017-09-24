<%@ Page Title="Check Out" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="ShoppingCart.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Your cart currently contains:</h3>
    <asp:ListBox ID="lstCart" Width="350px" Height="175px" runat="server"></asp:ListBox>
    <br/>
    <br/>
    <asp:Label ID="lblTotal" runat="server"></asp:Label>
    <br/>
    <br/>
    <asp:LinkButton ID="btnStartOver" runat="server" OnClick="btnStartOver_Click">Start Over</asp:LinkButton>
    <br/>
    <br/>
    <asp:LinkButton ID="btnContinue" runat="server" OnClick="btnContinue_Click">Continue Shopping</asp:LinkButton>
</asp:Content>