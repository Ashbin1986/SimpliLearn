using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class ShowRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(HttpContext.Current.Items["Records"] !=null)
            {
                DataTable dt = (DataTable)HttpContext.Current.Items["Records"];
            }

           if(Application["OnlineUsers"] !=null)
            {
                Application["OnlineUsers"] = Convert.ToInt32(Application["OnlineUsers"]) + 1;
                lblUsersCounter.Text = Application["OnlineUsers"].ToString();
            }

        }
    }
}