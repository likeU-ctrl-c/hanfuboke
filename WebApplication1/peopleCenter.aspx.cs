using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class peopleCenter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String islogin = Session["IsLogin"] + "";
            if (islogin.ToString().Equals("true"))
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel2.Visible = false;//2是我上传的图片查看
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewTopic.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;//3是我发布的话题
            Panel4.Visible = true;//4是我要上传图片
            Panel2.Visible = false;//2是我上传的图片查看
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel2.Visible = false;//2是我上传的图片查看
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel2.Visible = true;//2是我上传的图片查看
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /**
             * SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
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


                [PictureId]      INT           IDENTITY (1, 1) NOT NULL,
    [UserLoginName]  VARCHAR (50)  NULL,
    [PictureTitle]   VARCHAR (50)  NULL,
    [PictureContent] VARCHAR (MAX) NULL,
    [CreateTime]     TIME (7)      NULL,
    [ip]             VARCHAR (50)  NULL,
    [PictureURL]     VARCHAR (MAX) NULL,
    [Picture]        IMAGE         NULL,
    PRIMARY KEY CLUSTERED ([PictureId] ASC)
    **/
            byte[] imageContent;
            imageContent = AddImg(FileUpload1, "image/pjpeg", 512000);
            String pictureTitle = TextBox1.Text;
            String pictureContent = TextBox2.Text;
            String UserName = Session["UserName"].ToString();
            String PictureURL = null;
            if (FileUpload1.HasFile) //判断是否存在文件
            {
                string FilePath = Server.MapPath("/image/"); //获取图像存的路径
                string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName); //获取文件的类型
                if (Extension != ".jpg") //判断是不是jpg格式，需要其他格式多加几个或者用字符处理方式都行
                    return;
                string NewFilePath = DateTime.Now.ToString("yyyyMMddHHmmss") + Extension; //重命名图片，也可以用图片原有的名字
                FileUpload1.SaveAs(FilePath + NewFilePath); //图片存到对应路径
                PictureURL = "/image/" + NewFilePath; //获取上传好的图片的路径
                                                               //将字符串存入数据库对应的字段即可
            }
            string connstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\test.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connstring);

           
            string cmd = "insert into[Picture]([UserLoginName],[PictureTitle],[PictureContent],[CreateTime],[ip],[PictureURL],[Picture]) " +
                "values('"+UserName+"','"+ pictureTitle + "','" + pictureContent + "','" + DateTime.Now + "','127.0.0.1','" + PictureURL + "','"+ imageContent + "')";
            SqlCommand mycommand = new SqlCommand(cmd, con);

            String message = null;


            try
            {
                con.Open();
                int hang = mycommand.ExecuteNonQuery();
                
                if (hang==1){
                    message = "插入数据库成功！";
                    
                }
                else
                {
                    message = "插入数据库失败！ ";
                }

                // Response.Redirect("login.aspx");

            }
            catch (Exception ept)
            {

                message = cmd + "未能插入记录" + ept.ToString();
            }
            finally
            {
                con.Close();
            }

            Label2.Text = message;
            Panel3.Visible = false;//3是我发布的话题
            Panel4.Visible = true;//4是我要上传图片
            Panel2.Visible = false;//2是我上传的图片查看

            //    SqlParameter prm = new SqlParameter("@image", SqlDbType.VarBinary, imageContent.Length, ParameterDirection.Input, false,
            //0, 0, null, DataRowVersion.Current, imageContent);
            //    SqlCommand dcmd = new SqlCommand(cmd, con);
            //    dcmd.Parameters.Add(prm);
            //    dcmd.ExecuteNonQuery();

        }
        public byte[] AddImg(System.Web.UI.WebControls.FileUpload inputimg, string ImageType, Int32 maxsize)

        {
            Int32 ImageSize;
            String strImageType;
            Stream ImageStream;
            strImageType = inputimg.PostedFile.ContentType;
            if (strImageType != ImageType)
            {
                Response.Write("<script>alert('图片类型为'" + strImageType + ")</script>");
            }
            ImageSize = inputimg.PostedFile.ContentLength;
            if (ImageSize > maxsize)
            {
                Response.Write("<script>alert('图片不得大于'" + maxsize + "k)</script>");
            }
            ImageStream = inputimg.PostedFile.InputStream;
            byte[] ImageContent = new byte[ImageSize];
            int imgstatus = ImageStream.Read(ImageContent, 0, ImageSize);
            return ImageContent;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel2.Visible = true;//2是我上传的图片查看
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel2.Visible = true;//2是我上传的图片查看
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel2.Visible = false;//2是我上传的图片查看
        }
    }
}