using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String UserName = Session["UserName"]+"";
            String shenfen = Session["shenfen"] + "";
            String islongin = Session["IsLogin"] + "";
            Label1.Text = "欢迎您，" + UserName+"|用户";
           // Label1.Text += shenfen.Equals(1+"");
            if (shenfen.Equals("1"))
            {
                Label1.Text = "欢迎您，" + UserName + "|管理员";
                HyperLink6.Visible = true;
            }
            if (islongin.Equals("true"))
            {
                Button1.Visible = true;
                Button2.Visible = false;
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}