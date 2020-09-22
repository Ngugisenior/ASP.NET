using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameAdvisor
{
    public partial class Default : System.Web.UI.Page
    {
        public enum Girl_Boy : int
        {
            Girl,
            Boy
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LstGirlOrBoy_SelectedIndexChanged(object sender, EventArgs e)
        {
            PnlStart.Visible = false;
            switch (LstGirlOrBoy.SelectedIndex)
            {
                case (int)Girl_Boy.Boy:
                    PnllBoys.Visible = true;
                    break;
                case (int)Girl_Boy.Girl:
                    PnlGirls.Visible = true;
                    break;
                default:
                    break;
            }
        }

        protected void ChklGirls_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ChklBoys_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {

        }

        protected void BtnBackToStart_Click(object sender, EventArgs e)
        {

        }

        protected void LstChoiceList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}