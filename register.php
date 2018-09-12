<?php
session_start();
error_reporting(0);
?>
<!DOCTYPE html>
<html>
<head>
	<title>用户注册</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- PAGE LEVEL STYLES -->
    <link href="css/bootstrap-fileupload.min.css" rel="stylesheet" />
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray" background="images/templatemo-bg-1.jpg">
	<h1 class="margin-bottom-15" style="color: floralwhite;">注册账号</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" enctype="multipart/form-data" action="" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">用户名</label>
			            <input type="text" class="form-control" id="username" name="username" placeholder="不超过10个字符（数字、字母和下划线）" required="required" value="<?php echo $_SESSION['username'];?>">		            		            		            
			          </div>  
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
			            <input type="password" class="form-control" id="password" name="password" placeholder="6~16个数字" required="required" value="<?php echo $_SESSION['password'];?>">
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认密码</label>
			            <input type="password" class="form-control" id="password_confirm" name="password_confirm" placeholder="6~16个数字" required="required" value="<?php echo $_SESSION['password_confirm'];?>">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">邮箱</label>
			            <input type="email" class="form-control" id="email" name="email" placeholder="请输入您的邮箱，必填！" required="required" value="<?php echo $_SESSION['email'];?>">		            		            		            
			          </div>              
			        </div>			
			        
			        <div class="form-group">
                        
                        <div class="col-md-7">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="col-md-5">
                            	<label>头像预览</label>
                            	<div class="fileupload-preview thumbnail" style="width: 100px; height: 100px;"></div>
                            	</div>
                            	<div class="col-md-3" style="margin-top: 80px;">
                                <span class="btn btn-file btn-success">
                                <span class="fileupload-new">选择头像</span>
                                <span class="fileupload-exists">选择头像</span>
                                <input  type="file" name="myfile" required="required"/></span>
                            	</div> 
                            </div>
	                    </div>
                        <div class="col-md-5 templatemo-radio-group">
                        	<label for="sex" class="control-label">性别</label>
                        	<div>
				          	<label class="radio-inline">
			          			<input type="radio" name="sex" id="male" checked="" value="男"> 男
			          		</label>
			          		<label class="radio-inline">
			          			<input type="radio" name="sex" id="female" value="女"> 女
			          		</label>
			          		</div>
	                    </div>
                    </div>
                    <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="place" class="control-label">籍贯</label>
			            <select class="form-control" name="place">
                            <option>海口</option>
                            <option>成都</option>
                            <option>重庆</option>
                            <option>巴中</option>
                        </select>		            		            		            
			          </div>
			        </div>
			        <div class="form-group">
			        	<div class="col-md-2">		          	
			            	<h5>验证码:</h5>	            		            		            
			          </div>
			          <div class="col-md-6">		          	
			            <input type="text" class="form-control" id="yzm" name="yzm" placeholder="请输入验证码" required="required">		            		            		            
			          </div>
			          <div class="col-md-4">		          	
			            <img src="yzmimage.php" name="imageField" id="imageField" alt="看不清楚，换一张" align="absmiddle" style="cursor: pointer;" onClick="javascript:newgdcode(this,this.src);" />            		            		            
			          </div>
			        </div>
			        
			        <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox" name="ty" checked="checked">我同意 <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">服务协议</a> 和<a href="#">各种不平等条款.</a></label>
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="注册账号" name="submit" class="btn btn-info">
			            <a href="login.php" class="pull-right">登录</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">音悦网使用条款</h4>
	      </div>
	      <div class="modal-body" style="background-color: #FFFFFF;color: #000000;">
			<p>
			1　接受条款
			
			音悦网站（以下简称"音悦网"）根据以下服务条款为你提供服务。这些条款可由音悦网随时更新，且毋须另行通知。音悦网使用协议（以下简称“使用协议”）一旦发生变动，音悦网将在网页上公布修改内容。修改后的使用协议一旦在网页上公布即有效代替原来的使用协议。此外，当你使用音悦网特殊服务时，你和音悦网应遵守音悦网随时公布的与该服务相关的指引和规则。前述所有的指引和规则，均构成本使用协议的一部分。
			
			落你在使用音悦网提供的各项服务之前，应仔细阅读本使用协议。如你不同意本使用协议及/或随时对其的修改，请你立即停止使用音悦网网站所提供的全部服务；你一旦使用音悦网服务，即视为你已了解并完全同意本使用协议各项内容，包括音悦网对使用协议随时所做的任何修改，并成为音悦网用户（以下简称“用户”）。
			</p>
			<p>
			2　服务说明
			
			音悦网目前向用户提供如下服务：发表音乐心情；翻译和添加歌词；收藏及分享音乐期刊；在音悦网中发表评论；除非本使用协议另有其它明示规定，增加或强化目前本服务的任何新功能，包括所推出的新产品，均受到本使用协议之规范。你了解并同意，本服务仅依其当前所呈现的状况提供，对于任何用户信息或个人化设定之时效、删除、传递错误、未予储存或其它任何问题，音悦网均不承担任何责任。音悦网保留不经事先通知为维修保养、升级或其它目的暂停本服务任何部分的权利。
			</p>
			<p>
			3　遵守法律
			
			你同意遵守中华人民共和国相关法律法规的所有规定，并对以任何方式使用你的密码和你的帐号使用本服务的任何行为及其结果承担全部责任。如你的行为违反国家法律和法规的任何规定，有可能构成犯罪的，将被追究刑事责任，并由你承担全部法律责任。
			
			同时如果音悦网有理由认为你的任何行为，包括但不限于你的任何言论和其它行为违反或可能违反国家法律和法规的任何规定，音悦网可在任何时候不经任何事先通知终止向你提供服务。
			</p>
			<p>
			4　你的注册义务
			
			为了能使用本服务，你同意以下事项：依本服务注册提示请你填写正确的注册邮箱、密码和昵称，并确保今后更新的登陆邮箱、昵称、头像等资料的有效性和合法性。若你提供任何违法、不道德或音悦网认为不适合在音悦网上展示的资料；或者音悦网有理由怀疑你的资料属于程序或恶意操作，音悦网有权暂停或终止你的帐号，并拒绝你于现在和未来使用本服务之全部或任何部分。
			
			音悦网无须对任何用户的任何登记资料承担任何责任，包括但不限于鉴别、核实任何登记资料的真实性、正确性、完整性、适用性及/或是否为最新资料的责任。
			</p>
			<p>5　用户帐号、密码及安全
			
			完成本服务的注册程序并成功注册之后，你可使用你的Email和密码，登陆到你在音悦网的帐号（下称“帐号”）。保护你的帐号安全，是你的责任。
			
			你应对所有使用你的密码及帐号的活动负完全的责任。你同意：
			
			1）你的音悦网帐号遭到未获授权的使用，或者发生其它任何安全问题时，你将立即通知音悦网；
			
			2）如果你未保管好自己的帐号和密码，因此而产生的任何损失或损害，音悦网无法也不承担任何责任；
			
			3）每个用户都要对其帐号中的所有行为和事件负全责。如果你未保管好自己的帐号和密码而对你、音悦网或第三方造成的损害，你将负全部责任。
			</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" style="color: #000000;">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- PAGE LEVEL SCRIPTS -->
    <script src="js/bootstrap-fileupload.js"></script>
