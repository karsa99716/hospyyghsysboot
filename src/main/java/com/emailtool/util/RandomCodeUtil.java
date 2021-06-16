/**
 * @Description: 
 *
 * @Title: RandomCodeUtil.java
 * @Package com.joyce.mail.util
 * @Copyright: Copyright (c) 2014
 *
 * @author Comsys-LZP
 * @date 2014-5-28 上午11:07:34
 * @version V2.0
 */
package com.emailtool.util;


/**
 * @Description: 随机码工具类
 * 
 * @ClassName: RandomCodeUtil
 * @Copyright: Copyright (c) 2014
 * 
 * @author Comsys-LZP
 * @date 2014-5-28 上午11:07:34
 * @version V2.0
 */
public class RandomCodeUtil {
	/**
	 * 随机码集合
	 */
	private static final String[] randCode = { "0", "1", "2", "3", "4", "5", "6",
			"7", "8", "9", "q", "w", "e", "r", "t", "y", "u", "i", "o", "p",
			"a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v",
			"b", "n", "m" };
	
	/**
	 * @Description: 产生指定长度的随机码
	 *
	 * @param codeLength
	 * @return
	 *
	 * @Title: RandomCodeUtil.java
	 * @Copyright: Copyright (c) 2014
	 *
	 * @author Comsys-LZP
	 * @date 2014-5-28 上午11:11:55
	 * @version V2.0
	 */
	public static String randomCode(Integer codeLength) throws Exception {
		try {
			StringBuffer code = new StringBuffer();
			if(null == codeLength || 0 == codeLength){
				codeLength = 4;
			}
			for (int i = 0; i < codeLength; i++) {
				code.append(randCode[(int)Math.floor(Math.random() * 36)]);
			}
			return code.toString();
		} catch (Exception e) {
			throw new RuntimeException("Random Code Error");
		}
	}
	
	/**
	 * @Description: 生成长度为4的随机码
	 *
	 * @return
	 * @throws Exception
	 *
	 * @Title: RandomCodeUtil.java
	 * @Copyright: Copyright (c) 2014
	 *
	 * @author Comsys-LZP
	 * @date 2014-5-28 下午01:19:33
	 * @version V2.0
	 */
	public static String randomCode() throws Exception{
		return randomCode(null);
	}
}
