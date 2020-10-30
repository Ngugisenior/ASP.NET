using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ButtonClick
{
    public partial class Default : System.Web.UI.Page
    {
        Label lbl;
        int count = 1;

        protected void Page_Load(object sender, EventArgs e)
        {

            Button btn = new Button();
            btn.Text = "Click Me Please!";
            btn.Click += BtnClick_Click;
            lbl = new Label();
            form1.Controls.Add(btn);
            form1.Controls.Add(lbl);

            if (!Page.IsPostBack)
            {
                lbl.Text = count.ToString();
            }
        }

        protected void BtnClick_Click(object sender, EventArgs e)
        {
            if (int.TryParse(lbl.Text, out count))
            {
                lbl.Text = (++count).ToString();
            }           
        }
    }
}