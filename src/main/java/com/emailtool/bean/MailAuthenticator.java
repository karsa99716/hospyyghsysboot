/**
 * @Description: 
 *
 * @Title: MailAuthenticator.java
 * @Package com.joyce.bean
 * @Copyright: Copyright (c) 2014
 *
 * @author Comsys-LZP
 * @date 2014-5-28 上午08:59:11
 * @version V2.0
 */
package com.emailtool.bean;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * @Description: 邮箱登录类
 *
 * @ClassName: MailAuthenticator
 * @Copyright: Copyright (c) 2014
 *
 * @author Comsys-LZP
 * @date 2014-5-28 上午08:59:11
 * @version V2.0
 */
public class MailAuthenticator extends Authenticator {
	/**
     * 用户名（登录邮箱）
     */
    private String username;
    
    /**
     * 密码
     */
    private String password;

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @param username
	 * @param password
	 */
	public MailAuthenticator(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
	    return new PasswordAuthentication(username, password);
    }
}
