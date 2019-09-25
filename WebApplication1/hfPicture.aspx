<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hfPicture.aspx.cs" Inherits="WebApplication1.hfPicture"  MasterPageFile="~/Site1.Master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PictureId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PictureId" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="PictureId" />
            <asp:BoundField DataField="UserLoginName" HeaderText="用户名" SortExpression="UserLoginName" />
            <asp:BoundField DataField="PictureTitle" HeaderText="图片标题" SortExpression="PictureTitle" />
            <asp:BoundField DataField="PictureContent" HeaderText="图片内容" SortExpression="PictureContent" />
             <asp:BoundField DataField="PictureURL" HeaderText="PictureURL" SortExpression="PictureURL" Visible="False" />
            <asp:TemplateField HeaderText="图片展示"><ItemTemplate>
                <img height="200" width="200" src='<%#Eval("PictureURL")%>' />
                </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PictureId], [UserLoginName], [PictureTitle], [PictureContent], [PictureURL] FROM [Picture]"></asp:SqlDataSource>


</asp:Content>