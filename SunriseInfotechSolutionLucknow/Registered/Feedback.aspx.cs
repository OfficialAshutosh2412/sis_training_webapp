using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SunriseInfotechSolutionLucknow.Registered
{
    public partial class Contactus : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("~/Login.aspx");
            try
            {
                cmd.Connection = con;
                con.Open();
                adp = new SqlDataAdapter("SELECT * FROM Signup WHERE Email='" + Session["email"] + "'", con);
                DataTable dtr = new DataTable();
                adp.Fill(dtr);
                Session["dtr"] = dtr;
                for (int i = 0; i < dtr.Rows.Count; i++)
                {
                    name.Text = dtr.Rows[i]["Name"].ToString();
                    email.Text = dtr.Rows[i]["Email"].ToString();
                }
                con.Close();
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO Feedback VALUES('"+name.Text+"','"+email.Text+"','"+words.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('thank you ! for your gracefull words.')</script>");
            words.Text = "";
        }
    }
}