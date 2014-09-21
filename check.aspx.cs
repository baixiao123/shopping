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
using System.Data.SqlClient;

public partial class check : System.Web.UI.Page
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
                Response.Redirect(database.MessageBox("请购买商品后在结帐", "Default1.aspx"));
            }
            else
            {
                binder();
            }
        }
    }
    public void binder()
    {
        DataTable dt = (DataTable)Session["cart"];
        this.GridView1.DataSource = dt.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();
        decimal sum = 0;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            sum += (Convert.ToInt32(dt.Rows[i]["num"].ToString()) * Convert.ToDecimal(dt.Rows[i]["price"].ToString()));
        }
        name.Text = sum.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string people = this.name.Text;
        string address = this.addr.Text;
        string  phone= this.phone.Text;
        string mophone = this.moble.Text;
        string strans = this.go.Text;
        string userid = Session["people"].ToString();
        int orderid = 0;
        //添加订单
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "insert into [UserOrder] (name,address,phone,mobile,stransport,userid) values ('" + people + "','" + address + "','" + phone + "','" + moble + "','" + strans + "','" + userid + "')";
        conn.Open();
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            cmd.CommandText = "select @@IDENTITY from [UserOrder]";
            orderid = Convert.ToInt32(cmd.ExecuteScalar());
            Session["orderid"] = orderid.ToString();
        }
        if (orderid > 0)
        {
            DataTable dt = (DataTable)Session["cart"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                int id = Convert.ToInt32(dt.Rows[i]["id"]);
                string pname = dt.Rows[i]["proname"].ToString();
                string price = dt.Rows[i]["price"].ToString();
                string num = dt.Rows[i]["num"].ToString();
                string p= Session["people"].ToString();
                cmd.CommandText = "insert into [OrderDetail] (id,proname,Memberprice,Num,orderid,people) values ('" + id + "','" + pname + "','" + price + "','" + price + "','" + num + "','" + orderid + "','" + p + "')";
                cmd.ExecuteNonQuery();
            }
            Session["cart"] == null;
            Response.Write(database.MessageBox("订购成功", "bank.aspx"));
        }
    }
}
