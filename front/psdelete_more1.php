<?php
$number=$_GET['number'];
$username=$_GET['username'];
?>

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
  
		//1.连接数据库
		include("../Connections/myconn.php");
		mysql_select_db("music");
		mysql_query('set names utf8');
		//3.写SQL代码
		
		$sql="delete from collect where kind=0 and username='".$username."'  and articleid='".$number."'";
		$result=mysql_query($sql);
		
		if($result)
		{
		echo "<script>";
		echo "alert('取消成功！');";
		echo "location.href='person.php?number={$number}'";
		echo "</script>";
		}
		else
		{
		echo "<script>";
		echo "alert('取消失败！');";
		echo "location.href='person.php?number={$number}'";
		echo "</script>";
		}
			
	
?>
