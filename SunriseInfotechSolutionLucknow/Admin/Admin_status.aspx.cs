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
    public partial class Admin_status : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");

            cmd.Connection= con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "INSERT INTO Status VALUES('" + DropDownList1.SelectedValue + "', '" + DropDownList2.SelectedValue + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('infomation recorded')</script>");
                con.Close();
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }
    }
}