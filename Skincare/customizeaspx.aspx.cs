using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skincare
{
    public partial class customizeaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cust_Click(object sender, EventArgs e)
        {
            string value = null;
            string mi1 = null;
            string mi2 = null;
            string mi3 = null;
           
            if (yes.Checked)
                Response.Write("<script>alert('Can not customise as ongoing treatment is going on..try later');</script>");
          
            else
            {
                //for cleanser
                if (oily.Checked || combination.Checked)
                     mi1 = "Salicylic Acid";
                else
                    mi1 = "Ceramide";
               

                //for serum
                if (acne.Checked || pores.Checked)
                    mi2 = "Retinol";
                else if (scar.Checked)
                    mi2 = "Niacinamide";
                else
                    mi2 = "Vitamin C";

                //for moisturiser
                if (oily.Checked)
                    mi3 = "Benzoyl peroxide";
                else if (dry.Checked)
                    mi3 = "Shea Butter";
                else
                    mi3 = "Hyaluronic acid";

                Session["m1"] = mi1;
                Session["m2"] = mi2;
                Session["m3"] = mi3;
                Response.Redirect("cpayment.aspx");
                
            }
            /*Label1.Text = mi1;
            Label2.Text = mi2;
            Label3.Text = mi3;*/

           
        }

        

        
    }
}