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

public partial class admin_addmanagers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        string username = this.uname.Text.Trim();
        string pwd = this.passwd.Text.Trim();
        int super = Convert.ToInt32(this.DropDownList1.SelectedValue);
        SqlConnection conn=new SqlConnection();
        try
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [manager] where username='" + username + "'";
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("<script>alert('此用户存在 ')</script>");
            }
            else
            {
                cmd.CommandText = "insert into [manager] values ('" + username + "','" + pwd + "','" + super + "') ";
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
