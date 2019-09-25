<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewTopic.aspx.cs" Inherits="WebApplication1.NewTopic" MasterPageFile="~/Site1.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table style="width: 100%;">
    <tr>
        <td colspan="3"><a href="index.aspx">首页&gt;&gt;</a> <a href="hfTalk.aspx">帖子列表&gt;&gt;</a> <a href="NewTopic.aspx">发布新帖&gt;&gt;</a> </td>
    </tr>
    <tr>
        <td class="auto-style3">标题*</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="882px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">内容*</td>
        <td colspan="2">
            <asp:TextBox ID="TextBox2" runat="server" Height="374px" TextMode="MultiLine" Width="937px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="返回" OnClick="Button2_Click" />
        </td>
    </tr>
</table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style2 {
        width: 69px;
    }
        .auto-style3 {
            width: 99px;
        }
    </style>
</asp:Content>
