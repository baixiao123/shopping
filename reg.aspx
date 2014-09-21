<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style19
    {
        height: 41px;
    }
        .style20
        {
            width: 90px;
        }
    .style21
    {
        height: 231px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style6" style="height: 563px">
    <tr>
        <td class="style19">
            <img alt="" src="Image/re.jpg" style="width: 371px; height: 44px" /></td>
    </tr>
    <tr>
        <td style="text-align:center" class="style21">
            <table cellpadding="0" cellspacing="0" class="style6" 
                style="height: 217px; width: 87%;text-align:left" >
                <tr>
                    <td class="style20">
                        用户名：</td>
                    <td>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="username" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="username" ErrorMessage="格式不正确" 
                            ValidationExpression="^[a-zA-Z0-9][a-zA-Z0-9\.\-@]{3,10}$"></asp:RegularExpressionValidator>
                        字母 数字 3到10位</td>
                </tr>
                <tr>
                    <td class="style20">
                        电子邮件：</td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        密码：</td>
                    <td>
                        <asp:TextBox ID="passwd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="passwd" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="passwd" ErrorMessage="格式不正确" 
                            ValidationExpression="^[A-Za-z0-9_]{1,20}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        确认密码:：</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ControlToValidate="pwd"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="passwd" ControlToValidate="pwd" ErrorMessage="不一致"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        备注</td>
                    <td>
                        个人信息</td>
                </tr>
                <tr>
                    <td class="style20">
                        姓名：</td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="格式不正确" ValidationExpression="^[\u0391-\uFFE5]+$" 
                            ControlToValidate="name"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        地址：</td>
                    <td>
                        <asp:TextBox ID="adress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="*" ControlToValidate="adress"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        电话：</td>
                    <td>
                        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="phone" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="phone" ErrorMessage="格式不正确" 
                            ValidationExpression="^[0-9]{5,10}$"></asp:RegularExpressionValidator>
                        5到10位</td>
                </tr>
                <tr>
                    <td class="style20">
                        <asp:Button ID="Button3" runat="server" Text="注册" onclick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="重置" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="253px" TextMode="MultiLine" 
                Width="430px">本服务协议内容包括协议正文及所有已经发布的或将来可能发布的各类规则。所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。 
            在本服务协议中没有以“规则”字样表示的链接文字所指示的文件不属于本服务协议的组成部分，而是其他内容的协议或有关参考资料，与本协议没有法律上的直接关系。 
            会员在使用提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。有权根据需要不时的制定、修改本协议或各类规则，如本协议有任何变更，将网站上刊载公告，通知予会员。如会员不同意相关变更，必须停止使用“服务”。经修订的协议一经在网公布后，立即自动生效。各类规则会在发布后生效，亦成为本协议的一部分。登录或继续使用“服务”将表示会员接受经修订的协议。除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。 
            </asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

