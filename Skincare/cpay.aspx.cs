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
    public partial class cpay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div_card.Visible = false;
        }

       

       

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            div_card.Visible = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            div_card.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string d = DateTime.Now.ToString("dd/MM/yyyy");
            string cust = Session["username"].ToString();
            string p = "Customize Kit";
            int price = 1599;
            int qty = 1;
            int total = 1599;
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\java\Skincare\Skincare\App_Data\skincare.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into MyOrder(p_date,cust_id,product,price,qty,total) values (@date,@cust_id,@product,@price,@qty,@total)", con);
            cmd.Parameters.AddWithValue(@"date", d);
            cmd.Parameters.AddWithValue(@"cust_id", cust);
            cmd.Parameters.AddWithValue(@"product", p);
            cmd.Parameters.AddWithValue(@"price", price);
            cmd.Parameters.AddWithValue(@"qty", qty);
            cmd.Parameters.AddWithValue(@"total", total);
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Response.Write("<script>alert('Order Placed');</script>");
            }
            con.Close();
        }
    }
}