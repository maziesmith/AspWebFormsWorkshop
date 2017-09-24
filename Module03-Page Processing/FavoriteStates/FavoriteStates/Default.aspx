<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FavoriteStates.Default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Favorite States</title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <!--
        <%= string.Format(
                "You are browsing the page with {0} version {1}",
                Request.Browser.Browser, Request.Browser.Version) %>
        -->

        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large">Choose Your Favorite State</asp:Label><br/>
        <asp:ListBox ID="lstStates" runat="server" Rows="50" Width="384px" AutoPostBack="True" OnSelectedIndexChanged="lstStates_SelectedIndexChanged"></asp:ListBox>

        <%--        <br/>
        <asp:Button ID="btnSelect" runat="server" Text="Select your favorite state" OnClick="btnSelect_Click"/>
        --%>
        <br/>
        <asp:Label ID="lblState" runat="server"></asp:Label>
        <br/>
        <br/>
        <br/>
        <br/>
    </div>
</form>
</body>
</html>