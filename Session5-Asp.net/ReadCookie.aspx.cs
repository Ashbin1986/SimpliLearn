using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class ReadCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cookie = Request.Cookies["UserInfo"];
            if(cookie !=null)
            {
                Response.Write(cookie["UserName"].ToString());
            }
        }
    }
}