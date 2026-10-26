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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Go Button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                searchMember();
            }
            else
            {
                Response.Write("<script> alert('Member id not exist');</script>");
                TextBox4.Text = "";
                TextBox8.Text = "";
                TextBox1.Text = "";
                TextBox9.Text = "";
                TextBox2.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
            }
        }
        //Active Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                updateMemberStatusById("active");
            }
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }
        }
        //Pending Button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                updateMemberStatusById("pending");
            }
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }
        }
        //deactivate Button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                updateMemberStatusById("deactive");
            }
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }
        }
        //delete Button
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (checkIfMemberExists())
            {
                deleteMemberById();
            }  
            else
            {
                Response.Write("<script>alert('Invalid member ID');</script>");
            }
        }

        //custom search

        void deleteMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id=@member_id", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Member deleted successfully'); </script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        void updateMemberStatusById(String status)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string query = @"UPDATE member_master_tbl SET account_status= '" + status + "' WHERE member_id = @member_id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue(status, TextBox8.Text.Trim());
                        con.Open();

                        cmd.ExecuteNonQuery();
                        con.Close();
                        GridView1.DataBind();
                        Response.Write("<script> alert('member Updated successfully'); </script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        void searchMember()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string query = @"SELECT full_name, account_status, dob, contact_no, email, state, city, pincode, full_address FROM member_master_tbl WHERE member_id = @member_id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());

                        con.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                TextBox4.Text = dr["full_name"].ToString();
                                TextBox8.Text = dr["account_status"].ToString();
                                TextBox1.Text = dr["dob"].ToString();
                                TextBox9.Text = dr["contact_no"].ToString();
                                TextBox2.Text = dr["email"].ToString();
                                TextBox5.Text = dr["state"].ToString();
                                TextBox6.Text = dr["city"].ToString();
                                TextBox10.Text = dr["pincode"].ToString();
                                TextBox11.Text = dr["full_address"].ToString();
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalid member ID');</script>");
                                clearForm();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");

            }
        }

        bool checkIfMemberExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string query = "SELECT COUNT(*) FROM member_master_tbl WHERE member_id = @member_id";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@member_id", TextBox3.Text.Trim());
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

        //clear Form
        void clearForm()
        {
            TextBox4.Text = "";
            TextBox8.Text = "";
            TextBox1.Text = "";
            TextBox9.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }


    }

}
