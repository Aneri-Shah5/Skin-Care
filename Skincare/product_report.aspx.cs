using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data;
using System.Data.SqlClient;

namespace Skincare
{
    public partial class product_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("~/Product_CrystalReport.rpt"));
            string str = @"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\java\Skincare\Skincare\App_Data\skincare.mdf;Integrated Security=True;User Instance=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from products;", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet da = new DataSet();
            sda.Fill(da, "DataTable1");
            rpt.SetDataSource(da.Tables[0]);
            CrystalReportViewer1.ReportSource = rpt;
        }
    }
}