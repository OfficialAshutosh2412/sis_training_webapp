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
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void token_TextChanged(object sender, EventArgs e)
        {
            if (token.Text == "sd!1sa6g@^&1654gy{}^65p6")
            {
                adminBtn.Visible = true;
                collegeDiv.Visible = false;
                courseDiv.Visible = false;
                semesterDiv.Visible = false;
                techDiv.Visible = false;
            }
            else
            {
                adminBtn.Visible = false;
                collegeDiv.Visible = true;
                courseDiv.Visible = true;
                semesterDiv.Visible = true;
                techDiv.Visible = true;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("profileFolder/") + FileUpload1.FileName);
                cmd.CommandText = "INSERT INTO Signup VALUES('" + name.Text + "', '" + password.Text + "', '" + dob.Text + "', '" + email.Text + "', " + phone.Text + ", '" + college.Text + "', '" + course.Text + "', '" + semester.Text + "','" + tech.Text + "', '" + DropDownList1.SelectedValue + "', '" + FileUpload1.FileName + "', '" + "user" + "', '" + address.Text + "','" + joindate.Text + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "INSERT INTO Signin VALUES('" + email.Text.Replace("'", "''") + "', '" + password.Text.Replace("'", "''") + "', '" + "user" + "')";
                cmd.ExecuteNonQuery();
                Response.Redirect("~/Login.aspx");
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }

        protected void AdminBtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("profileFolder/") + FileUpload1.FileName);
                cmd.CommandText = "INSERT INTO Signup VALUES('" + name.Text + "', '" + password.Text + "', '" + dob.Text + "', '" + email.Text + "', " + phone.Text + ", '" + null + "', '" + null + "', '" + null + "','" + null + "', '" + DropDownList1.SelectedValue + "', '" + FileUpload1.FileName + "', '" + "admin" + "', '" + address.Text + "','" + joindate.Text + "')";
                cmd.ExecuteNonQuery();
                cmd.CommandText = "INSERT INTO Signin VALUES('" + email.Text.Replace("'", "''") + "', '" + password.Text.Replace("'", "''") + "', '" + "admin" + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Login.aspx");
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }
    }
}