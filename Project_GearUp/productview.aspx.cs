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
    public partial class productview : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cid"] != null)
                {


                    string s = "select * from pro_tab where cat_id=" + Session["cid"] + "";
                    DataSet ds = obj.fun_exedataadapter(s);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                }
                
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton clickedbutton = (ImageButton)sender;
            string proid = clickedbutton.CommandArgument;
            if (!string.IsNullOrEmpty(proid) && int.TryParse(proid, out int pro_id))
            {
                Session["id"] = proid;
                Response.Redirect("pro_dtls.aspx");
            }
        }
    }
}