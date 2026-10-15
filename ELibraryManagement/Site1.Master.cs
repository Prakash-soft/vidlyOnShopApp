using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null || Session["role"].ToString() == "")
                {
                    LinkButton2.Visible = true;    //login button
                    LinkButton3.Visible = true;    //Sign button
                    LinkButton4.Visible = false;   //log out button
                    LinkButton5.Visible = false;   //hello user button

                    LinkButton6.Visible = true;     //Admin login button
                    LinkButton8.Visible = false;    //author management button
                    LinkButton9.Visible = false;    //publisher management button
                    LinkButton10.Visible = false;   //book inventory button
                    LinkButton11.Visible = false;   //book issuing button
                    LinkButton12.Visible = false;   //member management button
                }
                else if (Session["role"].ToString() == "user")
                {
                    LinkButton2.Visible = false;    //login button
                    LinkButton3.Visible = false;    //Sign button

                    LinkButton4.Visible = true;   //log out button
                    LinkButton5.Visible = true;   //hello user button
                    LinkButton5.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true;     //Admin login button
                    LinkButton8.Visible = false;    //author management button
                    LinkButton9.Visible = false;    //publisher management button
                    LinkButton10.Visible = false;   //book inventory button
                    LinkButton11.Visible = false;   //book issuing button
                    LinkButton12.Visible = false;   //member management button
                }
                else if (Session["role"].ToString() == "admin")
                {
                    LinkButton2.Visible = false;    //login button
                    LinkButton3.Visible = false;    //Sign button

                    LinkButton4.Visible = true;   //log out button
                    LinkButton5.Visible = true;   //hello user button
                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false;     //Admin login button
                    LinkButton8.Visible = true;    //author management button
                    LinkButton9.Visible = true;    //publisher management button
                    LinkButton10.Visible = true;   //book inventory button
                    LinkButton11.Visible = true;   //book issuing button
                    LinkButton12.Visible = true;   //member management button
                }
                
            }
            catch (Exception ex)
            {
                string error = HttpUtility.JavaScriptStringEncode(ex.Message);
                Response.Write("<script>alert('" + error + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAuthorManagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignUp.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["account_status"] = "";

            LinkButton2.Visible = true;    //login button
            LinkButton3.Visible = true;    //Sign button
            LinkButton4.Visible = false;   //log out button
            LinkButton5.Visible = false;   //hello user button

            LinkButton6.Visible = true;     //Admin login button
            LinkButton8.Visible = false;    //author management button
            LinkButton9.Visible = false;    //publisher management button
            LinkButton10.Visible = false;   //book inventory button
            LinkButton11.Visible = false;   //book issuing button
            LinkButton12.Visible = false;   //member management button
        }
    }
}