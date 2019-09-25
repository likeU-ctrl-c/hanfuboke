<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peopleCenter.aspx.cs" Inherits="WebApplication1.peopleCenter" MasterPageFile="~/Site1.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="auto-style1">
    <tr>
        <td style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="我发布的话题" OnClick="Button3_Click" />
        </td>
        <td class="auto-style2" style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button4" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="我上传的图片" OnClick="Button4_Click" />
        </td>
        <td style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button5" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="要发布话题" OnClick="Button5_Click" />
        </td>
        <td style="background-color: #FFFF00; text-align: center; color: #FF0000; text-decoration: underline;">
            <asp:Button ID="Button6" runat="server" BackColor="#FFFF66" ForeColor="Red" Text="我要上传图片" OnClick="Button6_Click" />
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:Panel ID="Panel2" runat="server">
            <a href="index.aspx">首页&gt;&gt;</a><a href="peopleCenter.aspx">个人中心&gt;&gt;</a>我上传的图片<br /> <br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PictureId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDeleted="GridView2_RowDeleted" OnRowEditing="GridView2_RowEditing">
                <Columns>
                    <asp:BoundField DataField="PictureId" HeaderText="图片序号" InsertVisible="False" ReadOnly="True" SortExpression="PictureId" />
                    <asp:BoundField DataField="UserLoginName" HeaderText="用户名" SortExpression="UserLoginName" />
                    <asp:BoundField DataField="PictureTitle" HeaderText="图片标题" SortExpression="PictureTitle" />
                    <asp:BoundField DataField="PictureContent" HeaderText="图片内容" SortExpression="PictureContent" />
                    <asp:BoundField DataField="CreateTime" HeaderText="创建时间" SortExpression="CreateTime" Visible="False" />
                    <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" Visible="False" />
                    <asp:BoundField DataField="PictureURL" HeaderText="PictureURL" SortExpression="PictureURL" Visible="False" />
                     <asp:TemplateField HeaderText="图片展示"><ItemTemplate>
                <img height="200" width="200" src='<%#Eval("PictureURL")%>' />
                </ItemTemplate></asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Picture] WHERE [PictureId] = @PictureId" InsertCommand="INSERT INTO [Picture] ([UserLoginName], [PictureTitle], [PictureContent], [CreateTime], [ip], [PictureURL], [Picture]) VALUES (@UserLoginName, @PictureTitle, @PictureContent, @CreateTime, @ip, @PictureURL, @Picture)" SelectCommand="SELECT * FROM [Picture] WHERE ([UserLoginName] = @UserLoginName)" UpdateCommand="UPDATE [Picture] SET [UserLoginName] = @UserLoginName, [PictureTitle] = @PictureTitle, [PictureContent] = @PictureContent, [CreateTime] = @CreateTime, [ip] = @ip, [PictureURL] = @PictureURL, [Picture] = @Picture WHERE [PictureId] = @PictureId">
                <DeleteParameters>
                    <asp:Parameter Name="PictureId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserLoginName" Type="String" />
                    <asp:Parameter Name="PictureTitle" Type="String" />
                    <asp:Parameter Name="PictureContent" Type="String" />
                    <asp:Parameter Name="CreateTime" Type="String" />
                    <asp:Parameter Name="ip" Type="String" />
                    <asp:Parameter Name="PictureURL" Type="String" />
                    <asp:Parameter Name="Picture" Type="Object" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="UserLoginName" SessionField="UserName" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserLoginName" Type="String" />
                    <asp:Parameter Name="PictureTitle" Type="String" />
                    <asp:Parameter Name="PictureContent" Type="String" />
                    <asp:Parameter Name="CreateTime" Type="String" />
                    <asp:Parameter Name="ip" Type="String" />
                    <asp:Parameter Name="PictureURL" Type="String" />
                    <asp:Parameter Name="Picture" Type="Object" />
                    <asp:Parameter Name="PictureId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <a href="index.aspx">首页&gt;&gt;</a><a href="peopleCenter.aspx">个人中心&gt;&gt;</a>我发布的话题
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TopicId" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                <Columns>
                    <asp:BoundField DataField="TopicId" HeaderText="话题序号" ReadOnly="True" SortExpression="TopicId" InsertVisible="False" />
                    <asp:BoundField DataField="UserLoginName" HeaderText="用户名" SortExpression="UserLoginName" />
                    <asp:BoundField DataField="TopicTitle" HeaderText="话题标题" SortExpression="TopicTitle" />
                    <asp:BoundField DataField="TopicContent" HeaderText="话题内容" SortExpression="TopicContent" />
                    <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" SortExpression="CreateTime" Visible="False" />
                    <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" Visible="False" />
                    <asp:CommandField HeaderText="修改" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic] WHERE ([UserLoginName] = @UserLoginName)" DeleteCommand="DELETE FROM [Topic] WHERE [TopicId] = @TopicId" InsertCommand="INSERT INTO [Topic] ([UserLoginName], [TopicTitle], [TopicContent], [CreateTime], [ip]) VALUES (@UserLoginName, @TopicTitle, @TopicContent, @CreateTime, @ip)" UpdateCommand="UPDATE [Topic] SET [UserLoginName] = @UserLoginName, [TopicTitle] = @TopicTitle, [TopicContent] = @TopicContent, [CreateTime] = @CreateTime, [ip] = @ip WHERE [TopicId] = @TopicId">
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
                <SelectParameters>
                    <asp:SessionParameter Name="UserLoginName" SessionField="UserName" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserLoginName" Type="String" />
                    <asp:Parameter Name="TopicTitle" Type="String" />
                    <asp:Parameter Name="TopicContent" Type="String" />
                    <asp:Parameter Name="CreateTime" Type="String" />
                    <asp:Parameter Name="ip" Type="String" />
                    <asp:Parameter Name="TopicId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <br />
            <br />
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style3" colspan="3"><a href="index.aspx">首页&gt;&gt;</a><a href="peopleCenter.aspx">个人中心&gt;&gt;</a> 我要上传图片</td>
                </tr>
                <tr>
                    <td class="auto-style7">选择要上传的图片：*</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style6" Width="454px" Height="27px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">图片的标题：*</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="42px" MaxLength="50" Width="511px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">图片的内容：*</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="168px" TextMode="MultiLine" Width="511px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="提交" Width="89px" OnClick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="返回" Width="103px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style12"></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>


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
        .auto-style3 {
            height: 20px;
        }
        .auto-style6 {
            margin-left: 5px;
        }
        .auto-style7 {
            width: 156px;
        }
        .auto-style8 {
            margin-left: 70px;
        }
        .auto-style9 {
            margin-left: 138px;
        }
        .auto-style11 {
            width: 156px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
    </style>
</asp:Content>
