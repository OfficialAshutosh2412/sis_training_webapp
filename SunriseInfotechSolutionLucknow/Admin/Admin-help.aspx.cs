using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SunriseInfotechSolutionLucknow.Admin
{
    public partial class Admin_help : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");

            cmd.Connection = con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "INSERT INTO Help VALUES('" + question.Text + "','" + asnwer.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Upload successfull.')</script>");
                con.Close();
                question.Text = "";
                asnwer.Text = "";
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }
    }
}