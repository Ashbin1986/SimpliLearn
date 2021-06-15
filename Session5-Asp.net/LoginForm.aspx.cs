using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                txtUserName.Text = cookie["UserName"].ToString();
                Response.Write(cookie["UserName"].ToString());
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if ((!string.IsNullOrEmpty(txtUserName.Text)) && !string.IsNullOrEmpty(txtPassword.Text))
            if(txtUserName.Text == "Admin" && txtPassword.Text=="123")
            {

                if(chckRememberme.Checked)
                {
                    HttpCookie htcUserInfo = new HttpCookie("UserInfo");
                    htcUserInfo["UserName"] = txtUserName.Text;
                    Response.Cookies.Add(htcUserInfo);
                    Response.Expires = 10;

                    Session["UserName"] = txtUserName.Text;

                    Response.Redirect("SessionHomePage.aspx");
                }
            }
            else
            {
                // ltrMessage.Text = "Please fill required values";
                ltrMessage.Text = "Invalid credentails";
            }
        }
    }
}