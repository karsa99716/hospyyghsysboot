/**
 * @Description: 
 *
 * @Title: SimpleMail.java
 * @Package com.joyce.bean
 * @Copyright: Copyright (c) 2014
 *
 * @author Comsys-LZP
 * @date 2014-5-28 上午09:06:51
 * @version V2.0
 */
package com.emailtool.bean;

/**
 * @Description:邮件信息类
 * 
 * @ClassName: SimpleMail
 * @Copyright: Copyright (c) 2014
 * 
 * @author Comsys-LZP
 * @date 2014-5-28 上午09:06:51
 * @version V2.0
 */
public class Mail {
	/**
	 * 主题
	 */
	private String subject;
	/**
	 * 内容
	 */
	private String content;

	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject
	 *            the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}


	
	
}
