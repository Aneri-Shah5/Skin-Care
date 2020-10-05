using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Skincare
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div_card.Visible = false;
           // Label1.Text = Session["username"].ToString();
            name.Text = Request.QueryString["id"];
            quantity.Text = Request.QueryString["quantity"];
            cost.Text = Request.QueryString["price"];
            float t = float.Parse(cost.Text);
            float q = float.Parse(quantity.Text);
            float total = t * q;
            price.Text = total.ToString();
        }

        protected void cod_Click(object sender, ImageClickEventArgs e)
        {
            div_card.Visible = false;
        }

        protected void cardb_Click(object sender, ImageClickEventArgs e)
        {
            div_card.Visible = true;
        }

        protected void order_Click(object sender, EventArgs e)
        {
            string d = DateTime.Now.ToString("dd/MM/yyyy");
            string cust = Session["username"].ToString();

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\java\Skincare\Skincare\App_Data\skincare.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into MyOrder(p_date,cust_id,product,price,qty,total) values (@date,@cust_id,@product,@price,@qty,@total)", con);
                cmd.Parameters.AddWithValue(@"date", d);
                cmd.Parameters.AddWithValue(@"cust_id", cust);
                cmd.Parameters.AddWithValue(@"product", name.Text);
                cmd.Parameters.AddWithValue(@"price", cost.Text);
                cmd.Parameters.AddWithValue(@"qty", quantity.Text);
                cmd.Parameters.AddWithValue(@"total", price.Text);
                int k=cmd.ExecuteNonQuery();
                if (k!= 0)
                {
                    Response.Write("<script>alert('Order Placed');</script>");
                }
                con.Close();
            
}
    }
}