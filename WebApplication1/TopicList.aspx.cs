using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/**
 *  [TopicId]       INT           IDENTITY (1, 1) NOT NULL,
    [UserLoginName] VARCHAR (50)  NULL,
    [TopicTitle]    VARCHAR (MAX) NULL,
    [TopicContent]  VARCHAR (MAX) NULL,
    [CreateTime]    TIME (7)      NULL,
    [ip]            VARCHAR (50)  NULL,
 * 
 * 
 * 
 * **/


namespace WebApplication1
{
    public partial class TopicList : System.Web.UI.Page
    {
        String topicId = null;
        String neirong = null;
        String topicName = null;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String islongin = Session["IsLogin"] + "";
            if (islongin.Equals("true"))
            {
                topicId = Request.QueryString["TopicId"];
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
                //身份0表示普通用户 身份1表示管理员
                string sele = "select * from Topic where TopicId ='" + topicId + "';";

                SqlCommand mycommand = new SqlCommand(sele, conn);
                string message = null;
                try
                {
                    conn.Open();
                    SqlDataReader dataReader = mycommand.ExecuteReader();
                    if (dataReader.Read())
                    {
                        topicName = dataReader[1].ToString();
                        String biaoti = "【" + dataReader[2].ToString() + "】  发帖人  " + topicName + "|" + dataReader[5].ToString() + "|" + dataReader[4].ToString();
                        Label4.Text = biaoti;

                        neirong = dataReader[3].ToString();
                        Label2.Text = neirong;

                    }
                    else
                    {
                        message = "读取失败！ ";
                    }
                }catch (Exception ept)
                {

                    message = sele + "未能查询到记录" + ept.ToString();
                }
                finally
                {
                    conn.Close();
                }
                Label3.Text = message;




                

            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           neirong = neirong +"<br/>"+ Session["UserName"]+"|"+DateTime.Now+"| 回复" + topicName+"<br/>"+TextBox1.Text;

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
            //身份0表示普通用户 身份1表示管理员
            string updt = "update  Topic  set TopicContent='"+neirong+ "' where TopicId='"+ topicId+"';";

            SqlCommand mycommand = new SqlCommand(updt, conn);
            string message = null;
            try
            {
                conn.Open();
                int dataReader = mycommand.ExecuteNonQuery();
                if (dataReader==1)
                {
                   message = "回复成功";

                }
                else
                {
                    message = "回复失败！ ";
                }

                // Response.Redirect("login.aspx");

            }
            catch (Exception ept)
            {

                message = updt + "出现错误：\n" + ept.ToString();
            }
            finally
            {
                conn.Close();
            }

            Label3.Text = message;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("hfTalk.aspx");
        }
    }
}