using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skincare
{
    public partial class Detail_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddtoCart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            }
            if (e.CommandName == "Buy")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Label l = (Label)(e.Item.FindControl("cost"));
                Response.Redirect("payment.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString() + "&price=" + l.Text.ToString());
            }

        }

        
       
    }
}