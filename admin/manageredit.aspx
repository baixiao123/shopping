<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="manageredit.aspx.cs" Inherits="admin_manageredit" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" style="height: 214px">
        <tr>
            <td class="style4">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 修改管理员</td>
        </tr>
        <tr>
            <td class="style4">
                账号：</td>
            <td>
                <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                密码：</td>
            <td>
                <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="passwd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                权限：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">管理员</asp:ListItem>
                    <asp:ListItem Value="2">普通用户</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="修改" onclick="Button1_Click" />
                </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/admin/manager.aspx">不修改返回</asp:HyperLink>
            </td>
        </tr>
        </table>
</asp:Content>

