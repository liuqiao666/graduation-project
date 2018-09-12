﻿<?php 
error_reporting(0);
session_start();
$username = $_SESSION['username'];
$time = time();
$day = date("Y-m-d H:i:s",$time);
header("Content-Type: text/html; charset=utf-8");

 if($_SESSION['username'] == "")
	echo "<script type='text/javascript'>alert('您还未登录，请登录!');location.href='../login.php';</script>";   
 ?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户上传</title>
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="../admin/css/public.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../admin/js/jquery.min.js"></script>
<script type="text/javascript" src="../admin/js/global.js"></script>
</head>
<body>
<?php include("header.php");?>
<div class="mainBox" style="height:auto!important;height:550px;min-height:550px; margin-top: 60px;">
 <form action="" method="post" enctype="multipart/form-data">
     <table width="100%" border="0" cellpadding="10" cellspacing="6" class="tableBasic"  style="background-color: #FFFFFF;">
      <tr>
       <td width="50" align="center">文章编号</td>
       <td>
        <input type="text" name="articleid" value="" size="40" class="inpMain" placeholder="必填项，很重要！" required="required"/>
       </td>
      </tr>
      <tr>
       <td width="150" align="center">文章名称</td>
       <td>
        <input type="text" name="name" value="" size="80" class="inpMain" required="required"/>
       </td>
      </tr>
       <tr>
       <td align="center">音乐文件</td>
       <td>
        <input type="hidden" name="MAX_FILE_SIZE" value="100000000"> 
        <input id="test" class="inpMain" style="display: inline-block;" type="file"  name="file" required="required"/>
        <audio id="audio" controls autoplay="" style="display: none; "></audio> 
       <img src="../admin/images/icon_no.png"></td>
      </tr>
      <tr>
       <td align="center">音乐简单描述</td>
       <td>
        <input type="text" name="mdescribes" value="" size="50" class="inpMain" placeholder="字数最好不要超过20个字，谢谢！" required="required"/>
       </td>
      </tr>
      <tr>
       <td align="center">文章分类</td>
       <td>
        <select name="classes" required="required">
           <option value="未分类">未分类</option>
	       <option value="流行">流行</option>
	       <option value="摇滚">摇滚</option>
	       <option value="民谣">民谣</option>
	       <option value="爵士">爵士</option>
	       <option value="独立音乐">独立音乐</option>
	       <option value="原创">原创</option>
	       <option value="戏曲">戏曲</option>
	    </select>
       </td>
      </tr>
       <tr>
       <td align="center">文章缩略图</td>
       <td>
        <input type="file"  name="myfile" size="38" class="inpFlie" required="required"/>
        <img src="../admin/images/icon_no.png"></td>
       </tr>
       <tr>
       <td align="center" valign="top">文章描述</td>
       <td>
       <!-- KindEditor -->
        <link rel="stylesheet" href="../admin/js/kindeditor/themes/default/default.css" />
			<link rel="stylesheet" href="../admin/js/kindeditor/plugins/code/prettify.css" />
			<script charset="utf-8" src="../admin/js/kindeditor/kindeditor.js"></script>
			<script charset="utf-8" src="../admin/js/kindeditor/lang/zh_CN.js"></script>
			<script charset="utf-8" src="../admin/js/kindeditor/plugins/code/prettify.js"></script>
        <script>
				KindEditor.ready(function(K) {
					var editor1 = K.create('textarea[name="content"]', {
						cssPath : '../admin/js/kindeditor/plugins/code/prettify.css',
						uploadJson : '../admin/js/kindeditor/php/upload_json.php',
						fileManagerJson : '../admin/js/kindeditor/php/file_manager_json.php',
						allowFileManager : true,
						afterCreate : function() {
							var self = this;
							K.ctrl(document, 13, function() {
								self.sync();
								K('form[name=example]')[0].submit();
							});
							K.ctrl(self.edit.doc, 13, function() {
								self.sync();
								K('form[name=example]')[0].submit();
							});
						}
					});
					prettyPrint();
				});
			</script>
        <!-- /KindEditor -->
        <textarea id="content" name="content" style="width:780px;height:400px;" class="textArea"></textarea>
       </td>
      </tr>
       <td></td>
       <td>
        <input name="submit" class="btn" type="submit" value="提交" />
       </td>
      </tr>
    </table>
  </form>
</div>
</body>
 <script type="text/javascript">
 
 onload = function()
 {
   document.forms['action'].reset();
 }

 function douAction()
 {
     var frm = document.forms['action'];

     frm.elements['new_cat_id'].style.display = frm.elements['action'].value == 'category_move' ? '' : 'none';
 }
 
 </script>
<?php include("footer.php"); ?>
</body>
<script>
 //录音上传
