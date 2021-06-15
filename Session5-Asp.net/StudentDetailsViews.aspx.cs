using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class StudentDetailsViews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["studentId"] != null)
                {
                    var studentId = Request.QueryString["studentId"].ToString();
                    LoadStudentRecords(Convert.ToInt32(studentId));

                    Response.Write("Student id : " + studentId);
                }
                else
                {
                    LoadAllRecords();
                }
            }
        }

        private void LoadAllRecords()
        {

        }


        private void LoadStudentRecords(int studentid)
        {

        }
    }
}