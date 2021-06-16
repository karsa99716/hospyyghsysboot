package com.util;



import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;


public class Info {
	
	//public static String popheight = "alliframe.height=document.body.clientHeight+";
	public static String popheight = "alliframe.style.height=document.body.scrollHeight+";
	
	
	public static String daysBetween(String date1,String date2)  
    {  
    	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	Date now = null;
    	Date date = null;
    	try {
    	now = df.parse(date1);
    	date = df.parse(date2);
    	} catch (ParseException e) {
    	e.printStackTrace();
    	}

    	long l = now.getTime() - date.getTime();
    	long day = l / (24 * 60 * 60 * 1000);
    	long hour = (l / (60 * 60 * 1000) - day * 24);
    	long min = ((l / (60 * 1000)) - day * 24 * 60 - hour * 60);
    	long s = (l / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
    	String str = hour+"小时"+min+"分"+s+"秒";
    	return str;
    }  
	
	
    public static HashMap getUser(HttpServletRequest request)
    {
    	HashMap map = (HashMap)(request.getSession().getAttribute("admin")==null?request.getSession().getAttribute("user"):request.getSession().getAttribute("admin"));
        return map;
    }
	
	
	public static int getBetweenDayNumber(String dateA, String dateB) {
		long dayNumber = 0;
		//1小时=60分钟=3600秒=3600000
		long mins = 60L * 1000L;
		//long day= 24L * 60L * 60L * 1000L;计算天数之差
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		try {
		   Date d1 = df.parse(dateA);
		   Date d2 = df.parse(dateB);
		   dayNumber = (d2.getTime() - d1.getTime()) / mins;
		} catch (Exception e) {
		   e.printStackTrace();
		}
		return (int) dayNumber;
		}

	
	
	 

	public synchronized static String getID() {
		Random random = new Random();
		StringBuffer ret = new StringBuffer(20);
		String rand = String.valueOf(Math.abs(random.nextInt()));
		ret.append(getDateStr());
		ret.append(rand.substring(0,6));
		
		return ret.toString();
	} 
	
	



	
	public synchronized static String subStr(String source,int length) {
		if(source.length()>length)
		{
			source=source.substring(0,length)+"...";
		}
		
		return source;
	} 
	
	

	public static String getDateStr(){
		String dateString="";
		try{//yyyyMMddHHmmss
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date currentTime_1=new Date();
		dateString=formatter.format(currentTime_1);
		}catch(Exception e){
		     }
		 return dateString;
		 } 
	
	
	


	
	 public static String getUTFStr(String str) {
		 if(str==null){
			 return "";
		 }
		 
		 try {
			str =  new String(str.getBytes("ISO-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return str;
	 }
	 
	 public static String getGBKStr(String str) throws UnsupportedEncodingException{
		 if(str==null){
			 return "";
		 }
		 return  new String(str.getBytes("ISO-8859-1"),"GBK");
	 }
	 
	 public static String getGB2312Str(String str) throws UnsupportedEncodingException{
		 if(str==null){
			 return "";
		 }
		 return  new String(str.getBytes("ISO-8859-1"),"gb2312");
	 }

	 
	 /**
		 *得到多少天之后之前的日期��
		 * @param
		 * @param
		 * @return
		 */
		public static String getDay(String date,int day) {
			String b = date.substring(0,10);
			String c = b.substring(0,4);
			String d = b.substring(5,7);
			String f = b.substring(8,10);
			String aa = c+"/"+d+"/"+f;
			String a = "";
			DateFormat dateFormat =  DateFormat.getDateInstance(DateFormat.MEDIUM);
				GregorianCalendar grc=new GregorianCalendar();
				grc.setTime(new Date(aa));
	            grc.add(GregorianCalendar.DAY_OF_MONTH,day);
	            String resu = dateFormat.format(grc.getTime());
	        String t[]= resu.split("-");
	        String sesuu = "";
	        for(int i=0;i<t.length;i++)
	        {
	        	if(t[i].length()==1)
	        	{
	        		t[i]="0"+t[i];
	        	}
	        	sesuu += t[i]+"-";
	        }
	        
			return sesuu.substring(0,10);
		}
		

	    
	    
	    /**
	 	 * 计算两个时期之间的天数
	 	 * 
	 	 */
	    public static int dayToday(String DATE1, String DATE2) {
	       int i = 0;
	       if(DATE1.indexOf(" ")>-1)
	       DATE1 = DATE1.substring(0,DATE1.indexOf(" "));
	       if(DATE2.indexOf(" ")>-1)
	       DATE2 = DATE2.substring(0,DATE2.indexOf(" "));
	       
	       String[] d1 = DATE1.split("-");
	       if(d1[1].length()==1)
	       {
	    	   DATE1 = d1[0]+"-0"+d1[1];
	       }else{
	    	   DATE1 = d1[0]+"-"+d1[1];
	       }
	       
	       if(d1[2].length()==1)
	       {
	    	   DATE1 = DATE1+"-0"+d1[2];
	       }else{
	    	   DATE1 = DATE1+"-"+d1[2];
	       }
	       
	       String[] d2 = DATE2.split("-");
	       if(d2[1].length()==1)
	       {
	    	   DATE2 = d2[0]+"-0"+d2[1];
	       }else{
	    	   DATE2 = d2[0]+"-"+d2[1];
	       }
	       
	       if(d2[2].length()==1)
	       {
	    	   DATE2 = DATE2+"-0"+d2[2];
	       }else{
	    	   DATE2 = DATE2+"-"+d2[2];
	       }
	       
	       
	       for(int j=0;j<10000;j++)
	       {
	    	i=j;
	    	String gday = Info.getDay(DATE1, j);
	    	if(gday.equals(DATE2))
	    	{
	    		break;
	    	}
	       }
	        return i;
	    }
	    
	   
	    

	    /**
	 	 * 比较时间大小
	 	 * 
	 	 */
	    public static String compare_datezq(String DATE1, String DATE2) {
	       DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	        try {
	            Date dt1 = df.parse(DATE1);
	            Date dt2 = df.parse(DATE2);
	            if (dt1.getTime() > dt2.getTime()) {
	               
	                return "big";
	            } else if (dt1.getTime() < dt2.getTime()) {
	              
	                return "small";
	            } else {
	                return "den";
	            }
	        } catch (Exception exception) {
	            exception.printStackTrace();
	        }
	        return "den";
	    }
	    
	    /**
	 	 * 过滤html代码
	 	 * 
	 	 */
	    public static String filterStrIgnoreCase(String source, String from, String to){
	        String sourceLowcase=source.toLowerCase();
	        String sub1,sub2,subLowcase1,subLowcase2;
	        sub1=sub2=subLowcase1=subLowcase2="";
	        int start=0,end;
	        boolean done=true;
	        if(source==null) return null;
	        if(from==null||from.equals("")||to==null||to.equals("")) 
	         return source;
	        while(done){
	         start=sourceLowcase.indexOf(from,start);
	         if(start==-1) {
	          break;
	         }
	         subLowcase1=sourceLowcase.substring(0,start);
	         sub1=source.substring(0,start);
	         end=sourceLowcase.indexOf(to,start);
	         if(end==-1){
	          end=sourceLowcase.indexOf("/>",start); 
	          if(end==-1) {
	           done=false;
	          }
	         }
	         else{
	          end=end+to.length();
	          subLowcase2=sourceLowcase.substring(end,source.length());
	          sub2=source.substring(end,source.length());
	          sourceLowcase=subLowcase1+subLowcase2;
	          source=sub1+sub2;
	         }
	         //System.out.println(start+" "+end);
	        }
	        return source;
	   }
	    
	   
	    public static void delPic(String path,String img)
		{
			 if(img!=null)
			 {
				 if(!img.equals(""))
				 {
			  File file1=new File(path + "/" + img); 
		       if(file1.exists() ) {
		    	file1.deleteOnExit();
		         file1.delete(); 
		       }}}
		}



	public static List<String> getDays(String startTime, String endTime) {

		// 返回的日期集合
		List<String> days = new ArrayList<String>();

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date start = dateFormat.parse(startTime);
			Date end = dateFormat.parse(endTime);

			Calendar tempStart = Calendar.getInstance();
			tempStart.setTime(start);

			Calendar tempEnd = Calendar.getInstance();
			tempEnd.setTime(end);
			tempEnd.add(Calendar.DATE, +1);// 日期加1(包含结束)
			while (tempStart.before(tempEnd)) {
				days.add(dateFormat.format(tempStart.getTime()));
				tempStart.add(Calendar.DAY_OF_YEAR, 1);
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return days;
	}
		
		
}

		

