using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_GearUp
{
    public partial class Login : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select count(reg_id) from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            string cid = obj.fun_exescalar(s);
            if (cid == "1")
            {
                string str1 = "select reg_id from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string regid = obj.fun_exescalar(str1);
                Session["uid"] = regid;

                string str2 = "select logtype from login_tab where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string logtype = obj.fun_exescalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("adash.aspx");
                }
                else if (logtype == "user")
                {
                    Response.Redirect("userdash.aspx");

                }

            }
        }
    }
}