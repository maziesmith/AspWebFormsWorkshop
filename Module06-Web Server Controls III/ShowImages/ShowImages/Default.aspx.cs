using System;
using System.IO;
using System.Web.UI;

namespace ShowImages
{
    public partial class Default : Page
    {
        private readonly string[] _captions =
        {
            "Caesar's Palace",
            "The Luxor",
            "The Mirage",
            "New York, New York",
            "Paris",
            "Stratosphere",
            "Treasure Island",
            "The Venetian"
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DirectoryInfo dirInfo = new DirectoryInfo(MapPath("~/Images"));
                FileInfo[] fileInfoArray = dirInfo.GetFiles("*.jpg");
                foreach (FileInfo file in fileInfoArray)
                {
                    ddlImageFile.Items.Add(file.Name);
                }
                ddlImageFile.SelectedIndex = 0;
                ddlImageFile_SelectedIndexChanged(null, null);
            }
        }

        protected void ddlImageFile_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                imgCasinos.ImageUrl = "Images/" + ddlImageFile.SelectedItem.Text;
                lblCasino.Text = _captions[ddlImageFile.SelectedIndex];
            }
            catch (FileNotFoundException ex)
            {
                lblCasino.Text = ex.Message;
            }
        }
    }
}