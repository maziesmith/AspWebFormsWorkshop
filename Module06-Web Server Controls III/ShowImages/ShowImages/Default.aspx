<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShowImages.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vegas Images</title>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <p>
            <asp:Label ID="lblDisplayImage" runat="server" Text="Display Image:"></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="ddlImageFile" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageFile_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
        <div style="text-align: center; width: 400px;">
            <asp:Image ID="imgCasinos" runat="server" Height="270px" Width="360px"/>
            <h2>
                <asp:Label ID="lblCasino" runat="server" Text=""></asp:Label>
            </h2>
        </div>
    </div>
</form>
</body>
</html>