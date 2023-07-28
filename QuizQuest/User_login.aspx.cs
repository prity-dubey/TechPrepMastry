using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuizQuest
{
    public partial class User_login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cnd = new SqlCommand("select * from Table_3 where Email_Id='" + TextBox1.Text.Trim() + "' AND  Password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cnd.ExecuteReader();
 
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {




                        //Response.Write("<script>alert('Successful login');</script>");
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["role"] = "User";
                         
                        Response.Write("<script>alert('Login Successfull');</script>");
                        Response.Redirect("home_page.aspx");

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }



                /* SqlConnection prt = new SqlConnection(strcon);
                 if (prt.State == ConnectionState.Closed)
                 {
                     prt.Open();
                 }


                 SqlCommand cmd = new SqlCommand("select * from Complete_Info_Table where  Trainee_Id='" + TextBox1.Text.Trim() + "' AND  Password='" + TextBox2.Text.Trim() + "'", prt);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 DataTable dt = new DataTable();
                 da.Fill(dt);
                 if (dt.Rows.Count >= 1)
                 {
                     Response.Redirect("CompleteInfo.aspx");
                 }
                 else
                 {
                     Response.Redirect("CompleteInfo.aspx");
                 }

             */










            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");

        }

         


    }
}