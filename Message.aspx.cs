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

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string name = this.name.Text;
        string title = this.title.Text;
        string content = this.content.Text;
        SqlConnection conn = new SqlConnection();
        try
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            conn.Open();
            cmd.CommandText = "insert into [Message] (Name,Title,Content) values ('" + name + "','" + title + "','" + content + "')";
            cmd.Connection = conn;
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write(database.MessageBox("留言成功", "Message.aspx"));
            }
            else
            {
                Response.Write(database.MessageBox("留言失败", "Message.aspx"));
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
