<?php
error_reporting(0);
$id=$_GET['id'];
$username = $_SESSION['username'];

?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的主页</title>
<link href="css/demo.css" rel="stylesheet" type="text/css"  />
<link href="css/component.css" rel="stylesheet" type="text/css"  />
<link href="css/own.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php include("header.php");?>
<div class="main"><!--最外层-->
 <?PHP 
 include("../Connections/myconn.php");
 mysql_select_db("music");
 mysql_query('set names utf8');
 $sql="select * from user where username='".$id."'";
 $result=mysql_query($sql);
 $row=mysql_fetch_object($result)
 ?>
	<div class="information"><!--个人信息部分-->
    <form id="form2" name="form2" method="post" action="" enctype="multipart/form-data">
    	<div class="head-img">
        <div class="box"><img src="../images/userheaderimg/<?php echo $row->image;?>"/>
        <a href="#" onClick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><div class="bmbox">修改头像</div></a>
        </div>
        </div><!--头像-->
        
 <div id="light" class="white_content">
      <div align="right">
      <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">关闭</a>
      </div>
 <?PHP 
 $sql="select * from user where username='".$id."'";
 $result=mysql_query($sql);
 $row=mysql_fetch_object($result)
 ?>
	<div><!--上传头像部分-->
    <table class="table">
    <tr style="border:1px solid #CCC;">
        <td>上传头像</td>
      </tr>
      <tr style="border:1px solid #CCC;">
        <td align="right"><input name="myFile" type="file" value="<?php echo $row->image;?>" size="30"/></td>
      </tr>
      <tr style="border:1px solid #CCC;">
        <td><input type="submit" class="tj1" name="tj1" id="tj1" value="提交" /></td>
      </tr>
    </table>
    </div><!--上传头像部分-->
  </div>
  <div id="fade" class="black_overlay" style="display:none;"></div>
  </form>
 <form id="form1" name="form1" method="post" action="" enctype="multipart/form-data">
 
 		<div><h3 class="bigtext1"></h3></div>
        
    	<div class="container" style="padding-left: 150px;">
			<section class="content">
            <!-- 姓名-->
				<span class="input input--jiro">
					<input required="required" class="input__field input__field--jiro" type="text" id="input-10"  name="username" value="<?PHP echo $row->username;?>"/>
					<label class="input__label input__label--jiro" for="input-10">
						<span class="input__label-content input__label-content--jiro">姓名:</span>
					</label>
				</span>
                
                <!-- 性别-->
				<span class="input input--jiro">
                		<input required="required" class="input__field input__field--jiro" type="text" id="input-11" name="sex" value="<?PHP echo $row->sex;?>"/>
					<label class="input__label input__label--jiro" for="input-11">
						<span class="input__label-content input__label-content--jiro">性别:</span>
					</label>
				</span>
                		<br><br><br><br><br>
                <!--邮件 -->
				<span class="input input--jiro">
					<input required="required" class="input__field input__field--jiro" type="text" id="input-11"  /name="email" value="<?PHP echo $row->email;?>">
					<label class="input__label input__label--jiro" for="input-12">
						<span class="input__label-content input__label-content--jiro">邮件:</span>
					</label>
				</span>
                <!-- 收货地址-->
                <span class="input input--jiro">
					<input required="required" class="input__field input__field--jiro" type="text" id="input-12"   name="address" value="<?PHP echo $row->address;?>"/>
					<label class="input__label input__label--jiro" for="input-12">
						<span class="input__label-content input__label-content--jiro">收货地址:</span>
					</label>
				</span>
				<br><br><br><br><br>
                
                <!--签名-->
                <span class="input1 input--jiro">
					<input required="required" class="input__field input__field--jiro" type="text" id="input-12"  name="myself" value="<?PHP echo $row->myself;?>"/>
					<label class="input__label input__label--jiro" for="input-12">
						<span class="input__label-content input__label-content--jiro">我的签名:</span>
					</label>
				</span>
	
			</section>
			
		</div><!-- /container -->
        
        <div class="person-button"><!--按钮-->
        	<div class="person-cancel">
            	<button type="reset" class="bubbly-button">重置</button>
            </div> 
				
         	<div class="person-tj">
            	<input type="submit" name="tj" class="bubbly-button1" id="tj" value="提交" />
            </div>
   </div>  
         
        </div><!--部分信息--> 
     </form>   
    </div><!--个人信息部分-->
