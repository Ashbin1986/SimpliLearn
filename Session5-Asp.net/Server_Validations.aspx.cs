using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class Server_Validations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(String.IsNullOrEmpty(txtStudentName.Text))
            {
                lblError.Visible = true;
            }

            if(fileUploadProfile.HasFile)
            {
                fileUploadProfile.SaveAs(Server.MapPath("~/uploads/" + fileUploadProfile.FileName));
                lblFileMessage.Text = "File saved successfully";
                lblFileMessage.Visible = true;
                ClearControls();
            }
            else
            {
                lblFileMessage.Text = "File not selected";
                lblFileMessage.Visible = true;

            }
        }
        private void ClearControls()
        {
            txtAge.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtStudentName.Text = string.Empty;
        }
    }
}