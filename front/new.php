<?php
//屏蔽notice
error_reporting(0);
session_start();//启用
$_GET['c']=$_SESSION['c'];
$_GET['lx']=$_SESSION['lx'];
$_GET['yg']=$_SESSION['yg'];
$_GET['my']=$_SESSION['my'];
$_GET['js']=$_SESSION['js'];
$_GET['yc']=$_SESSION['yc'];
$_GET['xq']=$_SESSION['xq'];
$_GET['xzdlyy']=$_SESSION['xzdlyy'];
?>

<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>最新上架</title>
<link href="css/periodical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
.main-left2{ 
	height:auto;/*中间左边第一个内容框*/
	margin:10px;
	}	

.main-left2-1{ 
	width:32%;
	height:300px;
	font-size:12px;
	overflow:hidden;
	margin-top:5px;
	margin-left:15px;
	/*background-color:#909;深紫色*/
	float:left;/*使图片横排排列*/
	}	
	
.main-left2-1-picture{
	width:100%;
	height:80%;
	overflow:hidden;
	/*background-color:#FF0;黄色*/
	}
.main-left2-1-text{
	margin-top: 250px;
	height: 30px;
	width: 300px;
	font: 12px 'Helvetica Neue',Helvetica,Arial,sans-serif;
	/*background-color:#FCF;淡粉色*/
	}
.main-left2 .main-left2-1 p{
	position: relative;
	overflow: hidden;
	padding-left: 10px;
	height: 24px;
	white-space: nowrap;
	text-overflow: ellipsis;
	line-height: 24px;
	}
.music-name{ 
	margin-top:10px;
	font-size:18px;
	text-align:left;
	color:#000;}
.main-left2-1-picture img{
	width:360px;
	height:240px;
	}
	
	
/*遮罩层*/
.text-desc{
	position: absolute;
	left: 0;
	top: 0;
	background-color:rgba(0,0,0, 0.5);/*遮罩层颜色  黑色*/
	height: 100%;
	width: 100%;
	}
.btn{
	height:59px;
	width:55px;
	display: inline-block; 
	background-image:url(images/icon-index.png);/*新加的背景按钮图*/
	background-repeat: no-repeat;
    background-position: 0 -120px;
	cursor:pointer;
	margin-top:-2px;
	margin-right:20px;
	}
.port-1{
	float: left;
	width: 80%;
	position: relative;
	overflow: hidden;
	text-align: center;
	border: 0px solid rgba(255, 255, 255, 0.5);
	}
.port-1 .text-desc{
	color:#000;/*黑色*/
	padding: 45px 20px 20px;	
	transition: 0.2s;

}
.port-1.effect-3 .text-desc{ 
	top: 50%;
	left: 50%;
	width: 0;
	height: 0;
	overflow: hidden;
	padding: 0;
	}
.port-1.effect-3:hover .text-desc{
		width: 100%;
		top: 0;
		left: 0;
		height: 100%;
		padding: 45px 20px 20px;
		}/*删除后没有遮罩层*/	

</style>
<?php
 require_once("page.php");//调用分页函数
 $page_size=6;//定义每页显示几条记录
 
 include("../Connections/myconn.php");
 mysql_select_db("music");
 if(isset($_GET['lx']))
 {
	$get=$_GET['lx'];
	$bq=lx;
	$sql="select * from adarticle where classes='流行'";
 }
else if(isset($_GET['yg']))
{
	$get=$_GET['yg'];
	$bq=yg;
	$sql="select * from adarticle where classes='摇滚'";
}
else if(isset($_GET['my']))
{
	$get=$_GET['my'];
	$bq=my;
	$sql="select * from adarticle where classes='民谣'";
}
else if(isset($_GET['js']))
{
	$get=$_GET['js'];
	$bq=js;
	$sql="select * from adarticle where classes='爵士'";
}
else if(isset($_GET['yc']))
{
	$get=$_GET['yc'];
	$bq=yc;
	$sql="select * from adarticle where classes='原创'";
}
else if(isset($_GET['xq']))
{
	$get=$_GET['xq'];
	$bq=xq;
	$sql="select * from adarticle where classes='戏曲'";
}
else if(isset($_GET['xzdlyy']))
{
	$get=$_GET['xzdlyy'];
	$bq=xzdlyy;
	$sql="select * from adarticle where classes='小众独立音乐'";
}
else
{
	$sql="select * from adarticle ";
}
 $result=mysql_query($sql);
 $count=mysql_num_rows($result);//多少条数据
 $totalpage=ceil($count/$page_size);//总页数 ceil函数向上取整
?>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
      <div class="main-left2"><!--内容框1-->
     
		<?php  
        include("../Connections/myconn.php");	 
        mysql_select_db("music");
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
		if(isset($_GET['lx']))
		{
			$sql="select * from adarticle where classes = '流行' order by time desc limit $offset,$page_size" ;
		}
		else if(isset($_GET['yg']))
		{
			$sql="select * from adarticle where classes = '摇滚' order by time desc limit $offset,$page_size";
		}
		else if(isset($_GET['my']))
		{
			$sql="select * from adarticle where classes = '民谣' order by time desc limit $offset,$page_size";
		}
		else if(isset($_GET['js']))
		{
			$sql="select * from adarticle where classes = '爵士' order by time desc limit $offset,$page_size";
		}
		else if(isset($_GET['yc']))
		{
			$sql="select * from adarticle where classes = '原创' order by time desc limit $offset,$page_size";
		}
		else if(isset($_GET['xq']))
		{
			$sql="select * from adarticle where classes = '戏曲' order by time desc limit $offset,$page_size";
		}
		else if(isset($_GET['xzdlyy']))
		{
			$sql="select * from adarticle where classes = '小众独立音乐' order by time desc limit $offset,$page_size";
		}
		else
		{
			$sql="select * from adarticle order by time desc limit $offset,$page_size";
		}
        $result=mysql_query($sql);
		
        while($row=mysql_fetch_object($result))//添加while语句实现循环添加。
        {									   //row与array
        echo "<div class='main-left2-1'>
        	<div class='port-1 effect-3'>
               <div class='main-left2-1-picture'><img src='../images/adminwenzhang/{$row->articleimg}'/>
               </div>
               
            	<div class='text-desc'>	
					<a href='periodical_open.php?particleid={$row->articleid}'><span  class='btn'></span></a>
				</div>
            </div>
            
            <div class='main-left2-1-text'>
               <p class='music-name'>{$row->name}</p>
            </div>
        </div> ";
    }echo page($totalpage,$page,$url="?$bq=$get&page=");//调用函数?>            
       </div><!--内容框1-->
       
</form>
</body>
</html>