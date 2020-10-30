using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentPicnic
{
    public partial class Default : System.Web.UI.Page
    {
        string veg;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            LblMessage.Text = "Thank you for signing up for the picnic, " +TxtFName.Text+" "+TxtLName.Text;
            if (ChkVeg.Checked)
            {
                LblMessage.Text += " You will be recieving a vegetarian meal";
            }
            LblMessage.Text += ".";
        }
    }
}