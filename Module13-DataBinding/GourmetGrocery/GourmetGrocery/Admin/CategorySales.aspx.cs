using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace GourmetGrocery.Admin
{
    public partial class CategorySales : Page
    {
        private const string CnnString = "Data Source=.; Initial Catalog=Northwind; uid=sa; pwd=hott;";

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

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet("Northwind");
                da.Fill(ds, "SalesByCategory");

                grdSales.DataSource = ds.Tables["SalesByCategory"];
                grdSales.DataBind();

                Session["salesData"] = ds;
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
                DataSet ds = (DataSet) Session["salesData"];
                string category = (string) Session["category"];
                string year = (string) Session["year"];

                string filename = year + "_" + category + "_Sales.xml";
                filename = filename.Replace("/", "_");
                ds.WriteXml(MapPath("XML/" + filename), XmlWriteMode.WriteSchema);
            }
            else
            {
                lblError.Text = "There is currently no data to export.";
            }
        }
    }
}