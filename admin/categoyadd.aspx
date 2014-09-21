<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="categoyadd.aspx.cs" Inherits="admin_categoyadd" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" style="height: 118px">
        <tr>
            <td colspan="2">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 添加类别</td>
        </tr>
        <tr>
            <td class="style4">
                类名：</td>
            <td>
                <asp:TextBox ID="calssname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="calssname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="添加" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="重置 " />
            </td>
        </tr>
    </table>
</asp:Content>

