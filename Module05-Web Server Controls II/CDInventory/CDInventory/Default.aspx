<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CDInventory.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CD Inventory</title>
    <style type="text/css">
        .main-table
        {
            width: 700px;
        }

        .roundedBorder
        {
            border: 2px solid #d0d0d0;
            border-radius: 25px;
            height: 80px;
            margin: 5px;
            padding: 20px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
        <table class="main-table">
            <tr>
                <td>
                    <asp:Label ID="lblHome" runat="server">CDs at Home</asp:Label>
                </td>
                <td></td>
                <td>
                    <asp:Label ID="lblCar" runat="server">CDs in Car</asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ListBox ID="lstAtHome" runat="server" Width="300px" Height="200px"></asp:ListBox>
                </td>
                <td style="text-align: center; width: 80px">
                    <asp:Button ID="btnRightAll" runat="server" Text=">>" Width="50px" Height="24px" OnClick="btnRightAll_Click"></asp:Button><br/>
                    <asp:Button ID="btnRight" runat="server" Text=">" Width="50px" Height="24px" OnClick="btnRight_Click"></asp:Button><br/>
                    <asp:Button ID="btnLeft" runat="server" Text="<" Width="50px" Height="24px" OnClick="btnLeft_Click"></asp:Button><br/>
                    <asp:Button ID="btnLeftAll" runat="server" Text="<<" Width="50px" Height="24px" OnClick="btnLeftAll_Click"></asp:Button>
                </td>
                <td>
                    <asp:ListBox ID="lstInCar" runat="server" Width="300px" Height="200px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Panel ID="Panel1" runat="server" CssClass="roundedBorder">
                        <span>Add a CD</span>
                        <br/><br/>
                        <asp:RadioButton ID="rdoHomeList" runat="server" Text="Add to At Home List" Checked="True" GroupName="Destination"></asp:RadioButton>
                        <asp:RadioButton ID="rdoCarList" runat="server" Text="Add to In Car List" GroupName="Destination"></asp:RadioButton>
                        <br/>
                        <asp:TextBox ID="txtCD" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"></asp:Button>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    </div>
</form>
</body>
</html>