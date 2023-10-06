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
    public partial class Certificate1 : System.Web.UI.Page
    {
        SqlConnection con = ConnectionStringFile.GetConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
                Response.Redirect("~/Login.aspx");
            try
            {
                cmd.Connection = con;
                con.Open();
                adp = new SqlDataAdapter("SELECT * FROM Status WHERE Email='" + Session["email"] + "'", con);
                DataTable dtr = new DataTable();
                adp.Fill(dtr);
                Session["dtr"] = dtr;
                for (int i = 0; i < dtr.Rows.Count; i++)
                {
                    satuslabel.Text = dtr.Rows[i]["Progress"].ToString();
                }
                con.Close();
                con.Open();
                adp = new SqlDataAdapter("SELECT * FROM Certify WHERE Email='" + Session["email"] + "'", con);
                DataTable dtr2 = new DataTable();
                adp.Fill(dtr2);
                Session["dtr2"] = dtr2;
                for (int j = 0; j < dtr2.Rows.Count; j++)
                {
                    string imgpath = "../Admin/Certificate_Images/";
                    cert.ImageUrl = imgpath + dtr2.Rows[j]["Certificate"].ToString();
                    cerlink.NavigateUrl = imgpath + dtr2.Rows[j]["Certificate"].ToString();
                }
                con.Close();
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin/Certificate_Images/preview.png");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("Docs/Adhaar/") + FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("Docs/PPS/") + FileUpload2.FileName);
                cmd.CommandText = "INSERT INTO Documents VALUES('" + FileUpload1.FileName + "', '" + FileUpload2.FileName + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('documents uploaded successfully !')</script>");
            }
            catch
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
        }
    }
}