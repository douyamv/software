<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap 101 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/user_mana_style.css">
<link rel="stylesheet" type="text/css" href="css/user_mana_button.css">
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
			<a class="navbar-brand" href="#"> 
			<span class="glyphicon glyphicon-leaf"> </span> 
			<span style="color:#E6DBC4 ;font-size:18px;">Njust</span>
			<span style="color:#e2e2e2;font-size:18px;">����ƽ̨</span>
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

	<!--������������-->
	<div>
	<div class="right">
    	<h2 align="center"><span>�˵�</span> </h2>
          <ul>
            <li><a href="#"> ��ҳ</a></li>
            <li ><a href="UserList.action?page=1" >�û��б�</a></li>
            <li><a href="user_mana_psword.jsp" style="color: rgb(28, 108, 122);">�޸�����</a></li>
            <li> <a href="manlogout.action">ע��</a></li>
            
          </ul>
    </div>
    <div class="psword">
    <form action="mpsword.action" method="post">
    	<div class="container_input" style="margin-top: 50px;">
    		<label for="psword">�����룺</label>
    		<input id="psword" type="password" placeholder="������" name="oldpassword">
    	</div>
    	<div class="container_input">
    		<label for="newpsword1">�����룺</label>
    		<input id="newpsword1" type="password" placeholder="������" name="newpassword1">
    	</div>
    	<div class="container_input">
    		<label for="newpsword2">ȷ�����룺</label>
    		<input id="newpsword2" type="password" placeholder="ȷ������"  name="newpassword2">
    	</div>
    	<input id="queding" class="btn btn-primary" type="submit" value="ȷ��" style="margin-left: 200px;margin-top: 50px;width: 100px;">
    	<input id="quxiao" class="btn btn-primary" type="reset" value="ȡ��" style="margin-left: 100px;margin-top: 50px;width: 100px;">
    </form>
    </div>
    
  </div>
	</div>

<!--������������-->
	<div id="footer">
		<p>
			&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a
				href="#">NJust������Ŀ����</a>
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
  		$("#queding").mousedown(function(){
  			
	    	$(this).addClass("bdown");    	
	    });
	    $("#quxiao").mousedown(function(){
  			
	    	$(this).addClass("bdown");    	
	    });
	    $("#quxiao").mouseup(function(){
	    	$(this).removeClass("bdown");
	    });
  	});
  </script>
</body>
</html>