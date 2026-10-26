using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillAuthorPublisherValue();
            GridView1.DataBind();
        }
        //search
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        //add
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script> alert('Book already exists, try some other book id');</script>");
            }
            else
            {
                addNewBook();
            }
        }
        //update
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        //user defined function
        void fillAuthorPublisherValue()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State== ConnectionState.Closed)
                {
                    con.Open();
                }
                //author
                SqlCommand cmd = new SqlCommand("SELECT author_name FROM author_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "author_name";
                DropDownList1.DataBind();

                //publisher
                cmd = new SqlCommand("SELECT publisher_name FROM publisher_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);

                DropDownList21.DataSource = dt;
                DropDownList21.DataValueField = "publisher_name";
                DropDownList21.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfBookExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    string query = "SELECT COUNT(*) FROM book_master_tbl WHERE book_id = @book_id OR book_name = @book_name";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@book_id", TextBox3.Text.Trim());
                        cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
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

        void addNewBook()
        {
            try
            {
                string genres = "";
                foreach(int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/book_inventory/book_1.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                filepath = "~/book_inventory/" + filename;

                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl (book_id, book_name, genre, author_name, " +
                    "publisher_name, publish_date, language, edition, book_cost, no_of_pages, book_description, " +
                    "actual_stock, current_stock, book_img_link) VALUES(@book_id, @book_name, @genre, @author_name, " +
                    "@publisher_name, @publish_date, @language, @edition, @book_cost, @no_of_pages, @book_description," +
                    "@actual_stock, @current_stock, @book_img_link)", con);
                cmd.Parameters.AddWithValue("@book_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList21.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList11.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Book added successfully'); </script>");
                //clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }
    }
}