</body>
</html>
<script language="javascript">
    var yzm=document.getElementById("yzm"); 
	function newgdcode(obj,url) { 
		obj.src = url+ '?nowtime=' + new Date().getTime(); 
		//后面传递一个随机参数，否则在IE7和火狐下，不刷新图片 
		yzm.value="";
	} 
</script>
<?php
if(isset($_POST['submit']))
{  
	$username=trim($_POST['username']);
	$password=trim($_POST['password']);
	$email=trim($_POST['email']);
	$password_confirm=trim($_POST['password_confirm']);

	$token = md5($username.$password.$regtime); //创建用于激活识别码 
	$token_exptime = time()+60*60*24;//过期时间为24小时后 
	if($username==""||$password==""||$password_confirm=="")
	{
	   echo "<script>alert('密码或账号不能为空');</script>;";
	}
	else
	{ 		
		//2.将所有信息写入数据库
	 	include "Connections/myconn.php";
	 	mysql_select_db("music",$myconn);
	 	$sql="select *from user where username='".$username."'";
		$result=mysql_query($sql);
		if(mysql_num_rows($result)>0)
		{
			echo "<script>alert('账户已存在！');</script>;";
			exit;
		}
        $sql="select *from user where email='".$email."'";
        $result=mysql_query($sql);
        if(mysql_num_rows($result)>0)
        {
            echo "<script>alert('该邮箱已注册！');</script>;";
            exit;
        }
		else
		{
			$checkusername=preg_match('/^\w{1,10}$/',$username);//检查字符串是否在10个字符以内
			$checkpassword=preg_match('/^\d{6,16}$/',$password);//检查密码是否在6~16个数字之间
			$checkemail=preg_match('/^[a-zA-Z0-9_\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/',$email);
			if($checkusername)//preg_match()函数返回值为1，如果为1，则格式正确
			{
				if($checkpassword)
				{
					if(strcmp($password,$password_confirm)!=0)
					{
						echo "<script>alert('密码不一致');</script>;";
					}
				  else
					{
						if($checkemail)
						{
							if(strcasecmp($_POST['yzm'],$_SESSION['yzm'])!=0)
							{
								 echo "<script>alert('验证码不正确');</script>;";
							}
							else
							{
								//1.上传头像图片
								if($_FILES['myfile']['type']=="image/jpeg"||$_FILES['myfile']['type']=="image/png"||$_FILES['myfile']['type']=="image/pjpeg")				//判断文件格式是否为JPEG
								{
									if($_FILES['myfile']['error']>0)				//判断上传是否出错
										echo "错误：".$_FILES['myfile']['error'];		//输出错误信息
									else
									{
										$tmp_filename=$_FILES['myfile']['tmp_name'];		//临时文件名
										$filename=$_FILES['myfile']['name'];			//上传的文件名
										$dir=$_SERVER['DOCUMENT_ROOT']."/music/images/userheaderimg/";		//上传后文件的位置
										if(is_uploaded_file($tmp_filename))			//判断是否通过HTTP POST上传
										{
											//上传并移动文件
											if(move_uploaded_file($tmp_filename, $dir.$filename))
											{
												if(isset($_POST['ty']))
												{
													$sql="insert into user (username,userpassword,email,sex,place,image) values('".$_POST['username']."','".$_POST['password']."','".$_POST['email']."','".$_POST['sex']."','".$_POST['place']."','".$filename."');";
													$result=mysql_query($sql);
													if($result)
													{
														$_SESSION['username']=$username;
														include "email.php"; 
														echo "<script>alert('账号已注册，请验证邮箱后登录！');location.href='login.php';</script>;";
													}
													else
														echo "<script>alert('注册失败');</script>;";	
												}
												else
												{
													echo "<script>alert('您未同意协议，不能注册');</script>;";
												}
											}
											else
												echo "<script>alert('上传失败');</script>;";
										}
									}
								}
								else
								{
									echo "<script>alert('文件格式非图片');</script>;";
								}
							}
						}
						else
						{
							echo "<script>alert('email地址格式错误！');</script>;";
						}
					}
				}
				else
				{
					echo "<script>alert('密码格式错误！');</script>;";
				}
			}
			else
			{
				echo "<script>alert('用户名格式错误！');</script>;";
			}
		}	
	}
}
?>