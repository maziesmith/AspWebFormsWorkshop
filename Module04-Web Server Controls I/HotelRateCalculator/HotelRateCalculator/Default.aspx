<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HotelRateCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Costs</title>
    <style type="text/css">
        .main-table
        {
            border: 2px solid black;
            width: 380px;
        }

        .centeredCell
        {
            text-align: center;
        }

        .rightCell,
        input[type=text]
        {
            text-align: right;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div style="padding: 20px">
        <table class="main-table">
            <tr>
                <td>
                    <asp:Label ID="lblRoomRate" runat="server">Basic Room Rate:</asp:Label>
                </td>
                <td class="rightCell">
                    <asp:TextBox ID="txtRoomRate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNights" runat="server">Number of Nights:</asp:Label>
                </td>
                <td class="rightCell">
                    <asp:TextBox ID="txtNights" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="pnlDiscounts" runat="server" GroupingText="Discounts">
                        <asp:RadioButton ID="rdoNone" runat="server" Text="None" Checked="True" GroupName="disc"></asp:RadioButton>
                        <br/>
                        <asp:RadioButton ID="rdoAAA" runat="server" Text="AAA (10%)" GroupName="disc"></asp:RadioButton>
                        <br/>
                        <asp:RadioButton ID="rdoAARP" runat="server" Text="AARP (10%)" GroupName="disc"></asp:RadioButton>
                        <br/>
                        <asp:RadioButton ID="rdoGovt" runat="server" Text="Gov't (25%)" GroupName="disc"></asp:RadioButton>
                        <br/>
                    </asp:Panel>
                </td>
                <td class="rightCell">
                    <asp:CheckBox ID="chkTaxExempt" runat="server" Text="Tax-Exempt"></asp:CheckBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="centeredCell">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" Width="250px"></asp:Button>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCharges" runat="server">Room Charges:</asp:Label>
                </td>
                <td class="rightCell">
                    <asp:TextBox ID="txtCharges" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTax" runat="server">Tax (12%)</asp:Label>
                </td>
                <td class="rightCell">
                    <asp:TextBox ID="txtTax" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTotal" runat="server">Total Due:</asp:Label>
                </td>
                <td class="rightCell">
                    <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </div>
</form>
</body>
</html>