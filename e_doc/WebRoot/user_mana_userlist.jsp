<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">  
<title>Bootstrap 101 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/user_mana_style.css">
<link rel="stylesheet" type="text/css" href="css/user_mana_button.css">
<link href="css/tableList.css" rel="stylesheet" media="screen">	
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

<style>
.universal_background {
	background: rgba(255, 255, 255, 0.5);
}

.headtitle {
	font-weight: bold;
	font-size: 18px;
	color: #e2e2e2;
}

.headtitle:hover {
	color: #ffffff;
}
</style>
</head>
<body
	style="background:#563d7c;background: url('images/seamless_polygon.jpg') repeat fixed center top #DFDFDF;}">
	<nav class="navbar navbar-default " role="navigation"
		style="background:#563d7c">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header col-md-offset-2">
			<a class="navbar-brand" href="#"> <span
				class="glyphicon glyphicon-leaf"> </span> <span
				style="color:#F7E66A ;font-size:24px;">Njust</span><span
				style="color:#fff;font-size:24px;">����ƽ̨</span>
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse col-md-offset-5"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav "
				style="font-weight:bold;font-size:18px;color:#0">
				<form class="navbar-form navbar-left form-inline" role="search">
					<div class="form-group form-inline">
						<input type="text" class=" input-sm"
							style="background:#e2e2e2;border:0px" placeholder="����">
						<button type="submit" class="btn btn-link">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>

				</form>
				<li><a href="home.html"><span class="headtitle ">��ҳ</span>
				</a>
				</li>
				<li><a href="#"><span class="headtitle">����</span>
				</a>
				</li>
				<li><a href="post.html"><span class="headtitle">����</span>
				</a>
				</li>
				<li><a href="#" data-toggle="modal" data-target="#login"><span
						class="headtitle">�û�����</span>
				</a>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<!--�����������-->

	<div class="right">
    	<h2 align="center"><span>�˵�</span> </h2>
          <ul>
            <li><a href="#"> ��ҳ</a></li>
            <li ><a href="UserList.action?page=1" style="color: rgb(28, 108, 122);">�û��б�</a></li>
            <li><a href="user_mana_psword.jsp" >�޸�����</a></li>
            <li> <a href="manlogout.action">ע��</a></li>
            
          </ul>
    </div>
    <div class="userlist">
		<center><h1>�û��б�</h1></center>
		<form name="form1" action="delAndModUser.action" method="post" onsubmit="return listState();">
		<table class="table table-bordered">
			<tr >
			    <th>ѡ��</th><th>�û���</th><th>����ֵ</th><th>�ȼ�</th>
			</tr>
			<s:iterator value="pageBean.list" status="st">
				<tr <s:if test="#st.odd"> class="warning"</s:if> <s:else> class="info"</s:else>>
					<td><input style="width: 20;" type="checkbox" name="choice" value="<s:property value="username" />"></td>
					<td><s:property value="username" /></td>
					<td><s:property value="experience" /></td>
					<td><s:property value="rank" /></td>
				</tr>
			</s:iterator>
		</table>
    	<button id="tianjia" class="btn  btn-primary" style="margin-left: 100px;margin-top: 50px;width:100px;" type="button"><span class="glyphicon glyphicon-plus"  ></span>���</button>
        <button id="xiugai" class="btn  btn-primary" style="margin-left: 100px;margin-top: 50px;width:100px;" type="submit" onclick="Modify()"><span class="glyphicon glyphicon-edit"  ></span>�޸�</button>
        <button id="shanchu" class="btn  btn-primary" style="margin-left: 100px;margin-top: 50px;width:100px;" type="submit" onclick="ProDelete()" ><span class="glyphicon glyphicon-trash"  ></span>ɾ��</button>
        <input type="hidden" name="tag"/>
      </form>
      <center>
		 ��<s:property value="pageBean.allRow" />	����¼
		 ��<s:property value="pageBean.totalPage"/>ҳ 
		 ��ǰ��<s:property value="pageBean.currentPage" />ҳ<br /><br>
		<s:if test="%{pageBean.currentPage == 1}">  ��һҳ ��һҳ   </s:if>
		<s:else>
			<a href="UserList.action?page=1">��һҳ</a>
			<a href="UserList.action?page=<s:property value="%{pageBean.currentPage-1}"/> ">��һҳ</a>
		</s:else>
		<s:if test="%{pageBean.currentPage != pageBean.totalPage}">
			<a href="UserList.action?page=<s:property value="%{pageBean.currentPage+1}"/> ">��һҳ</a>
			<a href="UserList.action?page=<s:property value="pageBean.totalPage"/> ">���һҳ</a>
		</s:if>
		<s:else> ��һҳ  ���һҳ  </s:else>
      </center>
    </div>
  <div id="tianjiauser" class="white_content">
  <form action="adduser.action" method="post">
  		<div class="container_input" style="margin-top: 50px;">
    		<label for="uername">�û�����</label>
    		<input id="username" type="text" placeholder="�û���" name="username">
    	</div>
    	<div class="container_input" style="margin-top: 50px;" >
    		<label for="psword1">���룺</label>
    		<input id="psword1" type="password" placeholder="����" name="password1">
    	</div>
    	<div class="container_input" style="margin-top: 50px;">
    		<label for="psword2">ȷ�����룺</label>
    		<input id="psword2" type="password" placeholder="ȷ������" name="password2">
    	</div>
    	<input id="tqueding" class="btn  btn-primary" type="submit" value="ȷ��" style="margin-left: 150px;margin-top: 50px;width:100px;">
    	<input id="tquxiao" class="btn  btn-primary" type="reset" value="ȡ��" style="margin-left: 100px;margin-top: 50px;width:100px;">
  </form>
  </div>
  <div id="xiugaiuser" class="white_content">
  
  </div>
  <div id="fade" class="black_overlay"></div>




	<div id="footer">
		<p>
			&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a
				href="#">NJust�����Ŀ����</a>
		</p>
	</div>

	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-signin ">
			<div class="modal-dialog" style="width:400px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" backdrop="false">&times;</button>
						<h4 class="modal-title" id="myModalLabel">����</h4>
					</div>
					<div class="modal-body ">

						<h2 class="form-signin-heading">�����</h2>

						<input type="text" class="form-control" placeholder="�û���"
							autofocus=""> <br /> <input type="password"
							class="form-control" placeholder="����"> <label
							class="checkbox"> <input type="checkbox"
							value="remember-me">��ס�� </label> <a data-toggle="modal"
							data-target="#register">û���˺ţ�ע��</a>
					</div>
					<div class="modal-footer">
						<button class="btn btn-lg btn-primary " type="submit">����</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</form>
	</div>
	<!-- /.modal -->
	<div class="modal fade" id="register" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<form class="form-signin ">
			<div class="modal-dialog" style="width:400px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true" backdrop="false">&times;</button>
						<h4 class="modal-title" id="myModalLabel">ע��</h4>
					</div>
					<div class="modal-body ">

						<h2 class="form-signin-heading">ע��</h2>

						<input type="text" class="form-control" placeholder="�û���"
							autofocus=""> <br /> <input type="password"
							class="form-control" placeholder="����"> <br /> <input
							type="password" class="form-control" placeholder="ȷ������">



					</div>
					<div class="modal-footer">
						<button class="btn btn-lg btn-primary " type="submit">ע��</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</form>
	</div>
	<!-- /.modal -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.8.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
  	$(document).ready(function(){
  		$("#fade").css("height",Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight));
    	$("#fade").css("width",document.documentElement.scrollWidth);
  		$("#tianjia").mousedown(function(){
  			
	    	 	
	    });
	    $("#tianjia").mouseup(function(){
	    	
	    	$("#fade").css("display","block");
	    	$("#tianjiauser").slideDown(800);
	    });
	    $("#xiugai").mousedown(function(){
  			
	    	  	
	    });
	    $("#xiugai").mouseup(function(){
	    	
	    	$("#fade").css("display","block");
	    	$("#xiugaiuser").slideDown(800);
	    });
	    $("#shanchu").mousedown(function(){
  			
	    	    	
	    });
	    $("#shanchu").mouseup(function(){
	    	
	    });
	    $("#tqueding").mousedown(function(){
  			
	    	  	
	    });
	    $("#tquxiao").mousedown(function(){
  			
	    	    	
	    });
	    $("#tquxiao").mouseup(function(){
	    	
	    	$("#tianjiauser").hide();   	
	    	$("#fade").css("display","none");
	    });
	    $("#xqueding").mousedown(function(){
  			
	    	    	
	    });
	    $("#xquxiao").mousedown(function(){
  			
	    	    	
	    });
	    $("#xquxiao").mouseup(function(){
	    	
	    	$("#tianjiauser").hide();   	
	    	$("#fade").css("display","none");
	    });
  	});
  </script>
  
  <script type="text/javascript">
       var t;
	   function Modify() {
		  var b = document.getElementsByName("choice");
		  var fg = false;
		  //�ж��Ƿ�ѡ�ж�ѡ��ť
		  var count=0;
		  for ( var i = 0; i < b.length; i++) {
			if (b[i].checked) {
				count++;
			 }
		  }
		  if(count==0){
			 t=false;
			 alert("��ѡ��Ҫ�޸ĵ��û�!");	
		  }
		  else if(count>1){
			  t=false;
			  alert("һ��ֻ���޸�һ���û�!");	
		  }
		  else{
			  var tag =1;t=true;
		      form1.tag.value = tag;		
		  }
	   }
	   function ProDelete() {
		   var b = document.getElementsByName("choice");
		   var fg = false;
		   //�ж��Ƿ�ѡ�ж�ѡ��ť
		   for ( var i = 0; i < b.length; i++) {
			   if (b[i].checked) {
				  fg = true; break;
			    }
		   }
		   if (fg) {
			  if (confirm("ȷ��ɾ��?")) {
				  var tag = 2;t=true;
				  form1.tag.value = tag;
			  }
		   } 
		   else {
		    	t=false; alert("��ѡ��Ҫɾ�����û�!");
		   }
	   }
	   function listState(){
		   if(t) return true;
		   else return false;
	   }	   
  </script> 
</body>
</html>