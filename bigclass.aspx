<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bigclass.aspx.cs" Inherits="bigclass" Title="无标题页" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style17
    {
        height: 38px;
    }
    .style19
    {
        width: 105px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style6" style="height: 133px">
        <tr>
            <td class="style17">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataKeyField="id" RepeatDirection="Horizontal" 
                    oneditcommand="DataList2_EditCommand" RepeatColumns="5">
                    <ItemTemplate>
                        <table cellpadding="0" cellspacing="0" class="style6">
                            <tr>
                                <td colspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="75px" 
                                    ImageUrl='<%# Eval("Pic") %>' Width="95px" />
                                    <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' Visible="False" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" colspan="2">
                                    <asp:Label ID="Proname" runat="server" Text='<%# Eval("Proname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    市场价：</td>
                                <td>
                                    <asp:Label ID="MarketPriceLabel" runat="server" 
                                    Text='<%# Eval("MarketPrice") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    会员价：</td>
                                <td>
                                    <asp:Label ID="MemberPriceLabel" runat="server" 
                                    Text='<%# Eval("MemberPrice") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    差价：</td>
                                <td>
                                    <asp:Label ID="chaLabel" runat="server" Text='<%# Eval("cha") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/cart.gif" 
                                        CommandName="buy" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/show.gif" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" 
                    HorizontalAlign="Left" LastPageText="尾页" NextPageText="下一页" 
                    onpagechanging="AspNetPager1_PageChanging" PageSize="12" PrevPageText="上一页" 
                    ShowPageIndexBox="Always" TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到">
                </webdiyer:AspNetPager>
            </td>
        </tr>
    </table>
</asp:Content>

