<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login"  MasterPageFile="~/Site1.Master"%>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
 <div style=" background-image: url('image/picture/2.jpg'); background-repeat: repeat; background-size=100%" class="auto-style34">
   
    <table style="width:100%; ">
        <tr>
            <td class="auto-style30" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style13" rowspan="2"></td>
            <td class="auto-style14" style="text-align: center; background-color: #FF33CC;">登录</td>
            <td rowspan="2" class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style7" style="background-color: #FFCCFF">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style18">用户名：*</td>
                        <td class="auto-style21" colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="279px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22">密码：*</td>
                        <td class="auto-style23" colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" Width="282px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style32">
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Height="32px" Text="登录" Width="57px" OnClick="Button1_Click" BackColor="#009933" ForeColor="White" />
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="33px" Text="注册" Width="57px" OnClick="Button2_Click" BackColor="#CCCCCC" />
                        </td>
                        <td class="auto-style32"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24" colspan="3">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style31" colspan="3"></td>
        </tr>
        </table>
     </div>
</asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style7 {
            width: 389px;
            height: 279px;
        }
        .auto-style13 {
            width: 303px;
            }
        .auto-style14 {
            width: 389px;
            height: 39px;
        }
        .auto-style16 {
            width: 100%;
            height: 264px;
        }
        .auto-style17 {
            width: 83px;
            height: 60px;
        }
        .auto-style18 {
            width: 83px;
            height: 41px;
        }
        .auto-style21 {
            height: 41px;
        }
        .auto-style22 {
            width: 83px;
            height: 37px;
        }
        .auto-style23 {
            height: 37px;
        }
        .auto-style24 {
            height: 59px;
        }
        .auto-style25 {
            margin-left: 50px;
        }
        .auto-style26 {
            margin-left: 64px;
        }
        .auto-style30 {
        height: 164px;
    }
    .auto-style31 {
        height: 238px;
    }
    .auto-style32 {
        height: 60px;
    }
        .auto-style33 {
            width: 294px;
        }
        .auto-style34 {
            height: 631px;
        }
    </style>
</asp:Content>



