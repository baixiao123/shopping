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
using System.Data.SqlClient;

public partial class bigclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["people"] == "")
        {
            Response.Write(database.MessageBox("请先登录", "Default1.aspx"));

        }
        else
        {
            bind();
        }
    }
    public void bind()
    {
        string p = Request.QueryString["BigClass"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        conn.Open();
        string sql = "select count(*) from [Product] where BigClass='" + p + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        int n = (int)cmd.ExecuteScalar();
        this.AspNetPager1.RecordCount = n;
        if (this.AspNetPager1.RecordCount == 0)
        {
            Label1.Visible = true;
            this.Label1.Text = "暂无商品"; 
        }
        AspNetPager1.PageSize = 12;
        sql = "select * from Product where bigclass='" + p + "'";
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "Product");
        this.DataList2.DataSource = ds;
        this.DataList2.DataBind();
        conn.Close();
    }
    protected void DataList2_EditCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buy")
        {
            Session["id"] = ((Label)e.Item.FindControl("id")).Text;
            Session["proname"] = ((Label)e.Item.FindControl("Proname")).Text;
            Session["price"] = ((Label)e.Item.FindControl("MemberPrice")).Text;
            Response.Redirect("buy.aspx");
        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        this.AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
}
