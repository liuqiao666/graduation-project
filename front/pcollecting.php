<?php
error_reporting(0);
session_start();
$username=$_SESSION['username'];
$number=$_GET['articleid'];
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>期刊收藏</title>
	</head>
	<body>
	</body>
</html>
<?php
 include("../Connections/myconn.php");
 mysql_select_db("music");
 mysql_query('set names utf8');
if(isset($_SESSION['username']))
 {
	$sql="select * from user where username='".$username."'";
 }
 else
 {
	echo "<script>alert('您还未登录，请登录!');location.href='../login.php';</script>";
 }     

$sql="select * from collect where kind=1 and username='".$username."' and articleid='".$number."'";
$result=mysql_query($sql);
if(mysql_num_rows($result)>0)//已收藏
{
	echo "<script>";
	echo " var r=confirm('取消收藏？！');";
	echo "</script>";

	if ($r!=true)//取消收藏
	{
		$sql="delete from collect where kind=1 and username='".$username."' and articleid='".$number."'";
		$result=mysql_query($sql);
		if($result)//删除收藏数据
		{
			$sql="select * from adarticle where articleid='".$number."'"; 
			$result=mysql_query($sql);
			$row=mysql_fetch_array($result);
			$collect=$row['collect']-1; //收藏量减一
			$sql="update adarticle set collect='".$collect."' where articleid='".$number."'";
	 		$result=mysql_query($sql);
	 		if($result)//数据更新
	 		{
	     		echo "<script>";
				echo "alert('已成功取消收藏，谢谢！');";
				echo "location.href='javascript:history.go(-1);'"; 
				echo "</script>";
        	}
     		else
	     		echo "<script>alert('数据未更新,取消收藏失败，请联系管理员，谢谢！');location.href='javascript:history.go(-1)';</script>;";	
		}
		else//删除失败
		{
			echo "<script>";
			echo "alert('数据未插入，取消收藏失败,请联系管理员，谢谢！');";
			echo "location.href='javascript:history.go(-1);'";  
			echo "</script>";
		}
	}
	else//未取消收藏  返回上一页
	{
		echo "<script>";
		echo "location.href='javascript:history.go(-1);'";  
		echo "</script>";
	}
}
else//未收藏
{
	$sql="select * from adarticle where articleid='".$number."'"; 
	$result=mysql_query($sql);
	$row=mysql_fetch_array($result);
	$name=$row['name'];
	$img=$row['articleimg']; 
	$collect=$row['collect']+1; //收藏量加一
 	$sql="insert into collect (username,articleid,name,img,kind,tjrname) values('".$username."','".$number."','".$name."','".$img."','1','管理员')";
	$result=mysql_query($sql);
 	if($result)//收藏成功
 	{
		$sql="update adarticle set collect='".$collect."' where articleid='".$number."'";
	 	$result=mysql_query($sql);
	 	if($result)
	 	{
	     	echo "<script>alert('已成功收藏，谢谢！');location.href='javascript:history.go(-1)';</script>;";
        }
     	else
	     	echo "<script>alert('收藏失败，请联系管理员，谢谢！');location.href='javascript:history.go(-1)';</script>;";			
	}
	else
    	echo "<script>alert('收藏失败，请联系管理员，谢谢！');location.href='javascript:history.go(-1)';</script>;";	
}
?>