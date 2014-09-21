<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="addmanagers.aspx.cs" Inherits="admin_addmanagers" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" style="height: 162px">
        <tr>
            <td class="style4">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 添加管理员</td>
            <td>
                &nbsp;</td>
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
                    <asp:ListItem Value="0">管理员</asp:ListItem>
                    <asp:ListItem Value="1">普通用户</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="add" runat="server" onclick="add_Click" Text="添加" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="重置" />
            </td>
        </tr>
    </table>
</asp:Content>

