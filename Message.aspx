<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
        }
        .style18
        {
        }
        .style19
        {
            width: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="text-align:left; width: 592px;" 
        style="height: 198px">
        <tr>
            <td class="style17">
                姓名：</td>
                                    <td>
                                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
            </td>
                                </tr>
                                <tr>
                                    <td class="style17">
                                        标题：</td>
            <td>
                <asp:TextBox ID="title" runat="server"></asp:TextBox>
                                    </td>
        </tr>
        <tr>
            <td class="style17">
                内容：</td>
            <td>
                <asp:TextBox ID="content" runat="server" Height="80px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Button ID="Button3" runat="server" Text="留言" onclick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="重置 " />
            </td>
        </tr>
        <tr>
            <td class="style17" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    ShowHeader="False">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table cellpadding="0" cellspacing="0" class="style6" frame="below">
                                    <tr>
                                        <td class="style18">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                        <td class="style19">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" 
                                                Text='<%# Eval("MessageTime", "{0:d}") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18" colspan="3">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    SelectCommand="SELECT * FROM [Message] ORDER BY [id] DESC">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

