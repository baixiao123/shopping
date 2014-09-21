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

public partial class myinfor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["peole"] == null)
        {
            string people = Session["people"].ToString();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from [UserInfo] where people='" + people + "'";
            SqlDataReader re = cmd.ExecuteReader();
            if (re.Read())
            {
                this.email.Text = re["Email"].ToString();
                this.addr.Text = re["address"].ToString();
                this.phone.Text = re["phone"].ToString();

            }
            re.Close();
            conn.Close();
        }
        
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string email = this.email.Text;
        string addr = this.addr.Text;
        string phone = this.phone.Text;
        string people = Session["people"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "update [UserInfo] set Email='" + email + "',address='" + addr + "',phone='" + phone + "' where people='" + people + "'";
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write(database.MessageBox("修改成功", "Default1.aspx"));
        }
        else
        {
            Response.Write(database.MessageBox("修改失败", "Default1.aspx")); 
        }
    }
}
