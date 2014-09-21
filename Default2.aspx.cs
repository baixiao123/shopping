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
public partial class Default2 : System.Web.UI.Page
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
        string q = Request.QueryString["BigClass"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        conn.Open();
        string Sql = "select count(*) from Product where BigClass='" + q + "'";
        SqlCommand cmd = new SqlCommand(Sql,conn);
        int n = (int)cmd.ExecuteScalar();
        this.AspNetPager1.RecordCount = n;
        if (n == 0)
        {
            Label1.Visible = true;
            Label1.Text = "暂无商品";
        }
        AspNetPager1.PageSize = 12;
        Sql = "select * from Product where BigClass='" + q + "'";
        SqlDataAdapter sda = new SqlDataAdapter(Sql,conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), AspNetPager1.PageSize, "Product");
        this.DataList2.DataSource=ds;
        this.DataList2.DataBind();
        conn.Close();
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        this.AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
}