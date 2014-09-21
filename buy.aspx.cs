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

public partial class buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["people"] == null)
        {
            Response.Write(database.MessageBox("请登陆后购物", "Default1.aspx")); 
        }
        if (!IsPostBack)
        {
            this.lid.Text = Session["id"].ToString();
            this.lproname.Text = Session["proname"].ToString();
            this.lprice.Text = Session["price"].ToString();
           
        }

    }
    //建立临时购物车表
    public DataTable cart()
    {
        DataTable dt = new DataTable("cart");
        DataColumn dc = dt.Columns.Add("id", typeof(int));
        dt.Columns.Add("proname", typeof(string));
        dt.Columns.Add("price", typeof(string));
        dt.Columns.Add("num", typeof(string));
        return dt;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["cart"] == null)
        {
            DataTable dt = cart();
            DataRow dr = dt.NewRow();
            dr["id"] = Convert.ToInt32(this.lid.Text);
            dr["proname"] = this.lproname.Text;
            dr["price"] = this.lprice.Text;
            dr["num"] = this.num.Text;
            dt.Rows.Add(dr);
            Session["cart"] = dt;
            Response.Write(database.MessageBox("添加成功", "Mycategory.aspx"));

        }
        else
        {
            bool find = false;
            DataTable dt = (DataTable)Session["cart"];
            int i;
            for (i = 0; i < dt.Rows.Count; i++)
            {
                if (this.lproname.Text.Trim() == dt.Rows[i]["proname"].ToString().Trim())
                {
                    find = true;
                    break;
                }
            }
            if (find)
            {
                dt.Rows[i]["num"] = Convert.ToInt32(dt.Rows[i]["num"]) + Convert.ToInt32(this.num.Text.ToString());
                Response.Write(database.MessageBox("添加成功", "Mycategory.aspx"));
            }
            else
            {
                DataRow dr = dt.NewRow();
                dr["id"] = Convert.ToInt32(this.lid.Text.Trim());
                dr["proname"] = this.lproname.Text;
                dr["price"] = this.lprice.Text;
                dr["num"] = this.num.Text;
                dt.Rows.Add(dr);
                Response.Write(database.MessageBox("添加成功", "Mycategory.aspx"));
            }
            Session["cart"] = dt;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default1.aspx");//继续购物
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mycategory.aspx"); //察看购物车
    }
}
