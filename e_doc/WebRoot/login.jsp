<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��¼</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/form5.css" type="text/css" media="screen" title="no title" charset="utf-8"/>
  </head>
  
<body>
    <div class="container">
		
		<div id="container_demo">
			
			<div id="wrapper">
				<div id="login" class="form animate">
					<form action="userlogin.action" method="post" autocomplete="on">
						<h1><span>��¼</span></h1>
						<div>
							<label for="username" class="uname" >�û���</label>
							<input type="text" id="username"  name="username" required="required" placeholder="�������û���"/>
						</div>
						<div>
							<label for="password" class="youpasswd" >����</label>
							<input type="password" name="password" required="required" placeholder="����������" id="password" />
						</div>			
							
						<div class="login button">
							<input type="submit" value="��¼" class="btn" />
						</div> 
						<div class="change_link">
							��û���˺� ? <a href="register.jsp"  class="to_register">�Ͽ���ע���</a>
						</div>
					</form>
				</div>
				
				
			</div>
		</div>
	</div>
  </body>
</html>
