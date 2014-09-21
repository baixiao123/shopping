<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myorder.aspx.cs" Inherits="myorder" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style6">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="newid" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                onpageindexchanging="GridView1_PageIndexChanging">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="产品编号" SortExpression="id" />
                    <asp:BoundField DataField="Proname" HeaderText="产品名称" 
                        SortExpression="Proname" />
                    <asp:BoundField DataField="MemberPrice" HeaderText="单价" 
                        SortExpression="MemberPrice" />
                    <asp:BoundField DataField="Num" HeaderText="数量" SortExpression="Num" />
                    <asp:BoundField DataField="Orderid" HeaderText="订单号" SortExpression="Orderid" />
                </Columns>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                SelectCommand="SELECT * FROM [OrderDetail] WHERE ([people] = @people)">
                <SelectParameters>
                    <asp:SessionParameter Name="people" SessionField="people" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            总钱数：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

