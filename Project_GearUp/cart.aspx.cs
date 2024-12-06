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
    public partial class cart : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_grid();
            }

        }
        public void bind_grid()
        {
            string sel = "select * from cart_table join pro_tab on cart_table.pro_id=pro_tab.pro_id";
            DataSet ds = obj.fun_exedataadapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart_table where cart_id=" + getid + "";
            obj.fun_exenonqry(del);
            bind_grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int ia = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[ia].Value);
            TextBox txtqnty = (TextBox)GridView1.Rows[ia].Cells[2].Controls[0];
            string newQuantity = txtqnty.Text;

       
            string strup = "update cart_table set pro_quantity="+newQuantity+" where cart_id="+getid+"";

            int n = obj.fun_exenonqry(strup);
            if (n == 1)
            {
                string nqnty = txtqnty.Text;
                string op = "select pro_id from cart_table where cart_id="+getid+"";
                string proId = obj.fun_exescalar(op).ToString();

                string pri = "select pro_price from pro_tab where pro_id="+proId+"";
                double npri = Convert.ToDouble(obj.fun_exescalar(pri));

                int nqnty1 = Convert.ToInt32(nqnty);
                string np = "update cart_table set total_price="+nqnty1 * npri+" where cart_id="+getid+"";
                obj.fun_exenonqry(np);
            }
            GridView1.EditIndex = -1;
            bind_grid();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(cart_id) from cart_table";
            string z = obj.fun_exescalar(s);
            int ns = Convert.ToInt32(z);

            DateTime tdate = DateTime.Now;
            string dt = tdate.ToString("yyyy-MM-dd");

            int prqnty = 0;
            float gp = 0;
            int pid = 0;

            // Step 1: Retrieve a ll cart records first
            List<Dictionary<string, object>> cartItems = new List<Dictionary<string, object>>();

            for (int i = 1; i <= ns; i++)
            {
                string sel = "select * from cart_table where cart_id=" + i;
                SqlDataReader dr = obj.fun_exereader(sel);

                while (dr.Read())
                {
                    var item = new Dictionary<string, object>
            {
                { "pro_quantity", dr["pro_quantity"] },
                { "total_price", dr["total_price"] },
                { "pro_id", dr["pro_id"] },
                { "cart_id", i }
            };
                    cartItems.Add(item);
                }
                dr.Close();
            }

            // Step 2: Process each cart item and insert into the order table
            foreach (var item in cartItems)
            {
                prqnty = Convert.ToInt32(item["pro_quantity"]);
                gp = Convert.ToSingle(item["total_price"]);
                pid = Convert.ToInt32(item["pro_id"]);
                int cart_id = Convert.ToInt32(item["cart_id"]);  

                string insnew = "insert into order_tab values(" + Session["uid"] + "," + pid + "," + prqnty + "," + gp + ",' order ','" + dt + "')";
                int a = obj.fun_exenonqry(insnew);

                // Delete from cart_table after inserting into order_tab
                if (a == 1)
                {
                    string dnsnew = "delete from cart_table where cart_id=" + cart_id;
                    int b = obj.fun_exenonqry(dnsnew);

                    if (b == 1)
                    {
                        Label1.Text = "Inserted successfully";
                       
                    }
                  
                }
              
                bind_grid();
            }
            Response.Redirect("orderstatus.aspx");
        }


    }





}
   
