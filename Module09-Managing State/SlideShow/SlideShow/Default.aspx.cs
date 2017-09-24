using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SlideShow
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowImage(1);
            }
        }

        private void ShowImage(int imageNumber)
        {
            List<string> imageLocations = (List<string>) Session["imageLocations"];

            // imageNumber is 1-based but the array index is 0-based
            int arrayIndex = imageNumber - 1;
            string thisImageLocation = imageLocations[arrayIndex];

            imgSlide.ImageUrl = thisImageLocation;
            lblNumber.Text = string.Format("Image Number: {0}", imageNumber);
            ViewState["imageNumber"] = imageNumber;
        }

        protected void NumberedButton_Click(object sender, EventArgs e)
        {
            string buttonText = ((Button) sender).Text;

            int imageNumber = Convert.ToInt32(buttonText);
            ShowImage(imageNumber);
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            int imageNumber = (int) ViewState["imageNumber"] - 1;

            if (imageNumber < 1)
            {
                imageNumber = 5;
            }

            ShowImage(imageNumber);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            int imageNumber = (int) ViewState["imageNumber"] + 1;

            if (imageNumber > 5)
            {
                imageNumber = 1;
            }

            ShowImage(imageNumber);
            ViewState["imageNumber"] = imageNumber;
        }
    }
}