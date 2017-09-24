<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SlideShow.Default" %>

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
    <div>
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
                    <asp:Button ID="btnPrevious" runat="server" Text="Previous  " OnClick="btnPrevious_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btn1" runat="server" Text="1" OnClick="NumberedButton_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btn2" runat="server" Text="2" OnClick="NumberedButton_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btn3" runat="server" Text="3" OnClick="NumberedButton_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btn4" runat="server" Text="4" OnClick="NumberedButton_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btn5" runat="server" Text="5" OnClick="NumberedButton_Click"></asp:Button>&nbsp;
                    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click"></asp:Button>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>