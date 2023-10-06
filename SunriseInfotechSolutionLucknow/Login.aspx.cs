using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SunriseInfotechSolutionLucknow
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter apd = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mail = email.Text + "@gmail.com";
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Signin WHERE Email='" + mail + "' and Password='" + password.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr[3].ToString() == "user")
                {
                    Session["email"] = email.Text + "@gmail.com";
                    Response.Redirect("~/Registered/Userhome.aspx");
                }
                else if (dr[3].ToString() == "admin")
                {
                    Session["type"] = email.Text;
                    Response.Redirect("~/Admin/Admin_home.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid email or password, check your email and password')</script>");
            }
        }
    }
}