</div><!--最外层-->

<?php include("footer.php");?>

<script src="js/classie.js"></script>

</body>
</html>

<?PHP 
if(isset($_POST['tj']))
{
	$sql="update user set username='".$_POST['username']."',email='".$_POST['email']."',sex='".$_POST['sex']."',address='".$_POST['address']."',myself='".$_POST['myself']."' where username='".$id."'";
	$result=mysql_query($sql);
	if($result)
	{
		$name=$row->id;
		$sql="select * from user where id={$name}";
 		$result=mysql_query($sql);
		$row=mysql_fetch_array($result);
		$usname=$row['username'];//修改后的用户名
		if($result)
		{
			$sql="update collect set username='".$usname."' where username='".$id."'";
			$result=mysql_query($sql);
			if($result)
			{
				$sql="update intexchange set username='".$usname."' where username='".$id."'";
				$result=mysql_query($sql);
				if($result)
				{
					$sql="update opinion set username='".$usname."' where username='".$id."'";
					$result=mysql_query($sql);
						if($result)
						{
							$sql="update adpinglun set username='".$usname."' where username='".$id."'";
							$result=mysql_query($sql);
							if($result)
							{
								$sql="update adhuifu set username='".$usname."' where username='".$id."'";
								$result=mysql_query($sql);
								if($result)
								{
									$sql="update uspinglun set username='".$usname."' where username='".$id."'";
									$result=mysql_query($sql);
									if($result)
									{
										$sql="update ushuifu set username='".$usname."' where username='".$id."'";
										$result=mysql_query($sql);
										if($result)
										{
											$sql="update praise set username='".$usname."' where username='".$id."'";
											$result=mysql_query($sql);
											if($result)
											{
												$sql="update praise set plusername='".$usname."' where username='".$id."'";
												$result=mysql_query($sql);
												if($result)
												{
													$sql="update usarticle set username='".$usname."' where username='".$id."'";
													$result=mysql_query($sql);
													if($result)
													 {
														echo "<script>";
														echo "alert('修改成功！');";
														echo "location.href='person.php?nameid={$usname}'";//修改后的用户名
														echo "</script>";
													 }
													}
												}
											}
										}
									}
								}
							}
						}
					}
				
			}
		}
	else
	{
		echo "<script>";
		echo "alert('修改失败！');";
		echo "location.href='person.php'";
		echo "</script>";
	}
}
?>


<?PHP 
if(isset($_POST['tj1']))
{
	if($_FILES['myFile']['type']=="image/jpeg")				//判断文件格式是否为JPEG
		{
		 	if($_FILES['myFile']['error']>0)				//判断上传是否出错
				echo "错误：".$_FILES['myFile']['error'];		//输出错误信息
		 	else
		 	{
				$tmp_filename=$_FILES['myFile']['tmp_name'];		//临时文件名
				$filename=$_FILES['myFile']['name'];			//上传的文件名
				$dir=$_SERVER['DOCUMENT_ROOT']."/music/images/userheaderimg/";		//上传后文件的位置
				if(is_uploaded_file($tmp_filename))			//判断是否通过HTTP POST上传
				{
					//上传并移动文件
					move_uploaded_file($tmp_filename, "$dir$filename");	
				}
				
			}
		}
		else
		{
			echo "文件格式非JPEG图片！";
		}
	$sql="update user set image='".$filename."'  where username='".$id."'";
	$result=mysql_query($sql);
	if($result)
	{
		echo "<script>";
		echo "alert('修改成功！');";
		echo "location.href='person.php?id={$id}'";
		echo "</script>";
		}
	else
	{
		echo "<script>";
		echo "alert('修改失败！');";
		echo "</script>";
		}
	}
?>