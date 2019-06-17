using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using System.Net;
using System.IO;
using System.Data;



class testencode
{
    public static string sPostUrl = "http://www.fandian99.com/PrintInterface/API/response";//pos地址

    public Boolean Login(string _userid, string _password)
    {
        TransFormat objformat;

        //构建poscontent
        Hashtable ht = new Hashtable();
        ht.Add("user", _userid);
        ht.Add("password", _password);
        ht.Add("action", "check");
        ht.Add("module", "login");
        Des coder = new Des();
        //时间戳
        long myTS = 0L;
        //加密
        string connentEnCode = coder.EnCode(HashtableToJson(ht), out myTS);

        objformat.TS = myTS + "";
        objformat.PostContent = connentEnCode;
        objformat.Post_extra = "";

        string sRequesturl = PBuildRequestpara(objformat);
        //pos数据
        Retry:
        HttpWebRequest request = (HttpWebRequest)WebRequest.CreateDefault(
        new Uri(sPostUrl));
        request.UserAgent = "fandian99 print tools";//协议标头  
        request.Timeout = 5000;
        byte[] readbytes = Encoding.ASCII.GetBytes(sRequesturl);
        request.Method = "POST";
        request.ContentType = "application/x-www-form-urlencoded";
        request.ContentLength = readbytes.Length;
        string responseData = "";
        try
        {
            using (Stream reqStream = request.GetRequestStream())
            {
                reqStream.Write(readbytes, 0, readbytes.Length);
                reqStream.Close();
            }
            DataSet ds = new DataSet();
            string token, iID, iLoginID;
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                {
                    responseData = reader.ReadToEnd().ToString();
                    //处理函数
                    //去除unicode字符
                    Byte[] bys = Encoding.UTF8.GetBytes(responseData);
                    Encoding ed = new UTF8Encoding(false);
                    Byte[] bys2 = Encoding.Convert(Encoding.UTF8, ed, bys);
                    string str = ed.GetString(bys2);
                    using (StringReader xmlSR = new StringReader(str))
                    {
                        ds.ReadXml(xmlSR, XmlReadMode.InferTypedSchema);
                        if (ds.Tables.Count > 0)
                        {
                            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                            {
                                token = ds.Tables[0].Rows[0]["TOKEN"].ToString();
                                //用户ID
                                iID = ds.Tables[0].Rows[0]["userID"].ToString();
                                //收款员ID/登录人ID
                                iLoginID = ds.Tables[0].Rows[0]["LoginID"].ToString();
                                return true;
                            }
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            if (System.Windows.Forms.MessageBox.Show("连接服务器失败,是否重试", "消息", System.Windows.Forms.MessageBoxButtons.RetryCancel) == System.Windows.Forms.DialogResult.Retry)
            {
                goto Retry;
            }
        }
        finally
        {
        }
        return false;
    }

    public static string PBuildRequestpara(TransFormat _objTransFormat)
    {
        string res = "";
        //res = _sUrl;
        res += @"ts=" + _objTransFormat.TS
         + "&post_content=" + _objTransFormat.PostContent
         + "&post_extra=" + (_objTransFormat.Post_extra == "" ? "null" : _objTransFormat.Post_extra);
        return res;
    }

    public static string HashtableToJson(Hashtable hr, int readcount = 0)
    {
        string json = "{";
        int i = 1;
        foreach (DictionaryEntry row in hr)
        {
            try
            {
                string key = "\"" + row.Key + "\":";
                if (row.Value is Hashtable)
                {
                    Hashtable t = (Hashtable)row.Value;
                    if (t.Count > 0)
                    {
                        json += key + HashtableToJson(t, readcount++) + ",";
                    }
                    else
                    {
                        json += key + "{},";
                    }
                }
                else
                {
                    //对于json结尾的处理有不一样。
                    if (hr.Count > i)
                    {
                        string value = "\"" + row.Value.ToString() + "\",";
                        json += key + value;
                    }
                    else
                    {
                        string value = "\"" + row.Value.ToString() + "\"";
                        json += key + value;
                    }
                }
                i++;
            }
            catch (Exception error)
            {
                json = error.Message;
            }
        }

        json = json + "}";
        return json;
        //return hr.Count.ToString();
    }
}

/// <summary>
/// 接口参数结构
/// </summary>
public struct TransFormat
{
    /// <summary>
    /// 时间戳
    /// </summary>
    public string TS;
    /// <summary>
    /// 参数内容
    /// </summary>
    public string PostContent;
    /// <summary>
    /// 附加内容
    /// </summary>
    public string Post_extra;

}

