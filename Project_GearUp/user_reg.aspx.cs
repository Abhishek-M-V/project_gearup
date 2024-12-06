using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_GearUp
{
    public partial class user_reg : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s = "select max(reg_id)from login_tab";
            string maxregid = obj.fun_exescalar(s);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                regid = newregid + 1;
            }

            string ins = "insert into user_reg values(" + regid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + RadioButtonList1.SelectedItem.Text + "','active')";
            int i = obj.fun_exenonqry(ins);
            if (i == 1)
            {
                string insl = "insert into login_tab values(" + regid + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','user')";
                int j = obj.fun_exenonqry(insl);

            }


        }
    }
}