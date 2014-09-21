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

public partial class changepasswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void change_Click(object sender, EventArgs e)
    {
        string people = Session["people"].ToString();
        string pwd = this.pwd.Text;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "update [UserInfo] set pwd='" + pwd + "' where people='" + people + "'";
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write(database.MessageBox("修改成功", "Default1.aspx"));
        }
        else
        {
            Response.Write(database.MessageBox("修改失败", "Default1.aspx"));
        }
        conn.Close();
    }
    protected void nochange_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default1.aspx");
    }
}
