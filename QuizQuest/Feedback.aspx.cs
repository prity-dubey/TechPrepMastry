using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace QuizQuest
{
    public partial class Feedback : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Feedback_Table2(Email,Feedback1,Feedback2,Feedback3,Feedback4,Feedback5,Remark) Values(@Email,@Feedback1,@Feedback2,@Feedback3,@Feedback4,@Feedback5,@Remark)", con);


                cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Feedback1", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Feedback2", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Feedback3", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Feedback4", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Feedback5", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Remark", TextBox7.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Feedback Submitted Will definatly work on it');</script>");

                Response.Redirect("home_page.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("<script>alert('Error: " + ex.ToString() + "');</script>");


            }


        }
    }
}
