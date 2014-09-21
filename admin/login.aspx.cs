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

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dl_Click1(object sender, ImageClickEventArgs e)
    {
        string uname = this.username.Text.Trim();
        string pwd = this.passwd.Text.Trim();
        SqlConnection conn = new SqlConnection();
        try
        {
            conn.ConnectionString = "Data Source=.;Initial Catalog=Shop;Integrated Security=True";
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [manager] where username='" + uname + "' and password='" + pwd + "'";
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Session["uname"] = Convert.ToString(reader["username"]);
                int super = Convert.ToInt32(reader["super"]);
                if (super == 0)
                {
                    Response.Write("<script>alert('你没有权限')</script>");
                }
                else
                {
                    Response.Redirect("adminindex.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('用户不存在')</script>");
            }
        }
        catch (Exception)
        {

            Response.Write("<script>alert('出错')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
}
