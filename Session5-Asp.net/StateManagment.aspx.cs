using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class StateManagment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Query string
            int studentid = 100;
            Response.Redirect("StudentDetailsViews.aspx?studentId= " + studentid);
        }
    }
}