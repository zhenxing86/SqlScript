using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Web;
using System.Collections;

    public class Des
    {

        /// <summary>
        /// 加密函数
        /// </summary>
        /// <param name="data">明文</param>
        /// <param name="Restimestamp">返回时间戳</param>
        /// <returns>返回加密后的函数</returns>
        public  string EnCode(string data,out long Restimestamp)
        {
            string res="" ;
            string key="" ;
            Restimestamp = 0;
            try
            {
                Restimestamp = timestamp();
               key= MakeSkey(Restimestamp);
               res = DESEnCode(data, key);
            }
            catch (Exception ex)
            {
                throw ex;
            }


            return res;
        }

        public long timestamp()
        {
            DateTime timeStamp = new DateTime(1970, 1, 1);  //得到1970年的时间戳
            long nowtime = (DateTime.UtcNow.Ticks - timeStamp.Ticks) / 10000000;
            return nowtime;
        }

        /// <summary>
        /// 解密函数
        /// </summary>
        /// <param name="data">密文</param>
        /// <param name="timestamp">时间戳</param>
        /// <returns>明文</returns>
        public  string DeCode(string data, long timestamp)
        {
            string res = "";
            string key = "";
            try
            {
                key = MakeSkey(timestamp);
                res = DESDeCode(data, key);
            }
            catch (Exception ex)
            {
                throw ex;
            }


            return res;

        }
         //加解密密钥  
        //private static string skey = "12345678";
        //初始化向量  
        private static byte[] DESIV = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF };

        
        /// <summary>
        /// 根据时间戳构造skey的函数，8位
        /// </summary>
        /// <param name="seed"></param>
        /// <returns></returns>
        private string MakeSkey(long seed)
        {
            string skey = "";
            long seed1 = seed / 400 + 3721;
            long seed2 = seed / 300 - 34567;
            //引入MD5算法
            long seed3 = seed1 ^ seed2;
            string seed4 = md5((seed1 & seed2).ToString());
            string seed5 = md5(md5(seed3.ToString()) + seed4);
            //由于MD5得到的是32位数字，每隔4个取1个字符，构成8位密钥
            string ts = "";
            for (int i = 0; i < seed5.Length; i++)
            {
                if (i % 4 == 0)
                {
                    ts += seed5.Substring(i, 1);
                }
            }
            skey = ts;
            return skey;
            //return seed5.ToString();
        }

        //MD5函数
        private string md5(string str)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "md5");
        }

        /// <summary>
        /// 加密函数
        /// </summary>
        /// <param name="pToEncrypt">明文</param>
        /// <param name="sKey">密匙</param>
        /// <returns>密文</returns>
        public static string DESEnCode(string pToEncrypt, string sKey)
        {
            //pToEncrypt = HttpContext.Current.Server.UrlEncode(pToEncrypt);
            pToEncrypt = System.Web.HttpUtility.UrlEncode(pToEncrypt);
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            byte[] inputByteArray = Encoding.GetEncoding("UTF-8").GetBytes(pToEncrypt);

            //建立加密对象的密钥和偏移量      
            //原文使用ASCIIEncoding.ASCII方法的GetBytes方法      
            //使得输入密码必须输入英文文本      
            des.Key = ASCIIEncoding.ASCII.GetBytes(sKey);
            des.IV = ASCIIEncoding.ASCII.GetBytes(sKey);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(), CryptoStreamMode.Write);

            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();

            StringBuilder ret = new StringBuilder();
            foreach (byte b in ms.ToArray())
            {
                ret.AppendFormat("{0:X2}", b);
            }
            ret.ToString();
            return ret.ToString();
        }

        /// <summary>  
        ///   解密函数
        /// </summary>  
        /// <param name="pToDecrypt"> 待解密的字符串</param>  
        /// <param name="sKey"> 解密密钥,要求为8字节,和加密密钥相同</param>  
        /// <returns>解密成功返回解密后的字符串，失败返源串</returns>  
        public static string DESDeCode(string pToDecrypt, string sKey)
        {
            //    HttpContext.Current.Response.Write(pToDecrypt + "<br>" + sKey);     
            //    HttpContext.Current.Response.End();     
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();

            byte[] inputByteArray = new byte[pToDecrypt.Length / 2];
            for (int x = 0; x < pToDecrypt.Length / 2; x++)
            {
                int i = (Convert.ToInt32(pToDecrypt.Substring(x * 2, 2), 16));
                inputByteArray[x] = (byte)i;
            }

            des.Key = ASCIIEncoding.ASCII.GetBytes(sKey);
            des.IV = ASCIIEncoding.ASCII.GetBytes(sKey);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();

            StringBuilder ret = new StringBuilder();

            //return HttpContext.Current.Server.UrlDecode(System.Text.Encoding.Default.GetString(ms.ToArray()));
            //pToEncrypt = System.Web.HttpUtility.UrlEncode(pToEncrypt);
            return System.Web.HttpUtility.UrlDecode(System.Text.Encoding.Default.GetString(ms.ToArray()));
        }
        /// <summary>
        /// 哈希table转json函数
        /// </summary>
        /// <param name="hr"></param>
        /// <param name="readcount"></param>
        /// <returns></returns>
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
    

