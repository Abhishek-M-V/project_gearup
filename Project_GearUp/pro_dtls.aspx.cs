using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project_GearUp
{
    public partial class pro_dtls : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] != null)
                {
                    string selp = "select * from pro_tab where pro_id=" + Session["id"] + "";
                    SqlDataReader dr = obj.fun_exereader(selp);
                    while (dr.Read())
                    {
                        Image1.ImageUrl = dr["pro_photo"].ToString();
                        Label1.Text = dr["pro_name"].ToString();
                        Label2.Text = dr["pro_desc"].ToString();
                        Label3.Text = dr["pro_stock"].ToString();
                        Label4.Text = dr["pro_price"].ToString();
                    }
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
                string sel = "select max(cart_id) from cart_table";
                string max_cart = obj.fun_exescalar(sel);
                int n_cart = 0;
                if (max_cart == "")
                {
                    n_cart = 1;
                }
                else
                {
                    int newregid = Convert.ToInt32(max_cart);
                    n_cart = newregid + 1;
                }

                int stock = 0;
                stock = stock_check();
                double tot_price = 0;
                tot_price = price_calc();
                int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                if (qty <= stock)
                {
                    string cart_ins = "insert into cart_table values(" + n_cart + "," + Session["uid"] + "," + Session["id"] + "," + qty + "," + tot_price + ")";
                    int i = obj.fun_exenonqry(cart_ins);
                    if (i == 1)
                    {
                        Label5.Visible = true;
                        Label5.Text = "Added to cart.";

                    }
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Insufficient Stock.";
                }
        }
            public int stock_check()
            {
                string get_stock = "select pro_stock from pro_tab where pro_id='" + Session["id"] + "'";
                string stock = obj.fun_exescalar(get_stock);
                int stock_val = Convert.ToInt32(stock);
                return stock_val;
            }
            public double price_calc()
            {
                string get_price = "select pro_price from pro_tab where pro_id='" + Session["id"] + "'";
                string price = obj.fun_exescalar(get_price);
                double price_val = Convert.ToDouble(price);
                int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
                double tprice = price_val * qty;
                return tprice;
            }

         
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userdash.aspx");

        }
    }
}