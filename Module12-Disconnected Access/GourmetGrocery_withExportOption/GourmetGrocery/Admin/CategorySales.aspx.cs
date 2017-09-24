using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace GourmetGrocery.Admin
{
    public partial class CategorySales : Page
    {
        // laptop does not have SQL Server so using a local data connection from a given mdf file
        private const string CnnString =
                @"Data Source=(localdb)\ProjectsV13;Initial Catalog = Northwind; Integrated Security = True; Encrypt=False;TrustServerCertificate=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;

            if (!IsPostBack)
            {
                SqlConnection cnn = null;
                try
                {
                    cnn = new SqlConnection(CnnString);
                    cnn.Open();

                    SqlCommand cmdCategories = new SqlCommand("SELECT CategoryName FROM Categories", cnn);
                    SqlDataReader drCat = cmdCategories.ExecuteReader();
                    while (drCat.Read())
                    {
                        lstCategories.Items.Add(drCat["CategoryName"].ToString());
                    }
                    drCat.Close();

                    SqlCommand cmdOrders =
                        new SqlCommand("SELECT Distinct Year(OrderDate) AS 'OrdYear' FROM Orders ORDER BY OrdYear ASC",
                            cnn);
                    SqlDataReader drOrd = cmdOrders.ExecuteReader();
                    while (drOrd.Read())
                    {
                        ddlYear.Items.Add(drOrd["OrdYear"].ToString());
                    }
                    drOrd.Close();
                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
                finally
                {
                    if (cnn != null)
                    {
                        cnn.Close();
                    }
                }
            }
        }

        protected void btnGetSales_Click(object sender, EventArgs e)
        {
            if (lstCategories.SelectedIndex < 0 || ddlYear.SelectedIndex < 0)
            {
                lblError.Text = "Please be sure that both a category and year have been selected.";
                return;
            }

            SqlConnection cnn = null;
            try
            {
                cnn = new SqlConnection(CnnString);
                SqlCommand cmd = new SqlCommand("SalesByCategory", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@CategoryName", lstCategories.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@OrdYear", ddlYear.SelectedItem.Text);

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet dataSet = new DataSet("Northwind");
                dataAdapter.Fill(dataSet, "SalesByCategory");

                gridSales.DataSource = dataSet.Tables["SalesByCategory"];
                gridSales.DataBind();

                Session["salesData"] = dataSet;
                Session["category"] = lstCategories.SelectedItem.Text;
                Session["year"] = ddlYear.SelectedItem.Text;
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            if (Session["salesData"] != null)
            {
                DataSet dataSet = (DataSet) Session["salesData"];
                string category = (string) Session["category"];
                string year = (string) Session["year"];

                string filename = year + "_" + category + "_Sales.xml";
                filename = filename.Replace("/", "_");
                dataSet.WriteXml(MapPath("XML/" + filename), XmlWriteMode.WriteSchema);
            }
            else
            {
                lblError.Text = "No data to export.";
            }
        }
    }
}