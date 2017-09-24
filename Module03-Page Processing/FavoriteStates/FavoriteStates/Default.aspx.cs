using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FavoriteStates
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstStates.Items.Add(new ListItem("Alabama", "AL"));
                lstStates.Items.Add(new ListItem("Alaska", "AK"));
                lstStates.Items.Add(new ListItem("Arizona", "AZ"));
                lstStates.Items.Add(new ListItem("Arkansas", "AR"));
                lstStates.Items.Add(new ListItem("California", "CA"));
                lstStates.Items.Add(new ListItem("Colorado", "CO"));
                lstStates.Items.Add(new ListItem("Connecticut", "CT"));
                lstStates.Items.Add(new ListItem("Delaware", "DE"));
                lstStates.Items.Add(new ListItem("Florida", "FL"));
                lstStates.Items.Add(new ListItem("Georgia", "GA"));
                lstStates.Items.Add(new ListItem("Hawaii", "HI"));
                lstStates.Items.Add(new ListItem("Idaho", "ID"));
                lstStates.Items.Add(new ListItem("Illinois", "IL"));
                lstStates.Items.Add(new ListItem("Indiana", "IN"));
                lstStates.Items.Add(new ListItem("Iowa", "IA"));
                lstStates.Items.Add(new ListItem("Kansas", "KS"));
                lstStates.Items.Add(new ListItem("Kentucky", "KY"));
                lstStates.Items.Add(new ListItem("Louisiana", "LA"));
                lstStates.Items.Add(new ListItem("Maine", "ME"));
                lstStates.Items.Add(new ListItem("Maryland", "MD"));
                lstStates.Items.Add(new ListItem("Massachusetts", "MA"));
                lstStates.Items.Add(new ListItem("Michigan", "MI"));
                lstStates.Items.Add(new ListItem("Minnesota", "MN"));
                lstStates.Items.Add(new ListItem("Mississippi", "MI"));
                lstStates.Items.Add(new ListItem("Missouri", "MO"));
                lstStates.Items.Add(new ListItem("Montana", "MT"));
                lstStates.Items.Add(new ListItem("Nebraska", "NE"));
                lstStates.Items.Add(new ListItem("Nevada", "NV"));
                lstStates.Items.Add(new ListItem("New Hampshire", "NH"));
                lstStates.Items.Add(new ListItem("New Jersey", "NJ"));
                lstStates.Items.Add(new ListItem("New Mexico", "NM"));
                lstStates.Items.Add(new ListItem("New York", "NY"));
                lstStates.Items.Add(new ListItem("North Carolina", "NC"));
                lstStates.Items.Add(new ListItem("North Dakota", "ND"));
                lstStates.Items.Add(new ListItem("Ohio", "OH"));
                lstStates.Items.Add(new ListItem("Oklahoma", "OK"));
                lstStates.Items.Add(new ListItem("Oregon", "OR"));
                lstStates.Items.Add(new ListItem("Pennsylvania", "PA"));
                lstStates.Items.Add(new ListItem("Rhode Island", "RI"));
                lstStates.Items.Add(new ListItem("South Carolina", "SC"));
                lstStates.Items.Add(new ListItem("South Dakota", "SD"));
                lstStates.Items.Add(new ListItem("Tennessee", "TN"));
                lstStates.Items.Add(new ListItem("Texas", "TX"));
                lstStates.Items.Add(new ListItem("Utah", "UT"));
                lstStates.Items.Add(new ListItem("Vermont", "VT"));
                lstStates.Items.Add(new ListItem("Virginia", "VA"));
                lstStates.Items.Add(new ListItem("Washington", "WA"));
                lstStates.Items.Add(new ListItem("West Virginia", "WV"));
                lstStates.Items.Add(new ListItem("Wisconsin", "WI"));
                lstStates.Items.Add(new ListItem("Wyoming", "WY"));
            }
        }

        protected void lstStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblState.Text = string.Format(
                "State: {0} ({1})", lstStates.SelectedItem.Text, lstStates.SelectedValue);
        }

        //protected void btnSelect_Click(object sender, EventArgs e)
        //{
        //    Response.Write("You clicked " + lstStates.SelectedItem.Text);

        //    try
        //    {
        //        lblState.Text = "You clicked " + lstStates.SelectedItem.Text;
        //    }
        //    catch (Exception ex)
        //    {
        //        lblState.Text = ex.Message;
        //    }
        //}
    }
}