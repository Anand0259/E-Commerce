using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Registration_Page_3rd
{

    public partial class Login : System.Web.UI.Page
    {
        Property property=new Property();
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        string query;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            property.Email = txtname.Text.Trim().ToLower();
            property.Pass= txtpass.Text.Trim();
            query = "_login";
            cmd=new SqlCommand(query, con);
            cmd.CommandType= CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email",property.Email);
            cmd.Parameters.AddWithValue("@Pass",property.Pass);
            con.Open();
            int i = (int)cmd.ExecuteScalar();
            if(i == 1)
            {
                // Session
                Session["sessionname"] = property.Email;
                 // yha sessionname user define h


                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("script>alert('please check user name and pass')</script>");
            }
        }
    }
}