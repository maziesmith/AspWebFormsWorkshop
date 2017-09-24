using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ShoppingCart
{
    public partial class Checkout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> cart = (List<string>) Session["cart"];
            foreach (string item in cart)
            {
                lstCart.Items.Add(item);
            }
            lblTotal.Text = string.Format("Total due: {0:C}", cart.Count * 12.99);
        }

        protected void btnStartOver_Click(object sender, EventArgs e)
        {
            List<string> cart = (List<string>) Session["cart"];
            cart.Clear();
            Response.Redirect("Default.aspx");
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}