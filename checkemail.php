<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<body>
</body>
</html>
<?php
	error_reporting(0);
	mysql_query("set names 'utf8'");
	include "Connections/myconn.php";
 	mysql_select_db("music",$myconn);
 	//echo $_GET['username'];
 	$sql="update user set status = '1' where email='".$_GET['email']."'";

	$result=mysql_query($sql);
	if($result){	
	  echo "<script>alert('恭喜你账号激活成功！'); location.href='login.php';</script>;";
	
	}
?>

