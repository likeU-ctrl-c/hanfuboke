using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 *     [TopicId]       INT      IDENTITY (1, 1) NOT NULL,
    [UserLoginName] TEXT     NULL,
    [TopicTitle]    TEXT     NULL,
    [TopicContent]  TEXT     NULL,
    [CreateTime]    TIME (7) NULL,
    [ip]            TEXT     NULL,
    **/

namespace WebApplication1
{
    public partial class NewTopic : System.Web.UI.Page
    {
      String UserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            String islogin = Session["IsLogin"] + "";
            if (islogin.ToString().Equals("true"))
            {
               UserName = Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
               
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
                //身份0表示普通用户 身份1表示管理员
                string add = "insert into Topic(UserLoginName,TopicTitle,TopicContent,CreateTime,ip) values('"+UserName+"','"+ TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now.ToLongDateString() + "','127.0.0.1');" ;
                SqlCommand mycommand = new SqlCommand(add, conn);
                string message = null;
                try
                {
                    conn.Open();
                    int dataReader = mycommand.ExecuteNonQuery();
                    if (dataReader==1)
                    {

                    message = "发表成功";

                    }
                    else
                    {
                        message = "发表失败！ ";
                    }
                }
                catch (Exception ept)
                {

                    message = add + "插入数据库失败：" + ept.ToString();
                }
                finally
                {
                    conn.Close();
                }
                Label2.Text = message;






           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TopicList.aspx");
        }
    }
}
