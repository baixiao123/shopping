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

public partial class admin_producedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "select * from [product] where id='" + id + "'";
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            this.pname.Text = Convert.ToString(reader["proname"]);
            this.DropDownList1.SelectedValue =Convert.ToString (reader["bigclass"]);
            this.makeprice.Text = Convert.ToString(reader["marketprice"]);
            this.meprice.Text = Convert.ToString(reader["memberprice"]);
            this.hot.SelectedValue = Convert.ToString(reader["hot"]);
            this.tejia.SelectedValue = Convert.ToString(reader["tejia"]);
            this.jingpin.SelectedValue = Convert.ToString(reader["jipin"]);
            this.Editor1.Text = Convert.ToString(reader["content"]);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (myfile.HasFile)
        {
            string type = myfile.FileName.Substring(myfile.FileName.LastIndexOf(".") + 1).ToLower();
            if (type == "jpg" || type == "gif" || type == "png" || type == "bmp")
            {
                myfile.PostedFile.SaveAs(Server.MapPath("~/admin/image") + "/" + myfile.FileName);
                imageurl.Text = "admin/images" + "/" + myfile.FileName;
                Response.Write("<script>alert('图片上传成功')</script>");
            }
            else
            {
                Label1.Text = " 图片格式不正确";
            }
        }
        else
        {
            Response.Write("<script>alert('请选择图片')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        string prname = pname.Text;
        string bigclass = DropDownList1.SelectedItem.Value;
        string maprice = makeprice.Text;
        string mebprice = meprice.Text;
        string hot = this.hot.SelectedValue;
        string tejia = this.tejia.SelectedItem.Value;
        string jingpin = this.jingpin.SelectedItem.Value;
        string content = this.Editor1.Text;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "update [product] set proname='" + prname + "',content='" + content + "',hot='" + hot + "',tejia='" + tejia + "',jipin='" + jingpin + "',pic='" + imageurl + "',memberprice='" + mebprice + "',marketprice='" + makeprice + "',bigclass='" + bigclass + "' where id='" + id + "'where id='"+id+"'";
        conn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("<script>alert('修改成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
            

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("productedit.aspx");
    }
}
