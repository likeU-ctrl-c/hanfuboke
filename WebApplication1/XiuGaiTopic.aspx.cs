using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class XiuGaiTopic : System.Web.UI.Page
    {
        String topicId = null;
        String neirong = null;
        String topicName = null;

        protected void Page_Load(object sender, EventArgs e)
        {
              if (Session["islogin"].ToString().Equals("true"))
               {
                topicId = Request.QueryString["TopicId"];
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True");
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
                        String biaoti = "  发帖人  " + topicName + "|" + dataReader[5].ToString() + "|" + dataReader[4].ToString();
                        TextBox1.Text = dataReader[2].ToString();
                        neirong = dataReader[3].ToString();
                        TextBox2.Text = neirong;
                    }
                    else
                    {
                        message = "读取失败！ ";
                    }
                }
                catch (Exception ept)
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
   

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            string updt = "update  Topic  set TopicContent='" + TextBox2.Text + "',TopicTitle='"+TextBox1.Text+"' where TopicId='" + topicId + "';";

            SqlCommand mycommand = new SqlCommand(updt, conn);
            string message = null;
            try
            {
                conn.Open();
                int dataReader = mycommand.ExecuteNonQuery();
                if (dataReader == 1)
                {
                    message = "修改成功";

                }
                else
                {
                    message = "修改失败！ ";
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
            Response.Redirect("peopleCenter.aspx");
        }
    }
}