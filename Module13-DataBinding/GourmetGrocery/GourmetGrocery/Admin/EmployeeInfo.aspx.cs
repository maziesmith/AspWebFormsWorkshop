using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GourmetGrocery.Admin
{
    public partial class EmployeeInfo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = string.Format(
                    "A database error has occurred<br /><br />Message: {0}", e.Exception.Message);
                e.ExceptionHandled = true;
            }
        }
    }
}