using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TableSample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Counfigure the table's appearance.
            Table1.BorderStyle = BorderStyle.Inset;
            Table1.BorderWidth = Unit.Pixel(1);
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            //Remove all the current rows and cells.
            //this is an optional If EnableViewState property is set to false.
            Table1.Controls.Clear();

            //Create a new table row object
            int numRows = Int32.Parse(TxtRows.Text);
            int numColumns = Int32.Parse(TxtColumns.Text);

            //Create a new tableRow object
            for (int i = 0; i < numRows; i++)
            {
                TableRow newRow = new TableRow();

                //Put the new tablerow into the table
                Table1.Controls.Add(newRow);

                for (int j = 0; j < numColumns; j++)
                {
                    //CreateChildControls a new cell object
                    TableCell newCell = new TableCell();

                    //Create a new label
                    Label newLabel = new Label();
                    newLabel.Text = "Example Cell (" + i.ToString() + "," + j.ToString() + ")<br/>";
                    Image newImage = new Image();
                    newImage.ImageUrl = @"~\cellpic.PNG";

                    //Add the label and the picture to the cell
                    newCell.Controls.Add(newLabel);
                    newCell.Controls.Add(newImage);

                    //Check if the user wants a border
                    if (ChkBorder.Checked)
                    {
                        newCell.BorderStyle = BorderStyle.Inset;
                        newCell.BorderWidth = Unit.Pixel(1);
                    }

                    //Put the tablecell in the TableRow
                    newRow.Controls.Add(newCell);
                }
            }
        }
    }
}