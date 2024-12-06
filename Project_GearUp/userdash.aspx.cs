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
    public partial class userdash : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from categ_tab";
                DataSet ds = obj.fun_exedataadapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton clickedbutton = (ImageButton)sender;
            string catid = clickedbutton.CommandArgument;
            if(!string.IsNullOrEmpty(catid)&&int.TryParse(catid,out int cat_id))
            {
                Session["cid"] = cat_id;
                Response.Redirect("productview.aspx");
            }

        }
    }
}
   