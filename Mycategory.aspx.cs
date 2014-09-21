using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["people"] == null)
        {
            Response.Redirect(database.MessageBox("请登陆后购买商品", "Default1.aspx"));
        }
        if (!IsPostBack)
        {
            if (Session["cart"] == null)
            {
                Label1.Text = "暂无商品";
            }
            else
            {
                binder(); 
            }
        }
    }
    //邦定数据
    public void binder()
    {
        DataTable dt = (DataTable)Session["cart"];
        this.GridView1.DataSource = dt.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();
        decimal sum = 0;
        for (int i = 0; i < dt.Rows.Count;i++ )
        {
            sum += (Convert.ToInt32(dt.Rows[i]["num"].ToString()) * Convert.ToDecimal(dt.Rows[i]["price"].ToString()));
        }
        Label1.Text = sum.ToString();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
        DataTable dr = (DataTable)Session["cart"];
        for(int i=0;i<dr.Rows.Count;i++)
        {
            if (id == dr.Rows[i]["id"].ToString())
            {
                dr.Rows.RemoveAt(i);
                binder();
            }
          
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        this.GridView1.EditIndex = -1;
        binder();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataTable dr = (DataTable)Session["cart"];
        string id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
        string num = ((TextBox)this.GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString();
        for (int i = 0; i < dr.Rows.Count; i++)
        {
            if (id == dr.Rows[i]["id"].ToString())
            {
                dr.Rows[i]["num"] = Convert.ToInt32(num);
                this.GridView1.EditIndex = -1;
                binder();
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        this.GridView1.EditIndex = e.NewEditIndex;
        binder();
    }
    protected void Button5_Click(object sender, EventArgs e)//清空购物车
    {
        Session["cart"] = null;
        Response.Redirect("Mycategory.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)//结帐
    {
        if (Session["cart"] == null)
        {
            Response.Redirect(database.MessageBox("请先买东西在付款", "Default1.aspx"));
        }
        else
        {
            Response.Redirect("check.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)//继续购物
    {
        Response.Redirect("Default1.aspx");
    }
}
