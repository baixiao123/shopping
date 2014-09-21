<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 
                产品类别管理</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id" DataSourceID="SqlDataSource1" Width="439px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="类别号" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="BigClass" HeaderText="类别名称" 
                            SortExpression="BigClass" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" 
                            DataNavigateUrlFormatString="categoryedit.aspx?id={0}" HeaderText="操作" 
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
                    DeleteCommand="DELETE FROM [BigClass] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [BigClass] ([BigClass]) VALUES (@BigClass)" 
                    SelectCommand="SELECT * FROM [BigClass]" 
                    UpdateCommand="UPDATE [BigClass] SET [BigClass] = @BigClass WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BigClass" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BigClass" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

