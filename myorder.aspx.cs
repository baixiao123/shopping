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

public partial class myorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["people"].ToString()==null)
        {
            Response.Write(database.MessageBox("请登陆", "Default1.aspx"));
        }
        if (IsPostBack)
        {
            binder();
        }
    }
    public void binder()
    {
        Label1.Text = "暂无商品";
        string people = Session["people"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        string st = "select * from [OrderDetail] where people='" + people + "'";
        SqlDataAdapter ada = new SqlDataAdapter(st, conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
        decimal sum = 0;
        for (int i = 0; i <ds.Tables[0].Rows.Count; i++)
        {
            sum += (Convert.ToInt32(ds.Tables[0].Rows[i]["num"].ToString()) * Convert.ToDecimal(ds.Tables[0].Rows[i]["price"].ToString()));
        }
        Label1.Text= sum.ToString();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        binder();
    }
}
