using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session5_Asp.net
{
    public partial class ControlsExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lstOfCountry = LoadCountries();
                ddlCountry.DataSource = lstOfCountry;
                ddlCountry.DataTextField = "Country";
                ddlCountry.DataValueField = "CountryId";
                ddlCountry.DataBind();
            }
        }

        private List<CountryNames> LoadCountries()
        {
            // Pull list from DB

            List<CountryNames> countryNames = new List<CountryNames>();
            countryNames.Add(new CountryNames { Country = "USA", CountryId = 1 });
            countryNames.Add(new CountryNames { Country = "India", CountryId = 2 });
            return countryNames;

        }

        private List<CountryStates> LoadCountryStates()
        {
            // Pull list from DB

            List<CountryStates> countryStates = new List<CountryStates>();
            countryStates.Add(new CountryStates { State = "Indiana", StateId = 1 });
            countryStates.Add(new CountryStates { State = "Alaska", StateId = 2 });
            return countryStates;

        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            var SelectedCountry = ddlCountry.SelectedValue;
            var SelectedText = ddlCountry.SelectedItem.Text;
            switch (SelectedCountry)
            {
                case "1":
                    {

                        break;
                    }
                case "2":
                    {

                        break;
                    }
                default:
                    break;

            }
        }

        protected void calYear_SelectionChanged(object sender, EventArgs e)
        {
            var SelectedDate = calYear.SelectedDate;
            lblDate.Text = SelectedDate.ToShortDateString(); ;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string genderType;
            if (rdbFemale.Checked)
            {
                // operation
                genderType = "F";
            }
            else if (rdbMale.Checked)
            {
                genderType = "M";
            }
            /// Save to DB....
        }
    }
    public class CountryNames
    {
        public string Country { get; set; }
        public int CountryId { get; set; }
    }

    public class CountryStates
    {
        public string State { get; set; }
        public int StateId { get; set; }
    }
}