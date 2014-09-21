<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="admin_user" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 管理会员</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    SelectCommand="SELECT * FROM [UserInfo]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" 
        >
        <Columns>
            <asp:BoundField DataField="people" HeaderText="登陆名" SortExpression="people" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:HyperLinkField DataNavigateUrlFields="people" 
                DataNavigateUrlFormatString="showdetail.aspx?people={0}" HeaderText="查看订单" 
                Text="查看" />
            <asp:HyperLinkField DataNavigateUrlFields="people" 
                DataNavigateUrlFormatString="edituser.aspx?people={0}" HeaderText="操作" 
                Text="修改" />
        </Columns>
    </asp:GridView>
</asp:Content>

