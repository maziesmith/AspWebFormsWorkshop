using System;
using System.Web.UI;
using Mortgage.Business;

namespace Mortgage.UI
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            MortgageCalculator calculator = new MortgageCalculator();
            lblErrorMessage.Text = string.Empty;
            try
            {
                decimal loanAmount = Convert.ToDecimal(txtAmount.Text);
                float interestRate = Convert.ToSingle(txtRate.Text);
                int loanLength = Convert.ToInt32(txtLength.Text);
                decimal payment = calculator.GetPayment(loanAmount, interestRate, loanLength);
                txtPayment.Text = payment.ToString("F2");
            }
            catch (Exception)
            {
                lblErrorMessage.Text = "***ERROR: One or more of your inputs are invalid";
            }
        }
    }
}