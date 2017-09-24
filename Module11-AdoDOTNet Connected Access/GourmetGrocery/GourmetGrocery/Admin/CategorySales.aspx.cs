using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace GourmetGrocery.Admin
{
    public partial class CategorySales : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // data source taken out
            string cnString = "Data Source=.; Initial Catalog=Northwind; uid=sa; pwd=hott;";

            lblError.Text = string.Empty;

            if (!IsPostBack)
            {
                SqlConnection cn = null;
                try
                {
                    cn = new SqlConnection(cnString);
                    cn.Open();

                    SqlCommand cmdCategories = new SqlCommand("SELECT CategoryName FROM Categories", cn);
                    SqlDataReader drCat = cmdCategories.ExecuteReader();
                    while (drCat.Read())
                    {
                        lstCategories.Items.Add(drCat["CategoryName"].ToString());
                    }
                    drCat.Close();

                    SqlCommand cmdOrders =
                        new SqlCommand("SELECT Distinct Year(OrderDate) AS 'OrdYear' FROM Orders ORDER BY OrdYear ASC",
                            cn);
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
                    if (cn != null)
                    {
                        cn.Close();
                    }
                }
            }
        }
    }
}