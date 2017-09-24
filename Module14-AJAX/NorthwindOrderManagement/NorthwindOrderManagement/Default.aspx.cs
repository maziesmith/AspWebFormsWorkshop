using System;
using System.Data;
using System.Data.SqlClient;
using System.Threading;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NorthwindOrderManagement
{
    public partial class Default : Page
    {
        private const string CnnString =
                @"Data Source=(localdb)\ProjectsV13;Initial Catalog=Northwind;Integrated Security=True;Encrypt=False;TrustServerCertificate=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cnn = new SqlConnection(CnnString);
                cnn.Open();
                SqlCommand cmd = new SqlCommand(
                    "SELECT CustomerID, CompanyName FROM Customers ORDER BY CompanyName", cnn);
                SqlDataReader dataReader = cmd.ExecuteReader();

                DataTable dataTable = new DataTable("Customers");
                dataTable.Load(dataReader);

                ddlCustomers.DataSource = dataTable;
                ddlCustomers.DataTextField = "CompanyName";
                ddlCustomers.DataValueField = "CustomerID";
                ddlCustomers.DataBind();

                grdOrders.AutoGenerateColumns = false;

                BoundField field = new BoundField();
                field.DataField = "OrderID";
                field.HeaderText = "Order ID";
                grdOrders.Columns.Add(field);

                field = new BoundField();
                field.DataField = "OrderDate";
                field.HeaderText = "Order Date";
                field.DataFormatString = "{0:dd-MMM-yyyy}";
                field.HtmlEncode = false;
                grdOrders.Columns.Add(field);

                dataReader.Close();
                cnn.Close();

                ddlCustomers.SelectedIndex = 0;
                ddlCustomers_SelectedIndexChanged(null, null);
            }
        }

        protected void ddlCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCustomers.SelectedIndex < 0)
            {
                return;
            }

            string customerID = ddlCustomers.SelectedValue;

            SqlConnection cnn = new SqlConnection(CnnString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(
                "SELECT OrderID, OrderDate FROM Orders WHERE CustomerID = @custID ORDER BY OrderID", cnn);
            cmd.Parameters.AddWithValue("@custID", customerID);
            SqlDataReader dataReader = cmd.ExecuteReader();

            DataTable dataTable = new DataTable("Orders");
            dataTable.Load(dataReader);

            grdOrders.DataSource = dataTable;
            grdOrders.DataBind();

            dataReader.Close();
            cnn.Close();

            Thread.Sleep(2500); // create a delay to show the image loading icon in localhost
        }
    }
}