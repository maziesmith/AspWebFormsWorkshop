using System;
using System.Web.UI;

namespace GourmetGrocery
{
    public partial class ContactUs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = string.Format("{0} {1}", UserInfo1.FirstName, UserInfo1.LastName);
            string message = string.Format("{0} - a confirmation has been sent to {1}", name, UserInfo1.Email);
            lblConfirmation.Text = message;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            UserInfo1.Clear();
            lblConfirmation.Text = "";
        }
    }
}