<%@ Page Title="Employees" Language="C#" MasterPageFile="~/GroceryMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="GourmetGrocery.Admin.EmployeeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                  DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1"
                  EmptyDataText="There are no data records to display." OnRowDeleted="GridView1_RowDeleted"
                  Width="100%">
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" ReadOnly="True" SortExpression="EmployeeID" ControlStyle-Width="100px">
                <ItemStyle HorizontalAlign="Center"/>
            </asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" ControlStyle-Width="100px"/>
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" ControlStyle-Width="100px"/>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ControlStyle-Width="100px"/>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ControlStyle-Width="100px"/>
            <asp:BoundField DataField="HireDate" DataFormatString="{0:d}" HeaderText="Hire Date" SortExpression="HireDate" ControlStyle-Width="100px"/>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employees] ([LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Notes], [ReportsTo], [PhotoPath]) VALUES (@LastName, @FirstName, @Title, @TitleOfCourtesy, @BirthDate, @HireDate, @Address, @City, @Region, @PostalCode, @Country, @HomePhone, @Extension, @Notes, @ReportsTo, @PhotoPath)" ProviderName="<%$ ConnectionStrings:NorthwindConnectionString1.ProviderName %>" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [LastName] = @LastName, [FirstName] = @FirstName, [Title] = @Title, [TitleOfCourtesy] = @TitleOfCourtesy, [BirthDate] = @BirthDate, [HireDate] = @HireDate, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [HomePhone] = @HomePhone, [Extension] = @Extension, [Notes] = @Notes, [ReportsTo] = @ReportsTo, [PhotoPath] = @PhotoPath WHERE [EmployeeID] = @EmployeeID">
        <DeleteParameters>
            <asp:Parameter Name="EmployeeID" Type="Int32"/>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LastName" Type="String"/>
            <asp:Parameter Name="FirstName" Type="String"/>
            <asp:Parameter Name="Title" Type="String"/>
            <asp:Parameter Name="TitleOfCourtesy" Type="String"/>
            <asp:Parameter Name="BirthDate" Type="DateTime"/>
            <asp:Parameter Name="HireDate" Type="DateTime"/>
            <asp:Parameter Name="Address" Type="String"/>
            <asp:Parameter Name="City" Type="String"/>
            <asp:Parameter Name="Region" Type="String"/>
            <asp:Parameter Name="PostalCode" Type="String"/>
            <asp:Parameter Name="Country" Type="String"/>
            <asp:Parameter Name="HomePhone" Type="String"/>
            <asp:Parameter Name="Extension" Type="String"/>
            <asp:Parameter Name="Notes" Type="String"/>
            <asp:Parameter Name="ReportsTo" Type="Int32"/>
            <asp:Parameter Name="PhotoPath" Type="String"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" Type="String"/>
            <asp:Parameter Name="FirstName" Type="String"/>
            <asp:Parameter Name="Title" Type="String"/>
            <asp:Parameter Name="TitleOfCourtesy" Type="String"/>
            <asp:Parameter Name="BirthDate" Type="DateTime"/>
            <asp:Parameter Name="HireDate" Type="DateTime"/>
            <asp:Parameter Name="Address" Type="String"/>
            <asp:Parameter Name="City" Type="String"/>
            <asp:Parameter Name="Region" Type="String"/>
            <asp:Parameter Name="PostalCode" Type="String"/>
            <asp:Parameter Name="Country" Type="String"/>
            <asp:Parameter Name="HomePhone" Type="String"/>
            <asp:Parameter Name="Extension" Type="String"/>
            <asp:Parameter Name="Notes" Type="String"/>
            <asp:Parameter Name="ReportsTo" Type="Int32"/>
            <asp:Parameter Name="PhotoPath" Type="String"/>
            <asp:Parameter Name="EmployeeID" Type="Int32"/>
        </UpdateParameters>
    </asp:SqlDataSource>

    <br/>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <br/>
    <br/>
</asp:Content>