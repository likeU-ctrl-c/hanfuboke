using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class zheCe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /**
         * 
         * CREATE TABLE [dbo].[User] (
                [UserId]        INT           IDENTITY (1, 1) NOT NULL,
                [UserLoginName] VARCHAR (50)  NULL,
                [UserName]      VARCHAR (50)  NULL,
                [Passworld]     VARCHAR (50)  NULL,
                [Address]       VARCHAR (50)  NULL,
                [Homepage]      VARCHAR (50)  NULL,
                [Email]         NVARCHAR (50) NULL,
                [shenfen]       NCHAR (10)    NULL,
                PRIMARY KEY CLUSTERED ([UserId] ASC)
         * */
        protected void Button1_Click(object senuder, EventArgs e)
        {
            if(TextBox7.Text==null||TextBox1.Text==""|| TextBox2.Text == ""|| TextBox3.Text==""|| TextBox4.Text == ""|| TextBox5.Text == ""|| TextBox6.Text == "")
            {
                Label1.Text = "信息填写不完整！！！！！！！！！！！！！！！";
            }
            else
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
                //身份0表示普通用户 身份1表示管理员
                 string insertstr = "insert into Users(UserLoginName,UserName,Passworld,Address,Homepage,Email,shenfen) values('" + TextBox1.Text + "','" + TextBox4.Text+ "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','"+"0"+ "')";
                 string sele = "select * from Users  where UserLoginName = '" + TextBox1.Text+"';";
                SqlCommand mycommand1 = new SqlCommand(sele, conn);

                SqlCommand mycommand = new SqlCommand(insertstr, conn);
                string message = null;
                try
                {
                    conn.Open();
                    SqlDataReader sql= mycommand1.ExecuteReader();
                    if (sql.Read())
                    {
                        message = "该用户已存在！";
                    }
                    else
                    {
                        conn.Close();
                        try
                        {
                            conn.Open();
                            mycommand.ExecuteNonQuery();
                            message = " -新记录已经插入；";
                            Response.Redirect("login.aspx");

                        }
                        catch (Exception ept)
                        {

                            message = insertstr + "未能插入记录" + ept.ToString();
                        }
                        finally
                        {
                            conn.Close();
                        }
                    }
                }
                catch (Exception ept) {
                    message = insertstr + "未能插入记录" + ept.ToString();
                }
                finally
                {
                    conn.Close();
                }
                
                Label1.Text = message;
            }
        }
    }
}