<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zheCe.aspx.cs" Inherits="WebApplication1.zheCe"  MasterPageFile="~/Site1.Master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td><a href="login.aspx">登录&gt;&gt;</a><a href="zheCe.aspx">注册&gt;&gt;</a> </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <table border="1" style="width:100%;">
                    <tr>
                        <td class="auto-style10">登录名*</td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style26" Height="25px" Width="331px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">密码*</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style26" Height="25px" TextMode="Password" Width="331px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">重复密码*</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style26" Height="25px" TextMode="Password" Width="331px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致！" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">姓名*</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style26" Height="25px" Width="331px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">住址*</td>
                        <td class="auto-style20">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style26" Height="25px" Width="594px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">个人主页*</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style26" Height="25px" Width="407px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">邮箱地址*</td>
                        <td class="auto-style24">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style26" Height="22px" Width="509px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBox1" ErrorMessage="不能为空！" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style27"></td>
                        <td class="auto-style28">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style29"></td>
                    </tr>
                    <tr>
                        <td class="auto-style30"></td>
                        <td class="auto-style31">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="31px" Text="提交" Width="87px" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="31px" Text="重置" Width="87px" />
                        </td>
                        <td class="auto-style32"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style33"></td>
                    </tr>
                </table>
            </td>
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
        .auto-style4 {
            width: 189px;
            height: 37px;
        }
        .auto-style5 {
            width: 988px;
            height: 37px;
        }
        .auto-style7 {
            margin-left: 76px;
        }
        .auto-style8 {
            width: 91px;
            height: 31px;
        }
        .auto-style9 {
            width: 589px;
            height: 31px;
        }
        .auto-style10 {
            width: 189px;
            height: 33px;
        }
        .auto-style11 {
            width: 988px;
            height: 33px;
        }
        .auto-style13 {
            width: 189px;
            height: 39px;
        }
        .auto-style14 {
            width: 988px;
            height: 39px;
        }
        .auto-style16 {
            width: 189px;
            height: 45px;
        }
        .auto-style17 {
            width: 988px;
            height: 45px;
        }
        .auto-style19 {
            width: 189px;
            height: 35px;
        }
        .auto-style20 {
            width: 988px;
            height: 35px;
        }
        .auto-style22 {
            width: 100%;
        }
        .auto-style23 {
            width: 189px;
            height: 40px;
        }
        .auto-style24 {
            width: 988px;
            height: 40px;
        }
        .auto-style26 {
            margin-left: 35px;
        }
        .auto-style27 {
            width: 91px;
            height: 34px;
        }
        .auto-style28 {
            width: 589px;
            height: 34px;
        }
        .auto-style29 {
            height: 34px;
        }
        .auto-style30 {
            width: 91px;
            height: 44px;
        }
        .auto-style31 {
            width: 589px;
            height: 44px;
        }
        .auto-style32 {
            height: 44px;
        }
        .auto-style33 {
            height: 31px;
        }
    </style>
</asp:Content>
