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
    public partial class Admin_certificate : System.Web.UI.Page
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
                FileUpload1.SaveAs(Server.MapPath("Certificate_Images/") + FileUpload1.FileName);
                cmd.CommandText = "INSERT INTO Certify VALUES('" + email.SelectedValue + "', '" + FileUpload1.FileName + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('certificate uploaded successfully !')</script>");
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }
    }
}