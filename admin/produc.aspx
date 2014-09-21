<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="produc.aspx.cs" Inherits="admin_produc" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 产品管理</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Proname" HeaderText="产品名称" 
                            SortExpression="Proname" />
                        <asp:BoundField DataField="BigClass" HeaderText="产品类别" 
                            SortExpression="BigClass" />
                        <asp:HyperLinkField HeaderText="操作" Text="修改" DataNavigateUrlFields="id" 
                            DataNavigateUrlFormatString="productedit.aspx?id={0}" />
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    DeleteCommand="DELETE FROM [Product] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Product] ([Proname], [Content], [Hot], [Tejia], [Jipin], [Pic], [MemberPrice], [MarketPrice], [BigClass], [Prodate], [cha]) VALUES (@Proname, @Content, @Hot, @Tejia, @Jipin, @Pic, @MemberPrice, @MarketPrice, @BigClass, @Prodate, @cha)" 
                    SelectCommand="SELECT * FROM [Product]" 
                    UpdateCommand="UPDATE [Product] SET [Proname] = @Proname, [Content] = @Content, [Hot] = @Hot, [Tejia] = @Tejia, [Jipin] = @Jipin, [Pic] = @Pic, [MemberPrice] = @MemberPrice, [MarketPrice] = @MarketPrice, [BigClass] = @BigClass, [Prodate] = @Prodate, [cha] = @cha WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Proname" Type="String" />
                        <asp:Parameter Name="Content" Type="String" />
                        <asp:Parameter Name="Hot" Type="String" />
                        <asp:Parameter Name="Tejia" Type="String" />
                        <asp:Parameter Name="Jipin" Type="String" />
                        <asp:Parameter Name="Pic" Type="String" />
                        <asp:Parameter Name="MemberPrice" Type="String" />
                        <asp:Parameter Name="MarketPrice" Type="String" />
                        <asp:Parameter Name="BigClass" Type="String" />
                        <asp:Parameter Name="Prodate" Type="DateTime" />
                        <asp:Parameter Name="cha" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Proname" Type="String" />
                        <asp:Parameter Name="Content" Type="String" />
                        <asp:Parameter Name="Hot" Type="String" />
                        <asp:Parameter Name="Tejia" Type="String" />
                        <asp:Parameter Name="Jipin" Type="String" />
                        <asp:Parameter Name="Pic" Type="String" />
                        <asp:Parameter Name="MemberPrice" Type="String" />
                        <asp:Parameter Name="MarketPrice" Type="String" />
                        <asp:Parameter Name="BigClass" Type="String" />
                        <asp:Parameter Name="Prodate" Type="DateTime" />
                        <asp:Parameter Name="cha" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

