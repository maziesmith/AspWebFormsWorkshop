<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NorthwindOrderManagement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Lookup</title>
    <link href="Styles/Styles.css" rel="stylesheet"/>
    <script src="Scripts/jquery-3.1.1.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <div>
            <img src="Images/header.jpg" alt="company logo"/>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <p>
                    Customers:
                    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged">
                    </asp:DropDownList>
                </p>
                <p>
                    Orders:
                    <asp:GridView ID="grdOrders" runat="server">
                    </asp:GridView>
                </p>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress1" runat="server"
                            AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div id="outerDiv">
                    <div id="spinner">
                        <br/>
                        Processing Data...<br/>
                        <asp:Image ID="loadingImage" runat="server"
                                   Height="24px" Width="24px"
                                   ImageUrl="~/Images/loading.gif"
                                   AlternateText="spinner"/>
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
</form>

<script>
    $(function() {
        var $outerDiv = $('#outerDiv');
        $outerDiv.addClass('updateProgressOuter');
        var $innerDiv = $('#spinner');
        $innerDiv.addClass('updateProgressSpinner');
    });
</script>
</body>
</html>