using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Skincare
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Int32 verify;
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\java\Skincare\Skincare\App_Data\skincare.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select count(*) from login where uname='" + email.Text + "' and password='" + password.Text + "'", con);
                verify = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                if (verify > 0)
                {
                    
                    Session["username"] =email.Text;
                    Session["password"]=password.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    
                    Label1.Text = "Invalid username or password";
                }
            }

        }
    }
}