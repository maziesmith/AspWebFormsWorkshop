using System;
using System.Web.UI;

namespace HotelRateCalculator
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            lblError.Text = string.Empty;
            try
            {
                float rate = Convert.ToSingle(txtRoomRate.Text);
                int nights = Convert.ToInt32(txtNights.Text);

                float discount;
                if (rdoAAA.Checked || rdoAARP.Checked)
                {
                    discount = 0.1F;
                }
                else if (rdoGovt.Checked)
                {
                    discount = 0.25F;
                }
                else
                {
                    discount = 0;
                }

                float charges = rate * nights * (1.0F - discount);

                float tax;
                if (chkTaxExempt.Checked)
                {
                    tax = 0;
                }
                else
                {
                    tax = charges * 0.12F;
                }

                float total = charges + tax;

                txtCharges.Text = charges.ToString("C");
                txtTax.Text = tax.ToString("C");
                txtTotal.Text = total.ToString("C");
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}