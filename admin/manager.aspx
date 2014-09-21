<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="admin_manager" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 管理管理员</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1" Width="262px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="用户名" 
                            SortExpression="username" />
                        <asp:CheckBoxField DataField="super" HeaderText="权限" SortExpression="super" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" 
                            DataNavigateUrlFormatString="manageredit.aspx?id={0}" HeaderText="操作" 
                            Text="修改" />
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    DeleteCommand="DELETE FROM [Manager] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Manager] ([username], [password], [super]) VALUES (@username, @password, @super)" 
                    SelectCommand="SELECT * FROM [Manager]" 
                    UpdateCommand="UPDATE [Manager] SET [username] = @username, [password] = @password, [super] = @super WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="super" Type="Boolean" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="super" Type="Boolean" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

