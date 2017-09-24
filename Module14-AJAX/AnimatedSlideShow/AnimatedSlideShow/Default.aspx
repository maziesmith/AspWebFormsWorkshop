<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AnimatedSlideShow.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Boston Images</title>
    <style type="text/css">
        .main-table
        {
            width: 400px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="tmrChangeImage" runat="server" Enabled="False" Interval="3000" OnTick="tmrChangeImage_Tick"></asp:Timer>
                <table class="main-table">
                    <tr>
                        <td>
                            <asp:Label ID="lblNumber" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="imgSlide" runat="server"></asp:Image>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="btnAnimate" runat="server" Text="Start" OnClick="btnAnimate_Click"></asp:Button>&nbsp;
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</form>
</body>
</html>