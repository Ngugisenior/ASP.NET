using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BulletedListSample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Bullet Styles is an Enumerate type so we use the Enumerator class
                foreach (string style in Enum.GetNames(typeof(BulletStyle)))
                {
                    BlStyles.Items.Add(style);
                }
                LblMessage.Text = "";
            }
        }

        protected void BlStyles_Click(object sender, BulletedListEventArgs e)
        {
            string styleName = BlStyles.Items[e.Index].Text;
            BulletStyle style = (BulletStyle)Enum.Parse(typeof(BulletStyle), styleName);
            BlStyles.BulletStyle = style;
            if (styleName=="Customimage")
            {
                BlStyles.BulletImageUrl = @"~\cellpic.png";
            }

            LblMessage.Text = "Your choice is: " + styleName;
        }
    }
}