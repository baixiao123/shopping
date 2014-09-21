<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
<br />
<asp:DataList ID="DataList2" runat="server" DataKeyField="id" RepeatColumns="5" 
        RepeatDirection="Horizontal">
    <ItemTemplate>
        <table class="style6" style="width: 73%">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="79px" 
                        ImageUrl='<%# Eval("Pic") %>' Width="92px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="PronameLabel" runat="server" Text='<%# Eval("Proname") %>' />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
    SelectCommand="SELECT * FROM [Product] WHERE ([BigClass] = @BigClass)">
    <SelectParameters>
        <asp:QueryStringParameter Name="BigClass" QueryStringField="BigClass" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
    LastPageText="尾页" NextPageText="下一页" onpagechanging="AspNetPager1_PageChanging" 
    PrevPageText="上一页" ShowPageIndexBox="Always" TextAfterPageIndexBox="页" 
    TextBeforePageIndexBox="跳转">
</webdiyer:AspNetPager>
<br />
</asp:Content>

