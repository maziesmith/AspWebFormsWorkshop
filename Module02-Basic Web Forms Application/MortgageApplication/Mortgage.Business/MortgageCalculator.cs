using System;

namespace Mortgage.Business
{
    public class MortgageCalculator
    {
        public decimal GetPayment(decimal loanAmount, float interestRate, int loanLength)
        {
            float MIR = interestRate / 1200;
            int NP = loanLength * 12;
            decimal pmt = (decimal) ((double) loanAmount * MIR / (1 - Math.Pow(1 + MIR, -NP)));
            return decimal.Round(pmt, 2);
        }
    }
}