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

public partial class admin_categoyadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string bigclass = this.calssname.Text.Trim();
        SqlConnection conn = new SqlConnection();
        try
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [bigclass] where bigclass='" + bigclass + "'";
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Write("<script>alert('此分类以存在')</script>");
            }
               
            else
            {
                reader.Close();
                cmd.CommandText = "insert into [bigclass] values ('" + bigclass+ "')";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('添加成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('添加失败')</script>");
                }
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
