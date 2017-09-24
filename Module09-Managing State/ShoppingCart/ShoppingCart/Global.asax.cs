using System;
using System.Collections.Generic;
using System.Web;

namespace ShoppingCart
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        { }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["cart"] = new List<string>();
        }
    }
}