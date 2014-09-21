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

public partial class admin_edituser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string people = Convert.ToString(Request.QueryString["people"]);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "select * from [userinfo] where people='" + people + "'";
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Label1.Text = reader["people"].ToString();
            Label2.Text = reader["email"].ToString();
            Label3.Text = reader["name"].ToString();
            Label4.Text = reader["address"].ToString();
            Label5.Text = reader["phone"].ToString();
            TextBox1.Text = reader["pwd"].ToString();
            TextBox2.Text = reader["pwd"].ToString();
        }
        reader.Close();
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string people = Convert.ToString(Request.QueryString["people"]);
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "update [userinfo] set pwd='" + TextBox1.Text + "' where people='" + people + "'";
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('修改成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}
