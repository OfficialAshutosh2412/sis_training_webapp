using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunriseInfotechSolutionLucknow
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/1.jpg");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/2.jpg");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/3.jpg");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/4.jpg");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/5.jpg");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/6.jpg");
        }
        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/7.jpg");
        }
        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/WhatsApp Image 2023-10-17 at 16.21.58_d1c4046d.jpg");
        }
        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/res/media/img/WhatsApp Image 2023-10-17 at 16.23.27_fd5ff85e.jpg");
        }
        
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Signup.aspx");
        }
    }
}