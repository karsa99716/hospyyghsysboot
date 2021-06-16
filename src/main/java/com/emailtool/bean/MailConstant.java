package com.emailtool.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description: 邮件发送常量类
 *
 * @ClassName: MailConstant
 * @Copyright: Copyright (c) 2014
 *
 * @author Comsys-LZP
 * @date 2014-5-28 上午11:01:16
 * @version V2.0
 */
public class MailConstant {
	public static final String MAIL_USER = "18162602385@163.com"; //lzp@hupu.net
	public static final String MAIL_PWD = "xm987654321";//hupu0075
	public static final boolean MAIL_IFDEBUG = true;
	public static final String MAIL_CONTENT_CHARSET = "text/html;charset=utf-8"; 
	public static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒 E");
	public static final String MAIL_TITLE = "" + sdf.format(new Date());//邮件标题
	public static String getMailContent(String content){
		StringBuffer sb = new StringBuffer();
		sb.append("<div style='width:1024px;height:auto;margin:0px auto;background-color:#66CCFF;font-size:14px;font-family:微软雅黑;border-radius:5px;padding:5px;'><center><h1>");
		sb.append("</h1></center><div style='margin-left:20px;margin-bottom:10px;'><b>您好！</b><br/><br/>");
		sb.append("&nbsp;&nbsp;&nbsp;&nbsp;<b></b>"+content);		
		sb.append("</div></div>");
		return sb.toString();
	}
}
