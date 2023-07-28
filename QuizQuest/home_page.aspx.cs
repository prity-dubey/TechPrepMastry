using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizQuest
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("file:///C:/Users/bdo/Desktop/placement%20study%20material/DBMS%20notes%20by%20Love%20Babbar-1.pdf");

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("file:///C:/Users/bdo/Desktop/placement%20study%20material/Notes%20of%20Operating%20System%20by%20Love%20Babbar.pdf");

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(" https://mrcet.com/downloads/digital_notes/CSE/III%20Year/COMPUTER%20NETWORKS%20NOTES.pdf");

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://mrcet.com/downloads/digital_notes/HS/OOP_10122018.pdf");


        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            string username = Session["role"] as string;
            if (username == "User")
            {
                Response.Redirect("WebForm1.aspx");

            }
            else
            {
                Response.Write("<script>alert('Login to participate in quiz');</script>");
            }
             
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.ime.usp.br/~mms/mac1222s2019/50+%20Data%20Structure%20and%20Algorithms%20Interview%20Questions%20for%20Programmers.pdf");
        }
    }
}