<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="admin_Message" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
            <asp:BoundField DataField="Title" HeaderText="标题" SortExpression="Title" />
            <asp:BoundField DataField="MessageTime" HeaderText="留言时间" 
                SortExpression="MessageTime" />
            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="huifu.aspx?id={0}" HeaderText="回复" 
                NavigateUrl="~/admin/huifu.aspx" Text="回复" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:siteconn %>" 
        DeleteCommand="DELETE FROM [Message] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Message] ([Name], [Title], [Content], [MessageTime], [huifu]) VALUES (@Name, @Title, @Content, @MessageTime, @huifu)" 
        SelectCommand="SELECT * FROM [Message]" 
        UpdateCommand="UPDATE [Message] SET [Name] = @Name, [Title] = @Title, [Content] = @Content, [MessageTime] = @MessageTime, [huifu] = @huifu WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="MessageTime" Type="DateTime" />
            <asp:Parameter Name="huifu" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="MessageTime" Type="DateTime" />
            <asp:Parameter Name="huifu" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

