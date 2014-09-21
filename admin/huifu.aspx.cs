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

public partial class admin_huifu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        string content = this.content.Text;
        SqlConnection conn = new SqlConnection();
        try
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "update [Message] set huifu='"+content+"' where id='"+id+"'";
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write(database.MessageBox("回复成功", "Message.aspx"));
            }
            else
            {
                Response.Write(database.MessageBox("回复失败", "Message.aspx"));
            }
        }
        catch (Exception)
        {

            Response.Write(database.MessageBox("出错", "Message.aspx"));
        }
        finally
        {
            conn.Close(); 
        }
    }
}
