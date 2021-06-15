using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class Navigations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Server_Validations.aspx");
            Response.Redirect("http://www.google.com"); // This is valid
        }

        protected void btnServerTransfer_Click(object sender, EventArgs e)
        {
            //Server.Transfer("Server_Validations.aspx");
            Server.Transfer("http://www.google.com"); // This is not valid
        }
    }
}