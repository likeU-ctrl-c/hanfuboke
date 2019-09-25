<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hfTalk.aspx.cs" Inherits="WebApplication1.hfTalk"  MasterPageFile="~/Site1.Master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table border="1" style="width:100%;">
    <tr>
        <td class="auto-style2" style="text-align: center">帖子列表</td>
    </tr>
    <tr>
        <td class="auto-style1"><a href= "index.aspx">首页&gt;&gt;</a><a href="hfTalk.aspx">汉服论坛&gt;&gt;</a> </td>
    </tr>
    <tr>
        <td class="auto-style3">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="163px" Width="971px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TopicId" HeaderText="TopicId" ReadOnly="True" SortExpression="TopicId" />
            <asp:BoundField DataField="UserLoginName" HeaderText="UserLoginName" SortExpression="UserLoginName" />
            <asp:BoundField DataField="TopicTitle" HeaderText="TopicTitle" SortExpression="TopicTitle" />
            <asp:BoundField DataField="TopicContent" HeaderText="TopicContent" SortExpression="TopicContent" />
            <asp:BoundField DataField="CreateTime" HeaderText="CreateTime" SortExpression="CreateTime" />
            <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
            <asp:HyperLinkField DataNavigateUrlFields="TopicId" DataNavigateUrlFormatString="TopicList.aspx?TopicId={0}" HeaderText="详细信息" Text="详细信息" />

        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Topic]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
    <table style="width:100%;">
        <tr>
            <td colspan="3" style="text-align: center"><a href="NewTopic.aspx">发表新帖&gt;&gt;</a> </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        height: 19px;
            width: 990px;
        }
    .auto-style2 {
        height: 20px;
            width: 990px;
        }
        .auto-style3 {
            width: 990px;
        }
    </style>
</asp:Content>
