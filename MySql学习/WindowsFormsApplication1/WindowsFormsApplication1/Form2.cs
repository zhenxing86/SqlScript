using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Windows.Forms;
using System.Xml;

namespace WindowsFormsApplication1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();


        }
        string sPostUrl = "";
        private void button1_Click(object sender, EventArgs e)
        {
            string strurl = "";
            strurl = "http://www.fandian99.com/PrintInterface/getorderlist/orderlist?userID="+textBox1.Text+"&tableID="+textBox2.Text;
            HttpWebRequest request = (HttpWebRequest)WebRequest.CreateDefault(
                             new Uri(string.Format(strurl)));

            //Log.PWriteLog("正在下载订单");
            request.Timeout = 5000;
            string result;
            try
            {
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                using (Stream stream = response.GetResponseStream())
                {
                    using (StreamReader sr = new StreamReader(stream))
                    {
                        result = sr.ReadToEnd();
                        
                        Byte[] bys = Encoding.UTF8.GetBytes(result);
                        Encoding ed = new UTF8Encoding(false);
                        Byte[] bys2 = Encoding.Convert(Encoding.UTF8, ed, bys);
                        string str = ed.GetString(bys2);
                     
                        if (result.Contains("error:"))
                        {
                            response.Close();

                            //  Log.PWriteLog("获取数据错误");
                        }
                        else if (result == "null")
                        {
                            response.Close();
                            // Log.PWriteLog("远程服务器返回空 !");

                        }
                        else
                        {

                            DataSet oDS = new DataSet();
                            using (StringReader xmlSR = new StringReader(str))
                            {
                                oDS.ReadXml(xmlSR, XmlReadMode.InferTypedSchema);
                                this.dataGridView1.DataSource = oDS.Tables[0];
                            }
                        }
                        //Log.PWriteLog("获取数据成功 !");
                    }
                }
                response.Close();
                //return true;
            }
            catch (Exception exs)
            {

                //bTaskComplite = true;
            }
            finally
            {

            }
        }


    }
}
