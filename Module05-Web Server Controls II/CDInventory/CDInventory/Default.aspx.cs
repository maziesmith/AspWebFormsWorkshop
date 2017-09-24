using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDInventory
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fileName = MapPath("~/App_Data/HomeCDList.txt");

                StreamReader sr = new StreamReader(fileName);
                while (!sr.EndOfStream)
                {
                    string title = sr.ReadLine();
                    lstAtHome.Items.Add(title);
                }
                sr.Close();

                fileName = MapPath("~/App_Data/CarCDList.txt");

                sr = new StreamReader(fileName);
                while (!sr.EndOfStream)
                {
                    string title = sr.ReadLine();
                    lstInCar.Items.Add(title);
                }
                sr.Close();
            }
        }

        protected void btnRightAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lstAtHome.Items)
            {
                lstInCar.Items.Add(li);
            }
            lstAtHome.Items.Clear();
        }

        protected void btnRight_Click(object sender, EventArgs e)
        {
            if (lstAtHome.SelectedIndex != -1)
            {
                lstInCar.Items.Add(lstAtHome.SelectedItem.Text);
                lstAtHome.Items.Remove(lstAtHome.SelectedItem.Text);
            }
        }

        protected void btnLeft_Click(object sender, EventArgs e)
        {
            if (lstInCar.SelectedIndex != -1)
            {
                lstAtHome.Items.Add(lstInCar.SelectedItem.Text);
                lstInCar.Items.Remove(lstInCar.SelectedItem.Text);
            }
        }

        protected void btnLeftAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in lstInCar.Items)
            {
                lstAtHome.Items.Add(li);
            }
            lstInCar.Items.Clear();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCD.Text.Trim()))
            {
                if (rdoHomeList.Checked)
                {
                    lstAtHome.Items.Add(txtCD.Text);
                }
                else
                {
                    lstInCar.Items.Add(txtCD.Text);
                }
                txtCD.Text = string.Empty;
            }
        }
    }
}