$(function () {
    $("#test").change(function () {
        var objUrl = getObjectURL(this.files[0]);
        $("#audio").attr("src", objUrl);
        $("#audio")[0].pause();
        $("#audio").show();
        $("#mp3_submit").show()
        getTime();
       
    });
});
<!--获取mp3文件的时间 兼容浏览器-->
function getTime() {
    setTimeout(function () {
        var duration = $("#audio")[0].duration;
        if(isNaN(duration)){
            getTime();
        }
        else{
            console.info("该歌曲的总时间为："+$("#audio")[0].duration+"秒")
        }
    }, 10);
}
<!--把文件转换成可读URL-->
function getObjectURL(file) {
    var url = null;
    if (window.createObjectURL != undefined) { // basic
        url = window.createObjectURL(file);
    } else if (window.URL != undefined) { // mozilla(firefox)
        url = window.URL.createObjectURL(file);
    } else if (window.webkitURL != undefined) { // webkit or chrome
        url = window.webkitURL.createObjectURL(file);
    }
    return url;
   
}
</script>
</html>
<?php	
	if(isset($_POST['submit']))
	{
		$articleid=$_POST['articleid'];
		$name=$_POST['name'];
		$mdescribes=$_POST['mdescribes'];
		$classes=$_POST['classes'];
		$adescribes=$_POST['content'];
		$time=$day;
			
		include "../Connections/myconn.php";
	 	mysql_select_db("music",$myconn);
		$sql="select *from user where username='".$username."'";
		$result=mysql_query($sql);
		$row=mysql_fetch_array($result);
		$eamil=$row['email'];
	 	$sql="select *from usarticle where articleid='".$articleid."'";
		$result=mysql_query($sql);
		if(mysql_num_rows($result)>0){
			echo "<script>alert('该文章编号已存在！');</script>;";
		}
		else
		{
			//判断文件上传是否出错
			if($_FILES["file"]["error"])
			{
			    echo "<script>alert('音乐文件上传失败！');</script>";  
			}
			else
			{
				//首先判断文件大小是否超过10M  
				  if( $_FILES["file"]["size"]>200000000)
			    {
			    	echo "<script>alert('Your upload music is over 20M');</script>";  
			    }
				else
				{
				    //控制上传文件类型
				    if($_FILES["file"]["type"]=="audio/mp3" || $_FILES["file"]["type"]=="mp3/mp3")
				    {
				        //找到文件存放的位置
				        $filename1 = "./musicfile/".$_FILES["file"]["name"];
						$file = $_FILES["file"]["name"];
						$sql="select *from usarticle where music='".$file."'";
						$result=mysql_query($sql);
						if(mysql_num_rows($result)>0){
							echo "<script>alert('该音乐文件名已存在，请修改名称后重试，谢谢！');</script>;";
						}
						else
						{																											
					        //转换编码格式
					        $filename1 = iconv("UTF-8","gb2312",$filename1);
					        //保存文件
					        move_uploaded_file($_FILES["file"]["tmp_name"],$filename1);
							//1.上传头像图片
						 	if($_FILES['myfile']['type']=="image/jpeg"||$_FILES['myfile']['type']=="image/png"||$_FILES['myfile']['type']=="image/pjpeg")//判断文件格式是否为JPEG
							{
						 		if($_FILES['myfile']['error']>0)				//判断上传是否出错
									echo "错误：".$_FILES['myfile']['error'];		//输出错误信息
						 		else
						 		{
									$tmp_filename = $_FILES['myfile']['tmp_name'];		//临时文件名
									$filename = $_FILES['myfile']['name'];			//上传的文件名
									$sql="select *from usarticle where articleimg='".$filename."'";
									$result=mysql_query($sql);
									if(mysql_num_rows($result)>0){
										echo "<script>alert('该图片文件名已存在，请修改名称后重试，谢谢！');</script>;";
									}
									else
									{																		
										$dir=$_SERVER['DOCUMENT_ROOT']."/music/images/userwenzhang/";		//上传后文件的位置
										if(is_uploaded_file($tmp_filename))			//判断是否通过HTTP POST上传
										{
											//上传并移动文件
											if(move_uploaded_file($tmp_filename, $dir.$filename))
											{
												 	$sql="insert into usarticle (articleid,name,music,mdescribes,classes,articleimg,adescribes,time,email,username) values('".$articleid."','".$name."','".$file."','".$mdescribes."','".$classes."','".$filename."','".$adescribes."','".$day."','".$eamil."','".$username."')";
												 	$result=mysql_query($sql);
												 	if($result)
												 	{
											     		echo "<script>alert('音乐分享文章上传成功，请耐心等待管理员审核，谢谢您的分享！');location.href='index.php';</script>;";
											        }
											     	else
												     	echo "<script>alert('音乐分享文章上传失败!');location.href='index.php';</script>;";	
											}
											else
												echo "<script>alert('文章缩略图上传失败');</script>;";
										}
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
				    	echo "<script>alert('请上传“.mp3”音乐文件或歌曲文件名太长！');</script>;";
				    }
				}
			}
		}
	}	
?>
    