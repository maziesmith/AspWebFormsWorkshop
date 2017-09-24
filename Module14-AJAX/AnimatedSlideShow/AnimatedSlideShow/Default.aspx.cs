using System;
using System.Collections.Generic;
using System.Web.UI;

namespace AnimatedSlideShow
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowImage(1);
                ViewState["imageNumber"] = 1;
            }
        }

        private void ShowImage(int imageNumber)
        {
            List<string> imageLocations = (List<string>) Session["imageLocations"];

            // slideNum is 1-based but the array index is 0-based
            int arrayIndex = imageNumber - 1;
            string thisImageLocation = imageLocations[arrayIndex];

            imgSlide.ImageUrl = thisImageLocation;
            lblNumber.Text = string.Format("Image Number: {0}", imageNumber);
        }

        protected void btnAnimate_Click(object sender, EventArgs e)
        {
            switch (btnAnimate.Text)
            {
                case "Start":
                    tmrChangeImage.Enabled = true;
                    btnAnimate.Text = "Stop";
                    break;
                case "Stop":
                    tmrChangeImage.Enabled = false;
                    btnAnimate.Text = "Start";
                    break;
            }
        }

        protected void tmrChangeImage_Tick(object sender, EventArgs e)
        {
            int imageNumber = (int) ViewState["imageNumber"];

            imageNumber++;
            if (imageNumber > 5)
            {
                imageNumber = 1;
            }

            ShowImage(imageNumber);

            ViewState["imageNumber"] = imageNumber;
        }
    }
}