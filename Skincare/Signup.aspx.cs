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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a=0;
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\java\Skincare\Skincare\App_Data\skincare.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into login(uname,email,password) values (@name,@email,@password)", con);
                cmd.Parameters.AddWithValue(@"name", uname.Text);
                cmd.Parameters.AddWithValue(@"email", email.Text);
                cmd.Parameters.AddWithValue(@"password", password.Text);
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    Session["username"] = uname.Text;
                    Response.Redirect("Home.aspx");
                }
                con.Close();
            }


        }
            

        protected void passwordvalidate(object sender, ServerValidateEventArgs arg)
        {
            String str = arg.Value;
            arg.IsValid = false;
            if (str.Length > 6)
            {
                arg.IsValid = true;
                
                
            }
        }

        protected void namevalidate(object sender, ServerValidateEventArgs args)
        {
            String name = args.Value;
            args.IsValid = false;
            if (name.Length > 2)
            {
                args.IsValid = true;
               
            }
        }
       


        

        
    }
}
