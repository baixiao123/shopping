<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_Default" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 34px;
            width: 76px;
        }
        .style13
        {
            height: 43px;
        }
        .style15
        {
            height: 33px;
            width: 76px;
        }
        .style16
        {
            height: 33px;
        }
        .style17
        {
            height: 36px;
            width: 76px;
        }
        .style18
        {
            height: 36px;
        }
        .style19
        {
            height: 27px;
            width: 76px;
        }
        .style20
        {
            height: 27px;
        }
        .style21
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" 
        style="background-image: url('../images/login.jpg'); background-repeat: no-repeat; height: 294px;">
        <tr>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
            <td rowspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
&nbsp;&nbsp;&nbsp;
                    帐号：</td>
            <td class="style18">
                <asp:TextBox ID="username" runat="server" Width="115px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
&nbsp;&nbsp;&nbsp;
                    密码：</td>
            <td class="style20">
                <asp:TextBox ID="passwd" runat="server" TextMode="Password" Width="108px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="dl" runat="server" Height="26px" 
                    ImageUrl="~/images/bt1.jpg"  Width="64px" onclick="dl_Click1" />
&nbsp;
                <asp:ImageButton ID="reset" runat="server" Height="26px" 
                    ImageUrl="~/images/bt2.gif" Width="61px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style13">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

