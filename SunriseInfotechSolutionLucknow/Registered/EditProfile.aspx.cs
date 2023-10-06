using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace SunriseInfotechSolutionLucknow.Registered
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("~/Login.aspx");
            cmd.Connection = con;
            if (!IsPostBack)
            {
                
                    con.Open();
                    adp = new SqlDataAdapter("SELECT * FROM Signup WHERE Email='" + Session["email"] + "'", con);
                    DataTable dtr = new DataTable();
                    adp.Fill(dtr);
                    Session["dtr"] = dtr;
                    for (int i = 0; i < dtr.Rows.Count; i++)
                    {
                        name.Text = dtr.Rows[i]["Name"].ToString();
                        dob.Text = dtr.Rows[i]["DOB"].ToString();
                        phone.Text = dtr.Rows[i]["Phone"].ToString();
                        college.Text = dtr.Rows[i]["CollegeName"].ToString();
                        course.Text = dtr.Rows[i]["Course"].ToString();
                        semester.Text = dtr.Rows[i]["Semester"].ToString();
                        address.Text = dtr.Rows[i]["Address"].ToString();
                        tech.Text = dtr.Rows[i]["Tech"].ToString();
                        DropDownList1.SelectedValue = dtr.Rows[i]["Gender"].ToString();
                    }
                    con.Close();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                
                    con.Open();
                    FileUpload1.SaveAs(Server.MapPath("/ProfileFolder") + "/" + FileUpload1.FileName);
                    cmd.CommandText = "UPDATE Signup SET Name='" + name.Text + "', DOB='" + dob.Text + "', Phone='" + phone.Text + "', CollegeName='" + college.Text + "', Course='" + course.Text + "', Semester='" + semester.Text + "', Tech='" + tech.Text + "', Gender='" + DropDownList1.SelectedValue + "', DP='" + FileUpload1.FileName + "', Address='" + address.Text + "' WHERE Email='" + Session["email"] + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/Registered/Profile.aspx");
                
            }
            else
            {
               
                    con.Open();
                    cmd.CommandText = "UPDATE Signup SET Name='" + name.Text + "', DOB='" + dob.Text + "', Phone='" + phone.Text + "', CollegeName='" + college.Text + "', Course='" + course.Text + "', Semester='" + semester.Text + "', Tech='" + tech.Text + "', Gender='" + DropDownList1.SelectedValue + "', Address='" + address.Text + "' WHERE Email='" + Session["email"] + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("~/Registered/Profile.aspx");
                
            }
        }
    }
}