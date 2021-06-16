using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class SessionHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] !=null)
            {
                lblUserName.Text = Session["UserName"].ToString();
            }
            else
            {
                //lblUserName.Text = string.Empty;
                Response.Redirect("UnAuthorized.aspx");

            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["UserName"] = null;
            Response.Redirect("LoginForm.aspx?sessionifo=Logout");
        }
    }
}