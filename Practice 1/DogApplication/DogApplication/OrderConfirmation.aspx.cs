using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogApplication
{
    public partial class OrderConfirmation : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                LblName.Text = Request.QueryString["name"];
                LblChoice.Text = Request.QueryString["choice"];
                LblCheckList.Text = Request.QueryString["services"];
                LblDays.Text = Request.QueryString["days"];
                int price = Int32.Parse(Request.QueryString["price"]);
                int days = Int32.Parse(LblDays.Text);
                int feee = price * days;
                LblFee.Text = String.Format("{0:C}", feee);

            }
        }
    }
}