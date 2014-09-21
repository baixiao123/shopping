<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepasswd.aspx.cs" Inherits="changepasswd" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
        }
        .style18
        {
            width: 101px;
        }
    .style19
    {
        width: 101px;
        height: 41px;
    }
    .style20
    {
        height: 41px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <img alt="" src="Image/re.jpg" style="width: 371px; height: 44px" /><table cellpadding="0" cellspacing="0" class="style6" style="height: 215px; text-align:left">
        <tr>
            <td class="style18">
                用户名：</td>
            <td><%=Session["people"] %>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                密码：</td>
            <td>
                <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ControlToValidate="pwd"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="pwd" ErrorMessage="只能大小写字母数字" 
                    ValidationExpression="^[A-Za-z0-9]{1,20}$"></asp:RegularExpressionValidator>
                字母大小写或数字</td>
        </tr>
        <tr>
            <td class="style19">
                确认密码：</td>
            <td class="style20">
                <asp:TextBox ID="twopwd" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="pwd" ControlToValidate="twopwd" ErrorMessage="两次密码不一致"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Button ID="change" runat="server" onclick="change_Click" Text="修改" />
            </td>
            <td>
                <asp:Button ID="nochange" runat="server" onclick="nochange_Click" Text="不修改" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
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

