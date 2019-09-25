<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopicList.aspx.cs" Inherits="WebApplication1.TopicList"  MasterPageFile="~/Site1.Master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table style="width: 100%;">
    <tr>
        <td><a href="index.aspx"> 首页&gt;&gt;</a> <a href="hfTalk.aspx">帖子列表&gt;&gt;</a><a href="TopicList.aspx">详细信息&gt;&gt;</a> </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
<hr />
<table style="width: 100%;">
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
    </tr>
</table>
<hr />
<table style="width: 100%;">
    <tr>
        <td class="auto-style1">以下是为本主题回复信息：</td>
    </tr>
    <tr>
        <td>
            <hr />
        </td>
    </tr>
</table>
<table style="width: 100%;">
    <tr>
        <td colspan="3" class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="176px" TextMode="MultiLine" Width="516px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Text="回复" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BorderColor="#3366FF" Text="返回" OnClick="Button2_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        height: 20px;
    }
    .auto-style2 {
        width: 302px;
    }
    .auto-style3 {
        width: 283px;
    }
        .auto-style4 {
            margin-left: 103px;
        }
        .auto-style5 {
            height: 202px;
        }
    </style>
</asp:Content>
