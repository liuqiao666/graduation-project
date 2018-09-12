<?php
error_reporting(0);
session_start();
$username=$_SESSION['username'];
?>
<!doctype html>
<html>
<meta charset="utf-8" />
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/buy.css" />
<!--弹出框-->
<link rel="stylesheet" type="text/css" href="css/xcConfirm.css"/>
<link href="css/exchange.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/xcConfirm.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
.sgBtn{
	width: 135px; 
	height: 35px; 
	line-height: 35px;
	margin-right: 10px;
	margin-top: -40px;
	text-align: center; 
	background-color: #62D397;
	color: #FFFFFF;
	float: right;
	border-radius: 5px;
	cursor:pointer;
	}

body {  
    height: 1000px;  
}  
#toTop {  
    position: fixed;  
    right: 30px;  
    bottom: 40px;  
    cursor: pointer;  
    display: none;  
}
</style>
<script type="text/javascript">
			$(function(){
			
				$("#btn8").click(function(){
					var txt=  "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.积分页面：本商城的所有商品都可以进行积分兑换，请，在兑换之前把，自己的收货信息补充完整，多谢配合！</p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.关于分享圈的音乐分享说明：每当您上传一篇文章，如果被管理员审核通过，您将会有20积分的返送，感谢您的分享!</p>";								
					window.wxc.xcConfirm(txt);
				});
			});
</script>
<?php
include("../Connections/myconn.php");
 mysql_select_db("music");
 require_once("page.php");//调用分页函数
 $page_size=8;//定义每页显示几条记录
 if(isset($_GET['zx']))
 {
	$get=$_GET['zx'];
	$bq=zx;
 	$sql="select * from commodity order by price ";
 }
 else if(isset($_GET['dx']))
 {
	$get=$_GET['dx'];
	$bq=dx;
 	$sql="select * from commodity order by price desc ";
 }
 else
 {
 	$sql="select * from commodity ";
 }
 $result=mysql_query($sql);
 $count=mysql_num_rows($result);//多少条数据
 $totalpage=ceil($count/$page_size);//总页数 ceil函数向上取整
?>
</head>
<body>
<?php 
if (!empty($_SESSION['username'])) 
	{ 
		include("header.php");
	} 
	else  
	{ 
	   	include("nav.php"); 
	} 
?>
<div class="body">
<div>
<div class="credit">
<img src="images/积分.PNG" height="30"/ >
<?php
 //判断用户是否登录
 if (!empty($_SESSION['username'])) 
 { 
 	//查询用户的积分
 	$sql="select integral from user where username='".$username."'";
	$result=mysql_query($sql);
	$row1=mysql_fetch_object($result);

	echo "<span>我的积分：{$row1->integral}</span>";
 }
 else
 {
	echo "<span>我的积分：0</span>";
 }
 ?>
</div>
<div class="sgBtn" id="btn8">积分获取规则</div>
</div>
<hr />
<form action="" method="get">
<div  align="center">
<div align="left" class="title">
<nav>
<ul> 
<li><input type="submit" name="zh" id="zh" class="paixu" value="综合"><img src="images/点.png" height="8" class="titleimg"/></li>
  <li><input type="submit" name="zx" id="zx" class="paixu" value="积分从低到高"><img height="8" class="titleimg" src="images/点.png"/></li>
<li><input type="submit" name="dx" id="dx" class="paixu" value="积分从高到低"></li>
</ul>
</nav>
</div>
<?php
//判断当前页码
if(empty($_GET['page'])||$_GET['page']<0)//empty判断变量是否已配置，为空字符串或者零，则返回true 值
{
 	$page=1;
 }
else 
{
	$page=$_GET['page'];
}

 $offset=$page_size*($page-1);//数据从第几页开始
 if(isset($_GET['zx']))
 {
 	$sql2="select * from commodity order by price limit $offset,$page_size";
 }
 else if(isset($_GET['dx']))
 {
 	$sql2="select * from commodity order by price desc limit $offset,$page_size";
 }
 else
 {
 	$sql2="select * from commodity limit $offset,$page_size";
 }
 $result2=mysql_query($sql2);
 while ($row2=mysql_fetch_object($result2)) 
 {//循环数组
 
	echo "<div class='main'>
	<div class='main-picture'>
	  <div class='wrap'> 
	<a href='#x'><img src='../images/commodity/{$row2->img}'/>
	  <b><p><br/>商品信息
	  <span><br/>{$row2->description}</span> </p></b></a>
	   </div>
	   </div>
   
	 <div class='main-text'>
	 <p class='main-name'>{$row2->name}&nbsp;&nbsp;库存量：{$row2->stock}&nbsp;&nbsp;
	<a href='buy.php?number=".$row2->number."'>购买</a></p>
	 <p class='main-jiage'>{$row2->price}积分</p>
	 </div>
	 </div>";

}
echo page($totalpage,$page,$url="?$bq=$get&page=");//调用函数
?></div>
</div></form>
</div>
<!--底部-->
<?php include("footer.php");?>
</body>
</html>