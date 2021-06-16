using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class ViewStateExample : System.Web.UI.Page
    {
        static int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    gvEmployee.DataSource = GetDataTable();
                    gvEmployee.DataBind();

            }
        }


        private DataTable GetDataTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("EmpName");
            DataRow dr = dt.NewRow();
            dr["EmpName"] = "User";
            dt.Rows.Add(dr);
            ViewState["EmployeeRecords"] = dt;
            Session["SessionData"] = dt;
            hdnCounter.Value = "1";
            return dt;

        }

        protected void btnGetRecords_Click(object sender, EventArgs e)
        {

            if (ViewState["EmployeeRecords"] != null)
            {
                hdnCounter.Value = (Convert.ToInt32(hdnCounter.Value) + 1).ToString();

                DataTable dt =  (DataTable)ViewState["EmployeeRecords"];
                DataRow dr = dt.NewRow();
                dr["EmpName"] = "User---" + hdnCounter.Value;
                dt.Rows.Add(dr);
                ViewState["EmployeeRecords"] = dt;
             
                gvEmployee.DataSource = dt;
                gvEmployee.DataBind();
            }
        }

        protected void BtnRedirect_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Items["Records"] = ViewState["EmployeeRecords"];
            Server.Transfer("ShowRecords.aspx");
        }
    }
}