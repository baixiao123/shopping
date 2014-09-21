<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="check.aspx.cs" Inherits="check" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="newid">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="产品编号" SortExpression="id" 
                ReadOnly="True" />
            <asp:BoundField DataField="Proname" HeaderText="产品名称" 
                SortExpression="Proname" ReadOnly="True" />
            <asp:BoundField DataField="MemberPrice" HeaderText="产品单价" 
                SortExpression="MemberPrice" ReadOnly="True" />
            <asp:BoundField DataField="Num" HeaderText="产品数量" SortExpression="Num" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:siteconn %>" 
        SelectCommand="SELECT * FROM [OrderDetail] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <table cellpadding="0" cellspacing="0" class="style6" style="text-align:left">
        <tr>
            <td>
                应付钱数：</td>
                                </tr>
                            </table>
                            <table cellpadding="0" cellspacing="0" class="style6">
                                <tr>
                                    <td class="style17">
                                        姓名：</td>
            <td style="text-align:left">
                <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                详细地址：</td>
            <td style="text-align:left">
                <asp:Label ID="addr" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                联系电话：</td>
            <td style="text-align:left">
                <asp:Label ID="phone" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                手机：</td>
            <td style="text-align:left">
                <asp:TextBox ID="moble" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="格式不对" Operator="DataTypeCheck" 
                    Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                运输方式：</td>
            <td style="text-align:left">
                <asp:DropDownList ID="go" runat="server">
                    <asp:ListItem>邮局</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Button ID="Button3" runat="server" Text="下订单" onclick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="重置" Width="71px" />
            </td>
        </tr>
    </table>
</asp:Content>

