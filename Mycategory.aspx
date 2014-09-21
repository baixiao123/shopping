<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mycategory.aspx.cs" Inherits="Default2" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 147px;
        }
        .style18
        {
            width: 127px;
        }
        .style19
        {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="171px" DataKeyNames="id" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="商品编号" ReadOnly="True" />
            <asp:BoundField DataField="proname" HeaderText="商品名称" ReadOnly="True" />
            <asp:BoundField DataField="price" HeaderText="商品单价" ReadOnly="True" />
            <asp:BoundField DataField="num" HeaderText="商品数量" />
            <asp:CommandField ShowEditButton="True" HeaderText="编辑" />
            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    应付钱数：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <table cellpadding="0" cellspacing="0" class="style6" 
        style="width: 55%; height: 77px">
        <tr>
            <td class="style17">
                <asp:Button ID="Button3" runat="server" Text="继续购物" onclick="Button3_Click" />
            </td>
            <td class="style18">
                <asp:Button ID="Button4" runat="server" Text="结帐" onclick="Button4_Click" 
                    Width="72px" />
            </td>
            <td class="style19">
                <asp:Button ID="Button5" runat="server" Text="清空购物车" onclick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

