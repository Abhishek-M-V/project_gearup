using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_GearUp
{
    public partial class account : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["uid"]);
            string sel = "select total_price from bill_tab where user_id=" + userId+ "";
            SqlDataReader dr = obj.fun_exereader(sel);
            int amount = 0;
            while (dr.Read())
            {
                int price = Convert.ToInt32(dr["total_price"]);
                amount += price;
            }


            string ins = "insert into acc_tab values(" + userId + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ")";
            int i = obj.fun_exenonqry(ins);
            if (i == 1)
            {

                balance(userId,amount);
            }
            else
            {
                Label1.Text = "Error adding details";

            }

        }
        public void balance(int userId, int amount)
        {
            ServiceReference1.ServiceClient cls = new ServiceReference1.ServiceClient();
            string ifmin = cls.balance( userId, amount);

            if (ifmin == "Success")
            {

                string upd = "update order_tab set order_status='paid' where user_id=" +userId+"";
                int status = obj.fun_exenonqry(upd);

                if (status >= 1)
                {
                    string message = "Order confirmed and payment processed!";
                    Response.Write("<script>alert('" + message + "');</script>");
                }
                else
                {
                    string message = "Failed to update order status!";
                    Response.Write("<script>alert('" + message + "');</script>");
                }
            }
            else if (ifmin == "Insufficient Balance")
            {

                string message = "Insufficient Balance!";
                Response.Write("<script>alert('" + message + "');</script>");
            }
            else if (ifmin == "User not found")
            {

                string message = "User not found!";
                Response.Write("<script>alert('" + message + "');</script>");
            }
            else
            {

                string message = "An error occurred while processing the balance.";
                Response.Write("<script>alert('" + message + "');</script>");
            }
        }

    }
    
}