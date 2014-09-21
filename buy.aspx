<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="buy" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            height: 56px;
        }
        .style18
        {
        }
        .style19
        {
            width: 143px;
        }
    .style20
    {
        width: 205px;
    }
    .style21
    {
        width: 249px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style6" style="height: 249px">
        <tr>
            <td class="style17" style="text-align:left">
                <table cellpadding="0" cellspacing="0" class="style6" 
                    style="height: 34px; width: 95%">
                    <tr>
                        <td>
                            <img alt="" src="Image/buy.jpg" style="width: 371px; height: 44px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <table cellpadding="0" cellspacing="0" class="style6" style="height: 158px">
                    <tr>
                        <td class="style19">
                            产品编号：</td>
                        <td>
                            <asp:Label ID="lid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            产品名称：</td>
                        <td>
                            <asp:Label ID="lproname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            会员单价：</td>
                        <td>
                            <asp:Label ID="lprice" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            产品数量：</td>
                        <td>
                            <asp:TextBox ID="num" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
                <br />
                <table cellpadding="0" cellspacing="0" class="style6">
                    <tr>
                        <td class="style20">
                            <asp:Button ID="Button3" runat="server" Text="继续购物" onclick="Button3_Click" />
                        </td>
                        <td class="style21">
                            <asp:Button ID="Button4" runat="server" Text="加入购物车" onclick="Button4_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button5" runat="server" Text="查看购物车" onclick="Button5_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

