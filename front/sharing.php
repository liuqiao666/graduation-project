<?php
error_reporting(0);
session_start();
$username=$_SESSION['username'];
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>分享圈</title>
<link href="css/share.css" rel="stylesheet" type="text/css">
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<link href="css/sharing.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

<style>		
*{margin:0;padding:0;}
.page .abq{ margin-left:4px; color:#555;font-size:12px;cursor:pointer;text-decoration:none}
.page{margin:10px auto;text-align:left;width:700px;}
.page .abq,.page span{margin-right:4px;padding:3px 8px;margin-left:2px;line-height:20px;background:#f9f9f9;border:1px solid #dbdbdb;text-decoration:none;-webkit-border-radius:2px;-moz-border-radius:2px;-ms-border-radius:2px;-o-border-radius:2px;border-radius:2px;color:#333}
.page .abq:hover,.page span.cur{background-color:#999;color:#fff;font-size:12px;border:1px solid #999;cursor:pointer}
.page span.tip{font-size:16px;margin-left:10px;border:0 none; background:none}
</style>
<?php
 require_once("page.php");//调用分页函数
 $page_size=3;//定义每页显示几条记录
 include("../Connections/myconn.php");
 mysql_select_db("music");
 if(isset($_GET['lx']))
 {
	$get=$_GET['lx'];
	$bq=lx;
	$sql="select * from usarticle where classes='流行'";
 }
else if(isset($_GET['yg']))
{
	$get=$_GET['yg'];
	$bq=yg;
	$sql="select * from usarticle where classes='摇滚'";
}
else if(isset($_GET['my']))
{
	$get=$_GET['my'];
	$bq=my;
	$sql="select * from usarticle where classes='民谣'";
}
else if(isset($_GET['js']))
{
	$get=$_GET['js'];
	$bq=js;
	$sql="select * from usarticle where classes='爵士'";
}
else if(isset($_GET['yc']))
{
	$get=$_GET['yc'];
	$bq=yc;
	$sql="select * from usarticle where classes='原创'";
}
else if(isset($_GET['xq']))
{
	$get=$_GET['xq'];
	$bq=xq;
	$sql="select * from usarticle where classes='戏曲'";
}
else if(isset($_GET['dl']))
{
	$get=$_GET['dl'];
	$bq=dl;
	$sql="select * from usarticle where classes='小众独立音乐'";
}
else
{
	$sql="select * from usarticle ";
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


<!--整个中间大外框-->
<div class="main"><!--紫色的-->
	<!--中间左边部分-->
	<div class="main-left">
    <div class="main-left1"><!--中间第一个标题-->
        	<div class="title">
            	<p class="main-left-text">用户分享</p> 
          	</div>
            
        	<div class="tag">
           <form method="get">
            <div class="textcontainer">
       			<span class="particletext bubbles">
                	<a><input name="lx" id="lx" type="submit" class="biaoqian" value="流行"/></a>
                    <a><input name="yg" id="yg" type="submit" class="biaoqian" value="摇滚"/></a>
                    <a><input name="my" id="my" type="submit" class="biaoqian" value="民谣"/></a>
                    <a><input name="js" id="js" type="submit" class="biaoqian" value="爵士"/></a>
                    <a><input name="yc" id="yc" type="submit" class="biaoqian" value="原创"/></a>
                    <a><input name="xq" id="xq" type="submit" class="biaoqian" value="戏曲"/></a>
                    <a><input name="dl" id="dl" type="submit" class="biaoqian" value="小众独立音乐"/></a>				
                </span>
                </div>
                </form>
            </div>  
        </div>
        <div><h3 class="bigtext"></h3></div><!--下横线-->
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
		if(isset($_GET['lx']))
		{
			$sql="select * from usarticle where classes='流行' limit $offset,$page_size";
		}
		else if(isset($_GET['yg']))
		{
			$sql="select * from usarticle where classes='摇滚' limit $offset,$page_size";
		}
		else if(isset($_GET['my']))
		{
			$sql="select * from usarticle where classes='民谣' limit $offset,$page_size";
		}
		else if(isset($_GET['js']))
		{
			$sql="select * from usarticle where classes='爵士' limit $offset,$page_size";
		}
		else if(isset($_GET['yc']))
		{
			$sql="select * from usarticle where classes='原创' limit $offset,$page_size";
		}
		else if(isset($_GET['xq']))
		{
			$sql="select * from usarticle where classes='戏曲' limit $offset,$page_size";
		}
		else if(isset($_GET['dl']))
		{
			$sql="select * from usarticle where classes='小众独立音乐' limit $offset,$page_size";
		}
		else
		{
			$sql="select * from usarticle limit $offset,$page_size";
		}
		$result=mysql_query($sql);
		while($row=mysql_fetch_object($result))
		{
         echo "<div class='main-left2'>
        
        	<div class='main-left2-1'>
            
                <div class='port-1 effect-3'>
               		<div class='main-left2-1-picture'>
               			<img src='../images/userwenzhang/{$row->articleimg}'/>
               		</div>
               
            		<div class='text-desc'>	
						<a href='sharing_open.php?sarticleid={$row->articleid}&username={$row->username}'><span  class='btn'></span></a>
					</div>
           	   </div>
                
                
            </div><!--main-left2-1-->
            
            <!--右边文字部分-->
            <div class='main-left2-2'>
            	<div class='main-left2-2-1'>
                	<p style='font-size:24px;text-align:center;'>{$row->name}</p><br/>
					<p class='sharing-text'>歌名：{$row->music}</p>
                   <div class='sharing-text3'>
                    歌曲介绍：{$row->mdescribes}</div><!--正文-->
               
                </div>
                	
        <div id='play-2' style='width:150px;'><!--分享、收藏等标签-->
        
             <p class='sharing-text2'>推荐人:{$row->username}</p>
           </div><!--分享、收藏等标签-->
                    
            </div>
        </div>";
         } echo page($totalpage,$page,$url="?$bq=$get&page=");?>
    </div><!--中间左边部分完-->

    
</div><!--整个中间大方框完-->


<!--底部-->
<?php include("footer.php");?>


<!--文字特效-->
<script>
function initparticles() {
   bubbles();
   confetti();
}

function bubbles() {
   $.each($(".particletext.bubbles"), function(){
      var bubblecount = ($(this).width()/50)*10;
      for(var i = 0; i <= bubblecount; i++) {
         var size = ($.rnd(40,80)/10);
         $(this).append('<span class="particle" style="top:' + $.rnd(20,80) + '%; left:' + $.rnd(0,95) + '%;width:' + size + 'px; height:' + size + 'px;animation-delay: ' + ($.rnd(0,30)/10) + 's;"></span>');
      }
   });
}

function confetti() {
   $.each($(".particletext.confetti"), function(){
      var confetticount = ($(this).width()/50)*10;
      for(var i = 0; i <= confetticount; i++) {
         $(this).append('<span class="particle c' + $.rnd(1,2) + '" style="top:' + $.rnd(10,50) + '%; left:' + $.rnd(0,100) + '%;width:' + $.rnd(6,8) + 'px; height:' + $.rnd(3,4) + 'px;animation-delay: ' + ($.rnd(0,30)/10) + 's;"></span>');
      }
   });
}

jQuery.rnd = function(m,n) {
      m = parseInt(m);
      n = parseInt(n);
      return Math.floor( Math.random() * (n - m + 1) ) + m;
}
initparticles();
</script>

</body>
</html>