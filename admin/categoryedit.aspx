<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="categoryedit.aspx.cs" Inherits="admin_categoryedit" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" style="height: 117px">
        <tr>
            <td class="style2" colspan="2">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 
                修改产品类别</td>
        </tr>
        <tr>
            <td class="style4">
                产品类别：</td>
            <td>
                <asp:TextBox ID="classname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="classname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="不修改返回" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

