<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="shouye" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style19
        {
    }
    .style20
    {
        width: 64px;
    }
        .style21
        {
            width: 76px;
        }
        .style22
        {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <br />
    <table cellpadding="0" cellspacing="0" class="style6" style="text-align:left">
        <tr>
            <td>
    <img alt="" src="Image/hot.jpg" style="width: 371px; height: 44px " /></td>
        </tr>
        <tr>
            <td class="style22">
                <asp:DataList 
        ID="hotproduct" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1" RepeatColumns="5" 
    RepeatDirection="Horizontal" Width="708px" style="text-align: left" 
        onitemcommand="hotproduct_ItemCommand">
        <ItemTemplate>
            <table cellpadding="0" class="style6" style="width: 30%">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' 
                            Visible="False" />
                        <asp:Image ID="Image1" runat="server" Height="85px" 
                            ImageUrl='<%# Eval("Pic") %>' Width="112px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Proname" runat="server" Text='<%# Eval("Proname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        市场价</td>
                    <td>
                        <asp:Label ID="MarketPrice" runat="server" Text='<%# Eval("MarketPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        会员价</td>
                    <td>
                        <asp:Label ID="MemberPrice" runat="server" Text='<%# Eval("MemberPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        差价</td>
                    <td>
                        <asp:Label ID="cha" runat="server" Text='<%# Eval("cha") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style19" colspan="2">
                        <asp:ImageButton ID="buy" runat="server" Height="19px" 
                            ImageUrl="~/Image/cart.gif" Width="53px" CommandName="buy" />
                        &nbsp;<asp:HyperLink ID="HyperLink8" runat="server" ImageUrl="~/Image/show.gif" 
                            Text='<%# Eval("id","show.aspx?id={0}") %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:siteconn %>" 
        
        SelectCommand="SELECT top 5 * FROM [Product] WHERE ([Hot] = @Hot) ORDER BY [id] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="热卖" Name="Hot" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style22">
    <img alt="" src="Image/Jipin.jpg" 
        style="width: 371px; height: 44px; float: left" /></td>
        </tr>
        <tr>
            <td class="style22">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource2" RepeatColumns="5" RepeatDirection="Horizontal" 
        style="text-align: left" onitemcommand="DataList2_ItemCommand">
        <ItemTemplate>
            <table cellpadding="0" class="style6" style="width: 99%">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image2" runat="server" Height="69px" 
                            ImageUrl='<%# Eval("Pic") %>' Width="85px" />
                        <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="Proname" runat="server" Text='<%# Eval("Proname") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        市场价：</td>
                    <td>
                        <asp:Label ID="MarketPrice" runat="server" Text='<%# Eval("MarketPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        会员价：</td>
                    <td>
                        <asp:Label ID="MemberPrice" runat="server" Text='<%# Eval("MemberPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
                            ImageUrl="~/Image/cart.gif" Width="56px" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink10" runat="server" ImageUrl="~/Image/show.gif">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:siteconn %>" 
        SelectCommand="SELECT * FROM [Product] WHERE ([Jipin] = @Jipin) ORDER BY [id] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="精品" Name="Jipin" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style22">
                <img alt="" src="Image/Tejia.jpg" style="width: 371px; height: 44px" /></td>
        </tr>
        <tr>
            <td class="style22">
    <asp:DataList ID="DataList3" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource3" RepeatColumns="5" RepeatDirection="Horizontal" 
                    onitemcommand="DataList3_ItemCommand">
        <ItemTemplate>
            <table cellpadding="0" class="style6" style="width: 99%">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image2" runat="server" Height="69px" 
                            ImageUrl='<%# Eval("Pic") %>' Width="85px" />
                        <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:Label ID="Proname" runat="server" Text='<%# Eval("Proname") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        市场价：</td>
                    <td>
                        <asp:Label ID="MarketPrice" runat="server" 
                            Text='<%# Eval("MarketPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        会员价：</td>
                    <td>
                        <asp:Label ID="MemberPrice" runat="server" 
                            Text='<%# Eval("MemberPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
                            ImageUrl="~/Image/cart.gif" Width="56px" CommandName="buy" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink10" runat="server" ImageUrl="~/Image/show.gif">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
                <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:siteconn %>" 
        SelectCommand="SELECT top 5 * FROM [Product] WHERE ([Tejia] = @Tejia)">
        <SelectParameters>
            <asp:Parameter DefaultValue="特价" Name="Tejia" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    </asp:Content>

