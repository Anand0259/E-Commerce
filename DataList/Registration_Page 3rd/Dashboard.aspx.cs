using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Page_3rd
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string sessionvalue;  // yha ek variable le rhe ki check kre session se kya aaya h
        protected void Page_Load(object sender, EventArgs e)
        {  //login hone ke bad  ye likh rhe ki agr session name jo login ke session name se aa rha agr usme kuch aata h to wo null nhi h tb
          if (Session["sessionname"] != null)
            { // means tb jo bhi session name ke ander  value aayi h wo isme store ho jaye
                sessionvalue = Session["sessionname"].ToString();
                lbname.Text = sessionvalue; // ye line isliye likh rhe ki wlcome to my page ke aage name bhi show kre 
            }
            else
            {  // agr session me kuch nhi h to wapas login page pr aa jaye
                Response.Redirect("Login.aspx");// 
            }
        }
        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon(); // session cancel ho jaye jo bhi kaam kiya ho
            Session.Clear();  // jo bhi kaam kiya ho sb clear ho jaye
            Response.Redirect("Login.aspx"); //uske bad wapas login.aspx pr chla jaye
        }
    }
}