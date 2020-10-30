using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DogApplication
{
    public partial class Default : System.Web.UI.Page
    {
         int price = 1500;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LblPrice.Text = price.ToString()+" Ft";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            String extra_services = "";
            for (int i = 0; i < ChkExtraServices.Items.Count; i++)
            {
                if (ChkExtraServices.Items[i].Selected)
                {
                    extra_services += ChkExtraServices.Items[i].Text + ", ";
                }
            }
            String choice = "";
            for (int i = 0; i < RdbMealLists.Items.Count; i++)
            {
                if (RdbMealLists.Items[i].Selected)
                {
                    choice = RdbMealLists.SelectedItem.Text;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select a choice for a meal!')", true);
                }
            }



            String name = TxtName.Text;
            String email = TxtEmail.Text;
            

            DateTime startDate = DateTime.Parse(TxtStartDate.Text);
            DateTime endDate = DateTime.Parse(TxtEndDate.Text);
            TimeSpan days = endDate.Subtract(startDate);

            String url = "OrderConfirmation.aspx?name="+name+"&choice="+choice+"&services="+extra_services+
                "&days="+days.Days+"&price="+price;

            if (name != null && email!=null && !String.IsNullOrEmpty(choice) && !String.IsNullOrEmpty(extra_services))
            {
                Response.Redirect(url, false);
            }
        }

        protected void BtnExit_Click(object sender, EventArgs e)
        {
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtEndDate.Text = "";
            TxtStartDate.Text = "";
            

            for(int i = 0; i < RdbMealLists.Items.Count; i++)
            {
                if (RdbMealLists.Items[i].Selected)
                {
                    RdbMealLists.Items[i].Selected = false;
                }
            }
            for(int i = 0; i < ChkExtraServices.Items.Count; i++)
            {
                if (ChkExtraServices.Items[i].Selected)
                {
                    ChkExtraServices.Items[i].Selected = false;
                }
            }
        }
    }
}