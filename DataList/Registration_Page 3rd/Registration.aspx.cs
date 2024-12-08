using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Page_3rd
{
    public partial class Registration : System.Web.UI.Page
    {  // yha class ka object bna rhe
        Property property=new Property();
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        string query;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Create_Click(object sender, EventArgs e)
        { // user se kya enter krwana h wo likhege
            try
            {

                property.Name = txtname.Text.Trim();
                property.Dob = txtdob.Text.Trim();
                property.Email = txtemail.Text.Trim();
                property.Pass = txtpass.Text.Trim();
                property.Qual = dd_qual.SelectedValue;
                property.Gender = RadioButton1.Text.Trim();
                property.path = Guid.NewGuid() + FileUpload1.FileName;

                // yha 4-5 line isliye likh rhe ki duplicate email enter na ho uske liye
                SqlDataAdapter adp = new SqlDataAdapter("select email from Registration where email='" + property.Email + "'", con);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Literal1.Text = "Email is Dublicate";
                }
                else
                {// means duplicate h to uper ka wrna ye niche ka pura kre fire

                    // itna hone ke bad uper connection bna kr niche define krege
                    query = "_insertRegistration";  // yha procedure name likhte h
                    cmd = new SqlCommand(query, con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", property.Name);
                    cmd.Parameters.AddWithValue("@Email", property.Email);
                    cmd.Parameters.AddWithValue("@Dob", property.Dob);
                    cmd.Parameters.AddWithValue("@Qual", property.Qual);
                    cmd.Parameters.AddWithValue("@Pass", property.Pass);
                    FileUpload1.SaveAs(Request.PhysicalApplicationPath + "//upload//" + property.path);
                    cmd.Parameters.AddWithValue("@Doc", property.path);
                    cmd.Parameters.AddWithValue("@Gender", property.Gender);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    Literal1.Text = "Record is Inserted"; // display krne ke liye literal use kiye h
                    con.Close();
                }  // else wala bracket h yha close ho rha 
            }
            catch (Exception ex) // means koi error aata h to isme hold ho
            {

            }
            finally
            {
                txtemail.Text = "";  // means complete hone ke bad curser bhi blank me blink kre
            }
        }
    }
}  // ek error aa rha jo usse koi problem nhi h wo catch me error se h