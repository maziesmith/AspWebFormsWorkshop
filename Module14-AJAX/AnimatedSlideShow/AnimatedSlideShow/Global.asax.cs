using System;
using System.Collections.Generic;
using System.Web;

namespace AnimatedSlideShow
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        { }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<string> imageLocations = new List<string>
            {
                "Images/bos1.jpg",
                "Images/bos2.jpg",
                "Images/bos3.jpg",
                "Images/bos4.jpg",
                "Images/bos5.jpg"
            };
            Session["imageLocations"] = imageLocations;
        }
    }
}