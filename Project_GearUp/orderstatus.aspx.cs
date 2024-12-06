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
    public partial class orderstatus : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from order_tab where user_id="+Session["uid"]+"";
                SqlDataReader dr = obj.fun_exereader(s);
                while (dr.Read())
                {
                    Label3.Text = dr["user_id"].ToString();
                    Label5.Text = dr["date"].ToString();
                }
                 int tp = 0; int gp = 0;

                string s1 = "select sum(pro_quantity) as tqnty ,sum(total_price) as tpr from order_tab where user_id=" + Session["uid"] + "";
                SqlDataReader dr1 = obj.fun_exereader(s1);
                if (dr1.Read()) 
                {
                    string tqnty = dr1["tqnty"].ToString(); 
                                                           
                    Label7.Text = tqnty;

                    string tpr= dr1["tpr"].ToString();
                    Label9.Text = tpr;
                    tp = Convert.ToInt32(tpr);

                     gp = tp +5 ;
                    Label11.Text = Convert.ToString(gp);

                }
               

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int tp = 0; int gp = 0; string date = " ";
            string s1 = "select date ,sum(total_price) as tpr from order_tab where user_id=" + Session["uid"] + "group by date;";
            SqlDataReader dr1 = obj.fun_exereader(s1);
            if (dr1.Read())
            {
                date = dr1["date"].ToString();

                string tpr = dr1["tpr"].ToString();
                tp = Convert.ToInt32(tpr);
                gp = tp + 5;


            }





            string ins = "insert into bill_tab values(" + Session["uid"] + ",'" + date + "'," + gp + ")";
            int n = obj.fun_exenonqry(ins);
            if (n == 1)
            {
                Response.Redirect("account.aspx");
            }

        }
    }
} 