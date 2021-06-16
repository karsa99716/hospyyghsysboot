<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>上传文件</title>
	<meta name="renderer" content="webkit">	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">	
	<meta name="apple-mobile-web-app-status-bar-style" content="black">	
	<meta name="apple-mobile-web-app-capable" content="yes">	
	<meta name="format-detection" content="telephone=no">
	<script type="text/javascript" src="/hospyyghsysboot/layer/jquery-2.0.3.min.js"></script>
	<script language="javascript">
        function check()
        {
            if(document.formAdd.fujian.value=="")
            {
                alert("请选择文件");
                return false;
            }
            return true;
        }



        function upload(){
            document.formAdd.fujian.click();
        }

        function assignment(){
        	document.formAdd.showurl.value = document.formAdd.fujian.value;
        }


        
    </script>
    
</head>
<body>
 <form action="<%=path%>/upload_re.jsp?Result=<%=request.getParameter("Result")%>" name="formAdd" method="post"  enctype="multipart/form-data">
           <input type="file" name="fujian"  id="fujian" onchange="assignment()" style="opacity: 0" onKeyDown="javascript:alert('此信息不能手动输入');return false;" /><br/>
           <input type="text" id="showurl" name="showurl" style="width: 260px;height: 35px;margin-right: 5px;margin-left: 30px;border:1px solid #CCCCCC;" class="filetext" />
           <input type="button" value="选择文件"  onclick="upload()" style="width: 100px;height: 40px;border:1px solid #CCCCCC;background: white;cursor: pointer;"/>
           <input type="submit" value="提交" onClick="return check()" style="width: 100px;height: 40px;border:1px solid #CCCCCC;background: white;margin-top: 20px;margin-left: 30px;"/>
</form>
</body>
</html>