<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="admin_edituser" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" style="height: 354px">
        <tr>
            <td colspan="2">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 修改用户</td>
        </tr>
        <tr>
            <td class="style4">
                用户名：</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                电子邮件：</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                密码：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                确认密码： 
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="两次密码不一样"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                备注： 
            </td>
            <td>
                个人信息</td>
        </tr>
        <tr>
            <td class="style4">
                姓名：</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                地址：</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                电话</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="不修改返回" />
            </td>
        </tr>
    </table>
</asp:Content>

