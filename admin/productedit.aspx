<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="productedit.aspx.cs" Inherits="admin_producedit" Title="无标题页" %>

<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 109px;
        }
        .style5
        {
            width: 109px;
            height: 48px;
        }
        .style6
        {
            height: 48px;
        }
        .style7
        {
            width: 109px;
            height: 44px;
        }
        .style8
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1" 
        style="height: 838px; width: 110%">
        <tr>
            <td class="style4">
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 修改产品</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                产品名称：</td>
                                    <td>
                                        <asp:TextBox ID="pname" runat="server" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ErrorMessage="产品名称不能为空！" ControlToValidate="pname"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        产品类别：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="BigClass" DataValueField="BigClass" 
                    >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    SelectCommand="SELECT [BigClass] FROM [Product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style4">
                市场价格：</td>
            <td>
                <asp:TextBox ID="makeprice" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="价格格式应为小数点后两位，且不能为空！" ControlToValidate="makeprice" 
                    Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                会员价格：</td>
            <td>
                <asp:TextBox ID="meprice" runat="server" ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="价格格式应为小数点后两位" ControlToValidate="meprice" 
                    Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                是否热卖：</td>
            <td class="style6">
                <asp:RadioButtonList ID="hot" runat="server" Height="16px" 
                    RepeatDirection="Horizontal" Width="149px">
                    <asp:ListItem>热卖</asp:ListItem>
                    <asp:ListItem>非热卖</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                是否特价：</td>
            <td>
                <asp:RadioButtonList ID="tejia" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>特价</asp:ListItem>
                    <asp:ListItem>非特价</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                是否精品： 
            </td>
            <td>
                <asp:RadioButtonList ID="jingpin" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>精品</asp:ListItem>
                    <asp:ListItem>非精品</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                产品图片：</td>
            <td class="style8">
                <asp:FileUpload ID="myfile" runat="server" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
                <asp:TextBox ID="imageurl" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                详细介绍：</td>
            <td>
                <CE:Editor ID="Editor1" runat="server" Height="269px" Width="728px">
                </CE:Editor>
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
                <asp:Button ID="Button2" runat="server" Text="修改" onclick="Button2_Click" 
                    style="width: 40px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="重置" onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

