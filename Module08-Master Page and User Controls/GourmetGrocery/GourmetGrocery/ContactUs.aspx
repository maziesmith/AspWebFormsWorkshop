<%@ Page Title="Contact Gourmet" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="GourmetGrocery.ContactUs" %>

<%@ Register Src="UserInfo.ascx" TagName="UserInfo" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    <div class="contactform">
        <p>
            What's your question?
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Do you ship to residential addresses?</asp:ListItem>
                <asp:ListItem>What bricks-and-mortar stores sell your products?</asp:ListItem>
                <asp:ListItem>Do you have a print catalog?</asp:ListItem>
                <asp:ListItem>Do you ship overnight?</asp:ListItem>
            </asp:DropDownList>
        </p>
        <uc1:UserInfo ID="UserInfo1" runat="server"/>
        <p>
            <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn" runat="server" OnClick="btnSubmit_Click"/>
            <asp:Button ID="btnReset" Text="Reset" CssClass="btn" runat="server" OnClick="btnReset_Click"/>
        </p>
        <p>
            <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>
        </p>
    </div>
</asp:Content>