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
    public partial class Admin_home : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");

            adminame.Text = Session["type"].ToString();
            cmd.Connection = con;
            con.Open();
            //Users counting
            cmd.CommandText = "SELECT COUNT(*) FROM Signup WHERE Type='"+"user"+"'";
            int user = (int)cmd.ExecuteScalar();
            usercount.Text = user.ToString();
            cmd.ExecuteNonQuery();
            //Admin count
            cmd.CommandText = "SELECT COUNT(*) FROM Signup WHERE Type='" + "admin" + "'";
            int admin = (int)cmd.ExecuteScalar();
            admincount.Text = admin.ToString();
            cmd.ExecuteNonQuery();
            //completed
            cmd.CommandText = "SELECT COUNT(*) FROM Status WHERE Progress='" + "completed" + "'";
            int complete = (int)cmd.ExecuteScalar();
            completed.Text = complete.ToString();
            cmd.ExecuteNonQuery();
            //pending
            cmd.CommandText = "SELECT COUNT(*) FROM Status WHERE Progress='" + "in progress" + "'";
            int pend = (int)cmd.ExecuteScalar();
            pending.Text = pend.ToString();
            cmd.ExecuteNonQuery();
        }
    }
}