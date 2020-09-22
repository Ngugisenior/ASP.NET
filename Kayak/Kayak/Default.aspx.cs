using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kayak
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            LblConfirmation.Text = "You Selected " + RdbList.SelectedValue.ToString()
                + " using a " + DrpList.SelectedValue.ToString() +
                ".<br/>";
            string equip = "";
            string date = "";
            if (String.IsNullOrEmpty(Cal.SelectedDate.ToString()))
            {
                date +=  DateTime.UtcNow;
                LblConfirmation.Text += " on " + date;
            }
            else
            {
                date = Cal.SelectedDate.ToString();
                LblConfirmation.Text += " on " + date;
            }
            foreach(ListItem item in ChkBoxList.Items)
            {
                if (item.Selected)
                {
                    equip += item.ToString() + ", ";
                }
            }

            if(equip.Length > 0)
            {
                // Remove the final comma and space
                equip = equip.Remove(equip.Length - 2);

                // Append to the label
                LblConfirmation.Text += ",with the folowing equipment: " + equip;
            }
            RdbList.ClearSelection();
            DrpList.ClearSelection();
            ChkBoxList.ClearSelection();
            Cal.SelectedDate = DateTime.Now;
        }
    }
}