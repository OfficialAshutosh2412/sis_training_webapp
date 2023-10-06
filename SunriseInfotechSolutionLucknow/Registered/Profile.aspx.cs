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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("~/Login.aspx");
            cmd.Connection = con;
            con.Open();
            adp = new SqlDataAdapter("SELECT * FROM Signup WHERE Email='" + Session["email"] + "'", con);
            DataTable dtr = new DataTable();
            adp.Fill(dtr);
            Session["dtr"] = dtr;
            for (int i = 0; i < dtr.Rows.Count; i++)
            {
                ids.Text = dtr.Rows[i]["Id"].ToString();
                name.Text = dtr.Rows[i]["Name"].ToString();
                email.Text = dtr.Rows[i]["Email"].ToString();
                dob.Text = dtr.Rows[i]["DOB"].ToString();
                phone.Text = dtr.Rows[i]["Phone"].ToString();
                college.Text = dtr.Rows[i]["CollegeName"].ToString();
                course.Text = dtr.Rows[i]["Course"].ToString();
                sem.Text = dtr.Rows[i]["Semester"].ToString();
                tech.Text = dtr.Rows[i]["Tech"].ToString();
                gender.Text = dtr.Rows[i]["Gender"].ToString();
                address.Text = dtr.Rows[i]["Address"].ToString();
                joining.Text = dtr.Rows[i]["JoinDate"].ToString();
                string img = (string)dtr.Rows[i]["DP"];
                Image1.ImageUrl = "~/ProfileFolder/" + img.ToString();
                imglink.NavigateUrl = "~/ProfileFolder/" + img.ToString();
            }

        }
    }
}