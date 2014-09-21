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

public partial class bank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["people"] == null)
        {
            Response.Redirect(database.MessageBox("请登陆后购买商品", "Default1.aspx"));
        }
        if (!IsPostBack)
        {
            if ((string)Session["orderid"] == "")
            {
                Response.Write(database.MessageBox("非法进入", "Default1.aspx"));
            }
            else
            {
                Label1.Text = Session["orderid"].ToString(); 
            }
        }
    }
}
