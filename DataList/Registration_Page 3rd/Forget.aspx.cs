using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Page_3rd
{
    public partial class Forget : System.Web.UI.Page
    {
        Property property = new Property();
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        string query;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            property.Email=txtemail.Text.Trim();
            query="select pass from Registration where email='"+property.Email+"'";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr=cmd.ExecuteReader();
            if (dr.Read())
            {
                lb_pass.Text="Current Password is: "+ dr["pass"].ToString();
                con.Close();
            }
        }
    }
}