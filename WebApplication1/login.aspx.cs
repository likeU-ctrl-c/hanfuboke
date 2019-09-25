using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
 * CREATE TABLE [dbo].[Users] (
    [UserId]        INT          IDENTITY (1, 1) NOT NULL,
    [UserLoginName] VARCHAR (50) NULL,
    [UserName]      VARCHAR (50) NULL,
    [Passworld]     VARCHAR (50) NULL,
    [Address]       VARCHAR (50) NULL,
    [Homepage]      VARCHAR (50) NULL,
    [Email]         VARCHAR (50) NULL,
    [shenfen]       VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
 * 
 * /
 * **/

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("zheCe.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
            //身份0表示普通用户 身份1表示管理员
            string sele = "select * from Users where UserLoginName ='"+TextBox1.Text+"';";

            SqlCommand mycommand = new SqlCommand(sele, conn);
            string message = null;
            try
            {
                conn.Open();
               SqlDataReader dataReader= mycommand.ExecuteReader();
                if (dataReader.Read())
                {
                    
                    String Password = dataReader[3].ToString();
                    if (TextBox2.Text.Equals(Password))
                    {
                        Session["UserLoginName"] = dataReader[1].ToString();
                        Session["UserName"] = dataReader[2].ToString();
                        Session["shenfen"] = dataReader[7].ToString();
                        Session["IsLogin"] = "true";
                        message = "登录成功！ ";
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        message = "密码错误！ ";
                    }
                }
                else
                {
                    message = "该用户未注册！ ";
                }
               
               // Response.Redirect("login.aspx");

            }
            catch (Exception ept)
            {

                message = sele + "未能插入记录" + ept.ToString();
            }
            finally
            {
                conn.Close();
            }

             Label1.Text =  message;
            // Response.Redirect("index.aspx");
        }
    }
}
