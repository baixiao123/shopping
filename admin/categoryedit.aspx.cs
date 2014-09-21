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

public partial class admin_categoryedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       int id=Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "select * from [bigclass] where id='" + id + "' ";
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            classname.Text = Convert.ToString(reader["bigclass"]);
        }
        else
        {
            Response.Write("<script>alert('请选择要修改的类别！')</scripit>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int id=Convert.ToInt32(Request.QueryString["id"]);
        string bigclass = this.classname.Text.Trim();
        SqlConnection conn = new SqlConnection();
        try
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update [bigclass] set bigclass='" + bigclass + "' where id='" + id + "'";
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('修改成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }
        catch (Exception)
        {

            Response.Write("<script>alert('出错！')</script>");
        }
        finally
        {
            conn.Close(); 
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("category.aspx");
    }
}
