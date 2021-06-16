<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%
String path = request.getContextPath();
%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<%
    
    String newFile1Name=null;
    String file_name=null;
    
    

    /*获取保存路径这里配置的是我们项目服务器存储路径*/
    String saveurl = request.getSession().getServletContext().getRealPath("upload");
    String tFileName = "";
    String applyName = "";
    String description = "";
    if(null == saveurl||"".equals(saveurl)){
    	System.out.println("保存路径不能为空！");
    }else{
    	//String[] tDate = mDate.split("-");
    	/*拼接路径*/
    	//for(int i = 0;i<tDate.length;i++){
    	//	path = path +"/"+tDate[i];
    	//}
    	//System.out.println("服务器存储路径："+saveurl);
    	File newFile = new File(saveurl);
    	//System.out.println("saveurl======================="+saveurl);
    	 if (!newFile.exists()&& !newFile .isDirectory()) { // 如果日期文件夹不存在,则创建					   
    		 newFile.mkdirs();
    	} 
    	 DiskFileUpload fu = new DiskFileUpload();
    	//设置阀值大小
        //不设置的话，默认10k
        //超过这个阀值，FileItem将直接写入到磁盘
    	fu.setSizeThreshold(1024*10);
    	fu.setRepositoryPath(saveurl);
    	fu.setHeaderEncoding("UTF-8");
    	try{
    		List items = fu.parseRequest(request);
    		Iterator iter = items.iterator();
    		while (iter.hasNext()){
    			FileItem item = (FileItem) iter.next();
    			if(item.isFormField()){
    				//表单信息
    				String tName = item.getFieldName();
    				if("applyName".equals(tName)){
    					applyName = new String(item.getString().getBytes("iso-8859-1"),"GBK");
    				}else if ("description".equals(tName)){
    					description = new String(item.getString().getBytes("iso-8859-1"),"GBK");
    				}
    			}
    			if(!item.isFormField()){
    				//附件信息
    				//获取文件名称
    				tFileName = item.getName();
    				//System.out.println("完整文件名："+tFileName);
    				//String tContent = new String(item.getString().getBytes("iso-8859-1"),"UTF-8");
    				//System.out.println("文件内容为："+tContent);
    				if(tFileName.indexOf("\\")>0){
    					String[] tempArr = tFileName.split("\\\\");
    					//获取截取后的文件名
    					tFileName = tempArr[tempArr.length-1];
    					//System.out.println("截取后文件名："+tFileName);
    					
    				}
    				//保存文件
    				newFile1Name=new Date().getTime()+tFileName.substring(tFileName.indexOf("."));
    				item.write(new File(saveurl +"/"+ newFile1Name));
    			}
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    		System.out.println("upload file error ...");
    		//content = "上载文件出现异常!";
    		//flagStr = "Fail";
    		return;
    	}
    	//System.out.println("上传文件名称："+tFileName); 

    }
%>

<script language="javascript">

    var str=location.toString()
    var Result=((((str.split('?'))[1]).split('='))[1]);
	//window.opener.Form1(Result).focus();	
	//window.parent.document.getElementById(Result).value="upload/<%= newFile1Name%>";	
	window.parent.document.getElementById(Result).value="<%= newFile1Name%>";					
    
	//window.opener=null;
	document.write("上传成功");
    //window.close();
    parent.layer.closeAll();


</script> 