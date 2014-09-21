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

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string people = this.username.Text.Trim();
        string email = this.email.Text.Trim();
        string pwd = this.passwd.Text.Trim();
        string name = this.name.Text.Trim();
        string addr = this.adress.Text.Trim();
        string phone = this.phone.Text.Trim();
        SqlConnection conn = new SqlConnection();
        try
        {
            
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [UserInfo] where people='" + people + "'";
            SqlDataReader re = cmd.ExecuteReader();
            if (re.Read())
            {
                Response.Write("<script>alert('用户已存在')</script>");
                re.Close();
            }
            else
            {
                cmd.CommandText = "insert into [UserInfo] (people,pwd,email,name,address,phone) values ('" + people + "','" + pwd + "','" + email + "','" + name + "','" + addr + "','" + phone + "')";
                re.Close();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('注册成功')</script>");
                }
            }
        }
        catch (Exception)
        {

            Response.Write("<script>alert('注册失败')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
}
