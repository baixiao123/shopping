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

public partial class admin_productadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string proname = this.pname.Text;
        string bigclass = this.DropDownList1.SelectedValue;
        string markprice = this.makeprice.Text;
        string mebprice = this.meprice.Text;
        string hot = this.hot.SelectedValue;
        string tejia = this.tejia.SelectedValue;
        string jipin = this.jingpin.SelectedValue;
        string content = this.Editor1.Text;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["siteconn"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "insert into [product] (proname,content,hot,tejia,jipin,pic,memberprice,marketprice,bigclass) values('" + proname + "','" + content + "','" + hot + "','" + tejia + "','" + jipin + "','" + imageurl.Text + "','" + mebprice + "','" + markprice + "','" + bigclass + "')";
        conn.Open();
        int result = cmd.ExecuteNonQuery();
        if (result> 0)
        {
            Response.Write("<script>alert('添加成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败')</script>");
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            
        if (myfile.HasFile)
        {
            string type = myfile.FileName.Substring(myfile.FileName.LastIndexOf(".") + 1).ToLower();
            if (type == "jpg" || type == "gif" || type == "png" || type == "bmp")
            {
                myfile.PostedFile.SaveAs(Server.MapPath("~/fileload/") + "/" + myfile.FileName);
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
}
