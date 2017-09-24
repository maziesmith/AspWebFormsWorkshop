using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;

namespace ShoppingCart
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fileName = MapPath("~/App_Data/CDs.txt");

                StreamReader sr = new StreamReader(fileName);
                while (!sr.EndOfStream)
                {
                    string item = sr.ReadLine();
                    lstItems.Items.Add(item);
                }
                sr.Close();
            }

            List<string> cart = (List<string>) Session["cart"];
            lblCartCount.Text = string.Format("{0} item(s) in cart", cart.Count);
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (lstItems.SelectedIndex < 0)
            {
                return;
            }

            List<string> cart = (List<string>) Session["cart"];
            cart.Add(lstItems.SelectedItem.ToString());
            lblCartCount.Text = string.Format("{0} item(s) in cart", cart.Count);
            lstItems.SelectedIndex = -1;
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}