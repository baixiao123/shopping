using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!IsPostBack)
            { sncode.Create(); }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string checkcode = this.checkcode.Text.Trim();
        if (!sncode.CheckSN(checkcode))
        {
            Response.Write("<script language='javascript'>alert('验证码错误')<script>");
        }
        else
        {
            string username = this.username.Text.Trim();
            string pwd = this.pwd.Text.Trim();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [UserInfo] where people='" + username + "' and pwd='" + pwd + "'";
            SqlDataReader re = cmd.ExecuteReader();
            if (re.Read())
            {
                Session["people"] = Convert.ToString(re["people"]);
                Response.Redirect("Default1.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名密码错误')</script>");
            }
            re.Close();
            conn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
}
