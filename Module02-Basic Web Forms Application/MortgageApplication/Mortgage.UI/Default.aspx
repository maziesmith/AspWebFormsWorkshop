<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mortgage.UI.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
    <style type="text/css">
        .main-table
        {
            width: 400px;
        }
    </style>
    <link href="Styles/StyleSheet.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form id="form1" runat="server">
    <div>

        <table class="tbl main-table">
            <tr>
                <td>
                    <asp:Label ID="lblAmount" runat="server">Loan amount:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblRate" runat="server">Interest rate:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLength" runat="server">Loan length:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLength" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click"></asp:Button>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" ForeColor="Red" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPayment" runat="server">Payment:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPayment" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>