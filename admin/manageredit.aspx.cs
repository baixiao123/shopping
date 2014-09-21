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

public partial class admin_manageredit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText="select * from [manager] where id='"+id+"'";
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            uname.Text =Convert.ToString (reader["username"]);
            passwd.Text = Convert.ToString(reader["password"]);
            if (Convert.ToInt32(reader["super"]) == 1)
            {
                DropDownList1.Items.Add(new ListItem("管理员", "1"));
                DropDownList1.Items.Add(new ListItem("普通用户", "0"));
            }
            else
            {
                DropDownList1.Items.Add(new ListItem("普通用户", "0"));
                DropDownList1.Items.Add(new ListItem("管理员", "1"));
            }
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        conn.Open();
        cmd.CommandText = "update [manager] set username='" + uname.Text + "',password='" + passwd.Text + "',super='" + DropDownList1.SelectedValue+ "'where id='"+id+"'";
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
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
        RequiredFieldValidator2.Enabled = false;
        Response.Redirect("manager.aspx");
    }
}
