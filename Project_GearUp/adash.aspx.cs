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
    public partial class adash : System.Web.UI.Page
    {
        concls obj = new concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_grid();
                bind_dropdown();
                grid_bind();

            }
        }
        public void bind_dropdown()
        {
            string d = "select cat_id,cat_name from categ_tab";
            DataSet ds = obj.fun_exedataadapter(d);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cat_name";
            DropDownList2.DataValueField = "cat_id";
            DropDownList2.DataBind();
        }
        public void bind_grid()
        {
            string sel = "select * from categ_tab";
            DataSet ds = obj.fun_exedataadapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        
        public void grid_bind()
        {
            string g = "select * from pro_tab";
            DataSet ds = obj.fun_exedataadapter(g);
            GridView3.DataSource = ds;
            GridView3.DataBind();

        }

    

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = false;

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cpic = "~/cat_pic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(cpic));

            string insc="insert into categ_tab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" +cpic+ "')";
            int i = obj.fun_exenonqry(insc);
            if (i == 1)
            {
                Label5.Text = "INSERTED";
            }
            bind_grid(); 
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del="delete from categ_tab where cat_id="+getid+"";
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
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtcatname = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtcatdesc = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            FileUpload catim = GridView1.Rows[i].FindControl("FileUpload4") as FileUpload;
            string strup = "";
            if (catim == null && catim.HasFile)
            {
                string folder = Server.MapPath("~/cat_pic/");
                string filepath = System.IO.Path.Combine(folder, catim.FileName);
                catim.SaveAs(filepath);
                string a = "~/cat_pic/" + catim.FileName;
                strup = "update categ_tab set cat_name='" + txtcatname.Text + "',cat_desc='" + txtcatdesc.Text + "',cat_photo='" + a + "'";
            }
            else
            {
                strup = "update categ_tab set cat_name='" + txtcatname.Text + "',cat_desc='" + txtcatdesc.Text + "' where cat_id=" + getid + "";
            }
            obj.fun_exenonqry(strup);
            GridView1.EditIndex = -1;
            bind_grid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string b = "~/pro_pic/" + FileUpload3.FileName;
            FileUpload3.SaveAs(MapPath(b));

            string insp = "insert into pro_tab values(" + DropDownList2.SelectedItem.Value + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + b + "','" + TextBox10.Text + "','available')";
            int j = obj.fun_exenonqry(insp);
            if (j == 1)
            {
                Label21.Text = "INSERTED";
            }
            bind_dropdown();
            grid_bind();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int j = e.RowIndex;
            int getidp = Convert.ToInt32(GridView3.DataKeys[j].Value);
            string delp = "delete from pro_tab where pro_id=" + getidp + "";
            obj.fun_exenonqry(delp);
            grid_bind();
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            grid_bind();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int j = e.RowIndex;
            int getidp = Convert.ToInt32(GridView3.DataKeys[j].Value);

            TextBox txtpname = (TextBox)GridView3.Rows[j].Cells[1].Controls[0];
            TextBox txtpdesc = (TextBox)GridView3.Rows[j].Cells[2].Controls[0];
            TextBox txtprice = (TextBox)GridView3.Rows[j].Cells[3].Controls[0];
            TextBox txtpstock = (TextBox)GridView3.Rows[j].Cells[4].Controls[0];
            FileUpload proim = (FileUpload)GridView3.Rows[j].FindControl("FileUpload5");

            string strup;
            string b = string.Empty;

            if (proim != null && proim.HasFile)
            {
                string folder = Server.MapPath("~/pro_pic/");
                string filepath1 = System.IO.Path.Combine(folder, proim.FileName);
                proim.SaveAs(filepath1);
                b = "~/pro_pic/" + proim.FileName;

                strup = "update pro_tab set pro_name='" + txtpname.Text + "', pro_price='" + txtprice.Text + "', pro_desc='" + txtpdesc.Text + "', pro_photo='" + b + "', pro_stock='" + txtpstock.Text + "' where pro_id=" + getidp+"";
            }
            else
            {
                strup = "update pro_tab set pro_name='" + txtpname.Text + "', pro_price=" + txtprice.Text + ", pro_desc='" + txtpdesc.Text + "', pro_stock='" + txtpstock.Text + "' where pro_id=" + getidp+"";
            }

            obj.fun_exenonqry(strup);
            GridView3.EditIndex = -1;
            grid_bind();
        }

    }
}