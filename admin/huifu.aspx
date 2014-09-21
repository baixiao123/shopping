<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="huifu.aspx.cs" Inherits="admin_huifu" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
        }
        .style18
        {
        }
        .style21
        {
            height: 27px;
        }
        .style22
        {
            height: 27px;
            width: 135px;
        }
        .style23
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="text-align:left; width: 592px;" 
        style="height: 198px">
        <tr>
            <td class="style17" colspan="2">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table border="1" cellpadding="0" cellspacing="0" class="style1" 
                            style="border: thin dotted #9BBAC7; height: 57px">
                            <tr>
                                <td class="style23">
                                    标题:<asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                </td>
                                <td class="style21">
                                    <asp:Label ID="MessageTimeLabel" runat="server" 
                                        Text='<%# Eval("MessageTime") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="style18" colspan="2">
                                    <asp:Label ID="ContentLabel" runat="server" Text='<%# Eval("Content") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:siteconn %>" 
                    SelectCommand="SELECT [id], [Name], [Title], [Content], [MessageTime] FROM [Message] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                <asp:Button ID="Button3" runat="server" Text="回复" onclick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="重置 " />
            </td>
        </tr>
    </table>
</asp:Content>

