<?php
error_reporting(0);
session_start();
$username=$_SESSION['username'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<?php 
$act=$_GET['act'];

//实现期刊打开页面回复功能的模块
if($act=='periodical_comment'){
	$jieshouid=$_GET['id'];
	$particleid=$_GET['particleid'];//获取期刊id
	
	$content=$_POST['content'];
	$time = date("Y-m-d H:i:s");
	
	//构造SQL语句实现保存回复的功能
	include("../Connections/myconn.php");
	mysql_select_db("music");
	if (!empty($_SESSION['username'])) 
	{ 
		$sql1="insert into adhuifu(jieshouid,username,content,time) values('{$jieshouid}','".$username."','{$content}','{$time}');";
		$result1=mysql_query($sql1);
		
		if($result1)
		{
			{
			//弹出评论成功并返回到原页面
			echo "<script type='text/javascript'>alert('回复成功！');location.href='periodical_open.php?particleid={$particleid}';</script>"; 
	}
			}
		else
		{
			echo "<script>alert('回复失败!');header('Location:periodical_open.php?particleid={$particleid}');';</script>";
			}
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	} 
}

//实现分享打开页面回复功能的模块
if($act=='sharing_comment'){
	$jieshouid=$_GET['id'];
	$sarticleid=$_GET['sarticleid'];//获取歌曲id
	
	$content=$_POST['content'];
	$time = date("Y-m-d H:i:s");
	
	//构造SQL语句实现保存回复的功能
	include("../Connections/myconn.php");
	mysql_select_db("music");
	if (!empty($_SESSION['username'])) 
	{ 
		$sql2="insert into ushuifu(jieshouid,username,content,time) values('{$jieshouid}','".$username."','{$content}','{$time}');";
		$result2=mysql_query($sql2);
		
		if($result2)
		{
			header("Location:sharing_open.php?sarticleid={$sarticleid}");
			}
		else
		{
			echo "<script>alert('回复失败!');header('Location:sharing_open.php?sarticleid={$sarticleid}');';</script>";
			}
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	} 
}

//实现期刊打开页面点赞的操作的模块
if($act=='praise'){
	
	$id=$_GET['id'];//获取评论的id
	$particleid=$_GET['particleid'];//获取期刊id
		
	//构造SQL语句实现保存点赞的功能
	if (!empty($_SESSION['username'])) 
	{ 
		include("../Connections/myconn.php");
		mysql_select_db("music");
		$sql="select * from praise where kind=1 and username='".$username."' and id='".$id."'";
		$result=mysql_query($sql);
		$count=mysql_num_rows($result);
		if($count>0)
		{
			echo "<script type='text/javascript'>alert('你已发表过意见了!');location.href='periodical_open.php?particleid={$particleid}';</script>";
		}
		else
		{
				$sql="select * from adpinglun where id='".$id."'"; 
				$result=mysql_query($sql);
				$row=mysql_fetch_array($result);
				$plusername=$row['username'];
				$content=$row['content']; 
				$praise=$row['praise']+1; 
				$sql="insert into praise(username,id,plusername,content,kind) values('".$username."','".$id."','".$plusername."','".$content."','1')";
				$result=mysql_query($sql);
				if($result)
				{
					$sql="update adpinglun set praise=".$praise." where id=".$id."";
					$result=mysql_query($sql);
					if($result)
					{
						echo "<script type='text/javascript'>alert('点赞成功!');location.href='periodical_open.php?particleid={$particleid}';</script>";
						}
					else
					{
						echo "<script type='text/javascript'>alert('点赞失败!');location.href='periodical_open.php?particleid={$particleid}';</script>";
						}
				}
				else
				{
					echo "<script type='text/javascript'>alert('点赞失败!');location.href='periodical_open.php?particleid={$particleid}';</script>";
				}
		}
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	} 
}

//实现分享打开页面点赞的操作的模块
if($act=='sharing_praise'){
	
	$id=$_GET['id'];//获取评论的id
	$sarticleid=$_GET['sarticleid'];//获取歌曲id
		
	//构造SQL语句实现保存点赞的功能
	if (!empty($_SESSION['username'])) 
	{
		include("../Connections/myconn.php");
		mysql_select_db("music");
		$sql="select * from praise where kind=0 and username='".$username."' and id='".$id."'";
		$result=mysql_query($sql);
		$count=mysql_num_rows($result);
		if($count>0)
		{
			echo "<script type='text/javascript'>alert('你已发表过意见了!');location.href='sharing_open.php?sarticleid={$sarticleid}';</script>";
		}
		else
		{
				$sql="select * from uspinglun where id='".$id."'"; 
				$result=mysql_query($sql);
				$row=mysql_fetch_array($result);
				$plusername=$row['username'];
				$content=$row['content']; 
				$praise=$row['praise']+1; 
				$sql="insert into praise (username,id,plusername,content,kind) values('".$username."','".$id."','".$plusername."','".$content."','0')";
				$result=mysql_query($sql);
				if($result)
				{
					$sql="update uspinglun set praise=".$praise." where id=".$id."";
					$result=mysql_query($sql);
					if($result)
					{
						echo "<script type='text/javascript'>alert('点赞成功!');location.href='sharing_open.php?sarticleid={$sarticleid}';</script>";
						}
					else
					{
						echo "<script type='text/javascript'>alert('点赞失败!');location.href='sharing_open.php?sarticleid={$sarticleid}';</script>";
						}
				}
				else
				{
					echo "<script type='text/javascript'>alert('点赞失败!');header('Location:sharing_open.php?sarticleid={$sarticleid}');';</script>";
				}
		}
	}
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	} 
}

?>
</body>
</html>