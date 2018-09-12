<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购买</title>
</head>
<body>
</body>
</html>
<?php
error_reporting(0);
session_start();
	$username=$_SESSION['username'];
	
	//判断用户是否登录
	if (empty($_SESSION['username'])) 
 	{ 
 		 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>";
 	}
	else 
	{
		include("../Connections/myconn.php");
		mysql_select_db("music");
		//查询库存量
		$number=$_GET['number'];
		$sql="select stock from commodity where number='".$number."'";
		//执行sql代码
		$result=mysql_query($sql);
		//处理执行结果
		$row=mysql_fetch_object($result);
		$stock="".$row->stock."";
		if($stock!=0)
		{
			//查询收货地址
			$sql1="select address from user where username='".$username."'";
			$result1=mysql_query($sql1);
			$row1=mysql_fetch_object($result1);
			$address="".$row1->address."";
		
			//判断用户收货地址是否存在
			if(empty($address))
			{
				echo "<script type='text/javascript'>alert('你的收货地址未填，请填写收货地址！');location.href='person.php';</script>";
			}
			else 
			{
				//查询用户的积分
				$sql2="select integral,email from user where username='".$username."'";
				$result2=mysql_query($sql2);
				$row2=mysql_fetch_object($result2);
				$integral="".$row2->integral."";
				
				//查询商品的价格
				
				$sql3="select price from commodity where number='".$number."'";
				$result3=mysql_query($sql3);
				$row3=mysql_fetch_object($result3);
				$price="".$row3->price."";
				
				if ($integral < $price)
				{
					echo "<script type='text/javascript'>alert('你的积分不足！');location.href='exchange.php';</script>";
				}
				else
				{
					//查询选中商品的信息
					$sql4="select * from commodity where number='".$number."'";
					$result4=mysql_query($sql4);
					$row4=mysql_fetch_object($result4);
					
					//提交订单给管理员
					$sql5="insert into intexchange(username,number,name,description,img,price,address,email) values('".$username."','{$row4->number}','{$row4->name}','{$row4->description}','{$row4->img}','{$row4->price}','{$row1->address}','{$row2->email}')";
					$result5=mysql_query($sql5);
					if($result5)
					{
						$sql6="update user set integral=integral-'{$price}' where username='".$username."'";
						$result6=mysql_query($sql6);
						if($result6)
						{
							$sk="".$row->stock.""-1;
							$sql7="update commodity set stock=".$sk." where number='".$number."'";
							$result7=mysql_query($sql7);
							if($result7)
							{
								echo "<script>alert('成功提交订单，请等待管理员发货!');location.href='exchange.php';</script>";
							}
						}
					}
					else
					{
						echo "<script>alert('提交订单失败!');location.href='exchange.php';</script>";
					}
				}
			}
		}
		else
		{
			echo "<script type='text/javascript'>alert('该商品已售完，！');location.href='exchange.php';</script>";
			
				
		}
	}

?>
