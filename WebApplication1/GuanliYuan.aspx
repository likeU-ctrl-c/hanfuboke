<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuanliYuan.aspx.cs" Inherits="WebApplication1.GuanliYuan"  MasterPageFile="~/Site1.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="auto-style1">
    <tr>
        <td style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="管理用户" OnClick="Button3_Click" />
        </td>
        <td class="auto-style2" style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button4" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="管理图片" OnClick="Button4_Click" />
        </td>
        <td style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button5" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="管理话题" OnClick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Panel ID="Panel1" runat="server">
                <a href="index.aspx">首页&gt;&gt;</a> <a href="GuanliYuan.aspx">管理界面&gt;&gt;</a> <a href="#"> 管理用户&gt;&gt;</a>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnRowEditing="GridView1_RowEditing">
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                        <asp:BoundField DataField="UserLoginName" HeaderText="UserLoginName" SortExpression="UserLoginName" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Passworld" HeaderText="Passworld" SortExpression="Passworld" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Homepage" HeaderText="Homepage" SortExpression="Homepage" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="shenfen" HeaderText="shenfen" SortExpression="shenfen" />
                        <asp:CommandField HeaderText="修改" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([UserLoginName], [UserName], [Passworld], [Address], [Homepage], [Email], [shenfen]) VALUES (@UserLoginName, @UserName, @Passworld, @Address, @Homepage, @Email, @shenfen)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [UserLoginName] = @UserLoginName, [UserName] = @UserName, [Passworld] = @Passworld, [Address] = @Address, [Homepage] = @Homepage, [Email] = @Email, [shenfen] = @shenfen WHERE [UserId] = @UserId">
                    <DeleteParameters>
                        <asp:Parameter Name="UserId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Passworld" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Homepage" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="shenfen" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Passworld" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Homepage" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="shenfen" Type="String" />
                        <asp:Parameter Name="UserId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <a href="index.aspx">首页&gt;&gt;</a> <a href="GuanliYuan.aspx">管理界面&gt;&gt;</a> <a href="#"> 管理图片&gt;&gt;</a>
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PictureId" DataSourceID="SqlDataSource2" OnRowDeleted="GridView2_RowDeleted" OnRowEditing="GridView2_RowEditing">
                    <Columns>
                        <asp:BoundField DataField="PictureId" HeaderText="PictureId" InsertVisible="False" ReadOnly="True" SortExpression="PictureId" />
                        <asp:BoundField DataField="UserLoginName" HeaderText="UserLoginName" SortExpression="UserLoginName" />
                        <asp:BoundField DataField="PictureTitle" HeaderText="PictureTitle" SortExpression="PictureTitle" />
                        <asp:BoundField DataField="PictureContent" HeaderText="PictureContent" SortExpression="PictureContent" />
                        <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" SortExpression="CreateTime" />
                        <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
                        <asp:BoundField DataField="PictureURL" HeaderText="PictureURL" SortExpression="PictureURL" Visible="False" />
             <asp:TemplateField HeaderText="图片展示"><ItemTemplate>
                <img height="100" width="100" src='<%#Eval("PictureURL")%>' />
                </ItemTemplate></asp:TemplateField>
                        <asp:CommandField HeaderText="修改" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Picture] WHERE [PictureId] = @PictureId" InsertCommand="INSERT INTO [Picture] ([UserLoginName], [PictureTitle], [PictureContent], [CreateTime], [ip], [PictureURL]) VALUES (@UserLoginName, @PictureTitle, @PictureContent, @CreateTime, @ip, @PictureURL)" SelectCommand="SELECT * FROM [Picture]" UpdateCommand="UPDATE [Picture] SET [UserLoginName] = @UserLoginName, [PictureTitle] = @PictureTitle, [PictureContent] = @PictureContent, [CreateTime] = @CreateTime, [ip] = @ip, [PictureURL] = @PictureURL WHERE [PictureId] = @PictureId">
                    <DeleteParameters>
                        <asp:Parameter Name="PictureId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="PictureTitle" Type="String" />
                        <asp:Parameter Name="PictureContent" Type="String" />
                        <asp:Parameter DbType="Time" Name="CreateTime" />
                        <asp:Parameter Name="ip" Type="String" />
                        <asp:Parameter Name="PictureURL" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="PictureTitle" Type="String" />
                        <asp:Parameter Name="PictureContent" Type="String" />
                        <asp:Parameter DbType="Time" Name="CreateTime" />
                        <asp:Parameter Name="ip" Type="String" />
                        <asp:Parameter Name="PictureURL" Type="String" />
                        <asp:Parameter Name="PictureId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <a href="index.aspx">首页&gt;&gt;</a> <a href="GuanliYuan.aspx">管理界面&gt;&gt;</a> <a href="#"> 管理话题&gt;&gt;</a> 
                <br />
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TopicId" DataSourceID="SqlDataSource3" OnRowDeleted="GridView3_RowDeleted" OnRowEditing="GridView3_RowEditing">
                    <Columns>
                        <asp:BoundField DataField="TopicId" HeaderText="TopicId" InsertVisible="False" ReadOnly="True" SortExpression="TopicId" />
                        <asp:BoundField DataField="UserLoginName" HeaderText="UserLoginName" SortExpression="UserLoginName" />
                        <asp:BoundField DataField="TopicTitle" HeaderText="TopicTitle" SortExpression="TopicTitle" />
                        <asp:BoundField DataField="TopicContent" HeaderText="TopicContent" SortExpression="TopicContent" />
                        <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" SortExpression="CreateTime" />
                        <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
                        <asp:CommandField HeaderText="修改" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Topic] WHERE [TopicId] = @TopicId" InsertCommand="INSERT INTO [Topic] ([UserLoginName], [TopicTitle], [TopicContent], [CreateTime], [ip]) VALUES (@UserLoginName, @TopicTitle, @TopicContent, @CreateTime, @ip)" SelectCommand="SELECT * FROM [Topic]" UpdateCommand="UPDATE [Topic] SET [UserLoginName] = @UserLoginName, [TopicTitle] = @TopicTitle, [TopicContent] = @TopicContent, [CreateTime] = @CreateTime, [ip] = @ip WHERE [TopicId] = @TopicId">
                    <DeleteParameters>
                        <asp:Parameter Name="TopicId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="TopicTitle" Type="String" />
                        <asp:Parameter Name="TopicContent" Type="String" />
                        <asp:Parameter Name="CreateTime" Type="String" />
                        <asp:Parameter Name="ip" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserLoginName" Type="String" />
                        <asp:Parameter Name="TopicTitle" Type="String" />
                        <asp:Parameter Name="TopicContent" Type="String" />
                        <asp:Parameter Name="CreateTime" Type="String" />
                        <asp:Parameter Name="ip" Type="String" />
                        <asp:Parameter Name="TopicId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </asp:Panel>
        </td>
    </tr>
</table>
    

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 21px;
    }
    .auto-style2 {
        width: 256px;
    }
        </style>
</asp:Content>
