using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizQuest
{
    public partial class SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkTraineeExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Trainee ID');</script>");
            }
            else
            {
                signup();
            }

        }
        void signup()
        {
            try
            {
                //string filepath = "~/UploadImage/abcdef";
                //string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);


                //FileUpload1.SaveAs(Server.MapPath("UploadImage/" + filename));
                //filepath = "~/UploadImage/" + filename;



                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Table_3(Email_Id,Name,Password,Re_Enter_Password) Values(@Email_Id,@Name,@Password,@Re_Enter_Password)", con);
                cmd.Parameters.AddWithValue("@Email_Id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Re_Enter_Password", TextBox3.Text.Trim());
                 
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('signup succesfull');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("<script>alert('Error: " + ex.ToString() + "');</script>");

            }

        }
        bool checkTraineeExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select* from Table_1 Where Trainee_id='" + TextBox4.Text.Trim() + "';", con);


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }
        }
    }
}