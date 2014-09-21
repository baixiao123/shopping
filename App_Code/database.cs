using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
///database 的摘要说明
/// </summary>
public class database
{
    public static string MessageBox(string TxtMessage, string href)
    {
        string str = "";
        str = "<script>alert('" + TxtMessage + "');location.href='" + href + "';</script>";
        return str;

    }

}
