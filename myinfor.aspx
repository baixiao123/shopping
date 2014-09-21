<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myinfor.aspx.cs" Inherits="myinfor" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
        }
        .style18
        {
        }
        .style19
        {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style6" style="text-align:left">
        <tr>
            <td class="style18" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                电子邮件：</td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                    </td>
        </tr>
        <tr>
            <td class="style19">
                备注：</td>
            <td>
                个人信息</td>
        </tr>
        <tr>
            <td class="style19">
                地址：</td>
            <td>
                <asp:TextBox ID="addr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                电话：</td>
            <td>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <asp:Button ID="Button3" runat="server" Text="修改" Width="55px" 
                    onclick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="重置" Width="59px" />
            </td>
        </tr>
        <tr>
            <td class="style17" colspan="2" style="text-align:left">
                &nbsp;</tr>
    </table>
    <br />
    <table cellpadding="0" cellspacing="0" class="style6" style="text-align:left">
        <tr>
            <td>
                本服务协议内容包括协议正文及所有已经发布的或将来可能发布的各类规则。<br />
                <br />
                所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。<br />
&nbsp;在本服务协议中没有以“规则”字样表示的链接文字所指示的文件不属于本服务协议的组成部分，而是其他内容的协议或有关参考资料，与本协议没有法律上的直接关系。 
                 
                <br />
                <br />
                会员在使用提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。<br />
                有权根据需要不时的制定、修改本协议或各类规则，如本协议有任何变更，将网站上刊载公告，通知予会员。如会员不同意相关变更，必须停止使用“服务”。经修订的协议一经在网公布后，立即自动生效。<br />
                                各类规则会在发布后生效，亦成为本协议的一部分。登录或继续使用“服务”将表示会员接受经修订的协议。<br />
                <br />
                除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。  
            </td>
        </tr>
    </table>
</asp:Content>

