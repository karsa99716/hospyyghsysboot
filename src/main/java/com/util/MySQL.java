package com.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

public class MySQL {
	public MySQL() {

	}

	public static void backup() throws IOException {

		String command="mysqldump -uroot -proot car>d:\\car.sql";
		Runtime.getRuntime().exec("cmd /c "+command);
	}

	public static void load() {
		try {

			String fPath = "d:/car.sql";
			Runtime rt = Runtime.getRuntime();
			// ���� mysql �� cmd:
			Process child = rt.exec("mysql -uroot -proot -Dfinance");
			OutputStream out = child.getOutputStream();// ����̨��������Ϣ��Ϊ�����
			String inStr;
			StringBuffer sb = new StringBuffer("");
			String outStr;
			BufferedReader br = new BufferedReader(new InputStreamReader(
					new FileInputStream(fPath), "utf8"));
			while ((inStr = br.readLine()) != null) {
				sb.append(inStr + "\r\n");
			}
			outStr = sb.toString();
			OutputStreamWriter writer = new OutputStreamWriter(out, "utf8");
			writer.write(outStr);
			writer.flush();
			// ����ǹر����������
			out.close();
			br.close();
			writer.close();
			System.out.println("/* Load OK! */");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) throws IOException {
		MySQL my = new MySQL();
		my.backup();
		
	}

}
