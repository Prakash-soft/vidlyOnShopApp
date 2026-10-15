using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class adminLogin : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    con.Open();

                    string query = "SELECT * FROM admin_login_tbl WHERE username = @username AND password = @password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                
                                    //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");

                                    Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                                    Session["username"] = dr.GetValue(0).ToString();
                                    Session["fullname"] = dr.GetValue(2).ToString();
                                    Session["role"] = "admin";
                                    //Session["account_status"] = dr.GetValue(10).ToString();
                              
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