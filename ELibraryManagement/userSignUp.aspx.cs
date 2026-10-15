using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //signUp button clicked
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member already exixts with this member id');</script>");
            }
            else
            {
                signUpNewUser();
            }
                
        }

        bool checkMemberExists()
        {
            try
            //{
            //    SqlConnection con = new SqlConnection(strCon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand(" SELECT * FROM member_master_tbl where member_id='"+TextBox11.Text.Trim()+"';", con);
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();  
            //    da.Fill(dt);

            //    if (dt.Rows.Count > 0)
            //    {
            //        return true;
            //    }
            //    else { 
            //        return false;
            //    }

            //}
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string query = "SELECT COUNT(*) FROM member_master_tbl WHERE member_id = @member_id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@member_id", TextBox11.Text.Trim());
                        con.Open();
                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
                return false;
            }
            
        }

        void signUpNewUser()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into member_master_tbl (full_name, dob, contact_no, " +
                    "email, state, city, pincode, full_address, member_id, password, account_status) " +
                    "values(@full_name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, " +
                    "@member_id, @password, @account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox12.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('SignUp successfull. Go to user Login for logging'); </script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }
    }
}