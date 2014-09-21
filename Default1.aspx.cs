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

public partial class shouye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void hotproduct_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buy")
        {
            Session["id"] = ((Label)e.Item.FindControl("id")).Text;
            Session["proname"] = ((Label)e.Item.FindControl("Proname")).Text;
            Session["price"] = ((Label)e.Item.FindControl("MemberPrice")).Text;
            Response.Redirect("buy.aspx");
        }
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "buy")
        {
            Session["id"] = ((Label)e.Item.FindControl("id")).Text;
            Session["proname"] = ((Label)e.Item.FindControl("Proname")).Text;
            Session["price"] = ((Label)e.Item.FindControl("MemberPrice")).Text;
            Response.Redirect("buy.aspx");
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buy")
        {
            Session["id"] = ((Label)e.Item.FindControl("id")).Text;
            Session["proname"] = ((Label)e.Item.FindControl("Proname")).Text;
            Session["price"] = ((Label)e.Item.FindControl("MemberPrice")).Text;
            Response.Redirect("buy.aspx");
        }
    }
}
