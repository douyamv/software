<%@ page language="java" import="java.util.*" pageEncoding="GBK" contentType="text/html;charset=GBK"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>ע��</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" href="css/form5.css" type="text/css" media="screen" title="no title" />

  </head>
  <body>
   
			
			<div id="wrapper">
				<div id="register" class="form animate">
					<form action="userregister.action" method="post" autocomplete="on">
						<h1><span style="font-size: 12px;">ע��</span></h1>
						<div>
							<label for="username" class="uname" >�û���</label>
							<input type="text" name="username" placeholder="�������û���" required="required"  id="usernamesignup" />
						</div>			
						<div>
							<label for="password1" class="youpasswd" >��¼����</label>
							<input type="password" name="password1" required="required" placeholder="����������" id="passwordsignup" />
						</div>	
						<div>
							<label for="password2"  class="youpasswd">ȷ������</label>
							<input type="password" name="password2" required="required" placeholder="�ٴ���������" id="passwordsignup_confirm" />
						</div>	
						<div class="signin button">
							<input type="submit" value="ע��" />
						</div>	 	
						<div class="change_link">
							�Ѿ����˺��� �� <a href="login.jsp" class="to_register">������¼��</a>
						</div>
					</form>
				</div>
				
				
				
			</div>

  </body>
</html>
