using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class userLogin : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /* try
             {
                 SqlConnection con = new SqlConnection(strCon);
                 if (con.State == ConnectionState.Closed)
                 {
                     con.Open();
                 }
                 SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='"+TextBox1.Text.Trim()+"' AND password='"+TextBox2.Text.Trim()+"';");
                 SqlDataReader dr = cmd.ExecuteReader();
                 if (dr.HasRows) {
                     while (dr.Read()) {
                         Response.Write("<script> alert('" + dr.GetValue(8).ToString() +"');</script>");
                     }
                 }
                 else
                 {
                     Response.Write("<script> alert('Invalid Credentials');</script>");
                 }
             }

             catch(Exception ex) {
                 Response.Write("<script> alert('" + ex.Message + "');</script>");
             }*/
            //Response.Write("<script> alert('Button clicked');</script>");
            
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    con.Open();

                    string query = "SELECT * FROM member_master_tbl WHERE member_id = @memberId AND password = @password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@memberId", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                
                                    Response.Write("<script>alert('" + dr.GetValue(8).ToString() + "');</script>");
                                    Session["username"] = dr.GetValue(8).ToString();
                                    Session["fullname"] = dr.GetValue(0).ToString();
                                    Session["role"] = "user";
                                    Session["account_status"] = dr.GetValue(10).ToString();
                                
                                Response.Redirect("homePage.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalid Credentials');</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                string error = HttpUtility.JavaScriptStringEncode(ex.Message);
                Response.Write("<script>alert('" + error + "');</script>");
            }
            
        }

    }
}