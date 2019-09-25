<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" MasterPageFile="~/Site1.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table style="width: 100%;">
        <tr>
            <td class="auto-style5"><a href = "index.aspx">首页&gt;&gt;</a></td>
        </tr>
        <tr>
            <td>
                <hr class="auto-style6" />
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"><a href="hfjj.aspx">汉服简介&gt;&gt;</a> </td>
            <td class="auto-style2"><a href="hfPicture.aspx">汉服图片&gt;&gt;</a> </td>
            <td><a href="hfTalk.aspx">热门话题&gt;&gt;</a> </td>
        </tr>
        <tr>
            <td class="auto-style1"><div align="left">
        <h1>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style15" colspan="3"><strong style="color: #FF0000">汉服</strong></td>
                </tr>
                <tr>
                    <td class="auto-style16" colspan="3" style="font-size: medium; color: #000080;">
        <u>汉服</u>，全称是&quot;汉民族传统服饰&quot;，又称汉衣冠、汉装、华服，是从黄帝即位到公元17世纪中叶（明末清初），在汉族的主要居住区，以&quot;华夏－汉&quot;文化为背景和主导思想，以华夏礼仪文化为中心，通过自然演化而形成的具有独特汉民族风貌性格，明显区别于其他民族的传统服装和配饰体系，是中国&quot;衣冠上国&quot;、&quot;礼仪之邦&quot;、&quot;锦绣中华&quot;、赛里斯国的体现，承载了汉族的染织绣等杰出工艺和美学，传承了30多项中国非物质文化遗产以及受保护的中国工艺美术。<br />
        与汉人一词类似，汉服中的&quot;汉&quot;字的词义外延亦存在着由汉朝扩大为整个民族指称的过程。如《马王堆三号墓遣册》关于&quot;汉服&quot;最早的记载：&quot;简四四'美人四人，其二人楚服，二人汉服'&quot; 中的&quot;汉服&quot;是指汉朝的服饰礼仪制度，即《周礼》《仪礼》《礼记》里的冠服体系；而成书于唐朝的《蛮书》的记载：&quot;初袭汉服，后稍参诸戎风俗，迄今但朝霞缠头，其余无异&quot;中的&quot;汉服&quot;指的则是汉人的服饰礼仪制度 。<br />
        汉服&quot;始于黄帝，备于尧舜&quot;，源自黄帝制冕服。定型于周朝，并通过汉朝依据四书五经形成完备的冠服体系，成为神道设教的一部分。因此后来各个华夏朝代均宗周法汉以继承汉衣冠为国家大事，于是有了二十四史中的舆服志。&quot;黄帝、尧、舜垂衣裳而治天下，益取自乾坤&quot;，是说上衣下裳的形制是取天意而定，是神圣的。汉服还通过华夏法系影响了整个汉文化圈，亚洲各国的部分民族如日本、朝鲜、越南、蒙古、不丹等等服饰均具有或借鉴汉服特征。</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                </h1>
                </div></td>
            <td class="auto-style2">
                <table style="width:100%;text-align: center">
                    <tr>
                        <td >
                            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/picture/1.jpg" OnClick="ImageMap1_Click">
                            </asp:ImageMap>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" class="auto-style7" src="image/picture/2.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style8" src="image/picture/u=141068504,2218646660&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style9" src="image/picture/u=1434172083,3798871843&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style10" src="image/picture/u=162624845,2577131831&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style11" src="image/picture/u=1800388800,374396327&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style7" src="image/picture/u=1928748667,2047701429&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style9" src="image/picture/u=2104872003,2613911463&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <img class="auto-style12" src="image/picture/u=2155036619,2026946467&fm=26&gp=0.jpg" /></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style17">
                    <tr>
                        <td class="auto-style18" colspan="3">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="TopicId" DataSourceID="SqlDataSource2" Height="367px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TopicId" HeaderText="TopicId" ReadOnly="True" SortExpression="TopicId" />
                        <asp:BoundField DataField="TopicTitle" HeaderText="TopicTitle" SortExpression="TopicTitle" />
                        <asp:HyperLinkField DataNavigateUrlFields="TopicId" DataNavigateUrlFormatString="TopicList.aspx?TopicId={0}" DataTextField="TopicTitle" HeaderText="详细信息" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TopicId], [TopicTitle] FROM [Topic]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TopicTitle] FROM [Topic]"></asp:SqlDataSource>
                        </td>
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
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <img class="auto-style7" src="image/picture/u=2217562196,2177084434&fm=26&gp=0.jpg" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <img class="auto-style13" src="image/picture/u=2490549569,612688599&fm=26&gp=0.jpg" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <img class="auto-style7" src="image/picture/u=2835873066,35213931&fm=26&gp=0.jpg" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <img class="auto-style9" src="image/picture/u=3419443451,2356938703&fm=26&gp=0.jpg" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 202px;
        }
        .auto-style2 {
            width: 525px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            color: #FFFF00;
            height: -13px;
        }
        .auto-style7 {
            width: 500px;
            height: 313px;
        }
        .auto-style8 {
            width: 534px;
            height: 300px;
        }
        .auto-style9 {
            width: 500px;
            height: 750px;
        }
        .auto-style10 {
            width: 533px;
            height: 300px;
        }
        .auto-style11 {
            width: 338px;
            height: 225px;
        }
        .auto-style12 {
            width: 500px;
            height: 333px;
        }
        .auto-style13 {
            width: 500px;
            height: 444px;
        }
        .auto-style14 {
            width: 100%;
            height: 3600px;
            margin-top: 0px;
        }
        .auto-style15 {
            height: 54px;
        }
        .auto-style16 {
            width: 100%;
            height: 834px;
        }
        .auto-style17 {
            width: 100%;
            height: 3579px;
        }
        .auto-style18 {
            height: 412px;
        }
    </style>
</asp:Content>
