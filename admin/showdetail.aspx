<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="showdetail.aspx.cs" Inherits="admin_showdetail" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                <img alt="" src="../images/title.gif" style="width: 14px; height: 14px" /> 查看订单</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="newid" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="商品" SortExpression="id" />
                        <asp:BoundField DataField="Proname" HeaderText="商品名称" 
                            SortExpression="Proname" />
                        <asp:BoundField DataField="MemberPrice" HeaderText="商品单价" 
                            SortExpression="MemberPrice" />
                        <asp:BoundField DataField="Num" HeaderText="商品数量" SortExpression="Num" />
                        <asp:BoundField DataField="Orderid" HeaderText="订单号" SortExpression="Orderid" />
                        <asp:BoundField DataField="Ordertime" HeaderText="订货时间" 
                            SortExpression="Ordertime" />
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    SelectCommand="SELECT * FROM [OrderDetail]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

