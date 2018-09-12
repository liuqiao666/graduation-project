<?php
error_reporting(0);
session_start();
$username = $_SESSION['username'];//获取记录的登录名
?>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="utf-8">  
<title>音悦</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/first.css" rel="stylesheet" type="text/css">

</head>
<body vlink="#666666" alink="#33CCFF">

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
<div class="wrapper">
  <div class="img_box">
    <!--轮播图片-->
    <ul class="images" id="imgChange">
    <?php  
	 include("../Connections/myconn.php");
	 mysql_select_db("music");
	 mysql_query('set names utf8');
	 $sql1="select * from start limit 5";
	 $result1=mysql_query($sql1);
	 while($row1=mysql_fetch_object($result1))
	 {
	?>
        <li><img src="../images/start/<?php echo $row1->img?>" alt=""/></li>
      <?php }?>
    </ul>
    <!-- 左右箭头-->
    <div class="arr">
        <div class="arr_left">＜</div>
        <div class="arr_right">＞</div>
    </div>
    <!-- 图片上的小圆点-->
    <ul class="circles" id="circles">
        <li class="active"></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</div>

<!--整个中间部分大方框-->
<div class="main">

    <!--首页左边大方框-->
    <div class="main-left">
        <div class="main-left1"><p>最新期刊推荐</p></div><!--中间第一个标题-->
        <div class="main-left2" style="padding-left: 20px;"><!--内容框2-->
        <?php 
		$sql2="select * from adarticle order by time desc limit 4";
		$result2=mysql_query($sql2);
		while($row2=mysql_fetch_object($result2))
		{
		?>
        	<div class="main-left2-1"><!--循环开始-->
            
              <div class="port-1 effect-3">
            	<div class="main-left2-1-picture">
                	 <img src="../images/adminwenzhang/<?php echo $row2->articleimg;?>" />
                </div>
                
                <div class="text-desc">	
					<a href="periodical_open.php?particleid=<?php echo $row2->articleid;?>"><span  class="btn"></span></a>
				</div>
              </div>
              
                <div class="main-left2-1-text">
                   <p class="music-name"><?php echo $row2->name;?></p>
                   <p class="musicer-name"><?php echo $row2->time;?></p>
                </div>
                
            </div>
            <?PHP }?>
        </div>
        
        <div class="main-left1"><p>最新分享推荐</p></div><!--中间第二个标题-->
        <div class="main-left2" style="padding-left: 20px;"><!--内容框1-->
        <?php 
		$sql3="select * from usarticle where look=1 order by time desc limit 4";
	    $result3=mysql_query($sql3);
	    while($row3=mysql_fetch_object($result3))
	    {
		?>
        	<div class="main-left2-1"><!--循环开始-->
            
              <div class="port-1 effect-3">
            	<div class="main-left2-1-picture">
                	<img src="../images/userwenzhang/<?php echo $row3->articleimg;?>" />
                </div>
                <div class="text-desc">	
					<a href="sharing_open.php?sarticleid=<?php echo $row3->articleid;?>&username=<?php echo $row3->username;?>"><span  class="btn"></span></a>
				</div>
              </div>
               
                <div class="main-left2-1-text">
                   <p class="music-name"><?php echo $row3->name;?></p>
                   <p class="musicer-name">推荐人：<?php echo $row3->username;?></p>
                </div>
            </div><!--循环结束-->

                     
             <?php }?> 
        </div>

        
        <div class="main-left1"><p>商品兑换推荐</p></div><!--中间第三个标题-->
          <div class="main-left2" style="padding-left: 20px;"><!--内容框1-->
        <?php 
		$sql4="select * from commodity order by stock desc limit 4";
	    $result4=mysql_query($sql4);
	    while($row4=mysql_fetch_object($result4))
	    {
		?>
        	<div class="main-left2-1"><!--循环开始-->
            
              <div class="port-1 effect-3">
            	<div class="main-left2-1-picture">
                <div class="wrap">
                <a href='#x'><img src="../images/commodity/<?php echo $row4->img;?>" />
                  <p style="padding: 30px 40px 40px 30px;"><br/><b>商品信息<span><br/><?php echo $row4->description;?></b></span> </p></a>
                </div>
                </div>
              </div>
                <div class="main-left2-1-text">
                   <p class="music-name"><?php echo $row4->name;?>&nbsp;&nbsp;
	<a href="buy.php?number=<?php echo $row4->number?>">购买</a></p>
                   <p class="musicer-name"><?php echo $row4->price;?>积分</p>
                </div>
            </div><!--循环结束-->

                     
             <?php }?> 
        </div>
        
  
    </div><!--左边完-->

   <!--首页右边大方框-->
    <div class="main-right">   
        <div class="main-right2">

        	<div class="main-left1-first"><!--个标题-->
        		<p class="main-left-text">最热期刊推荐</p>
        	</div>
       		
        	<div class="main-left2-first">
       	 		<div class="chart_artsit-first">
                	<ul>	
                        <?php 
						$sql5="select * from adarticle order by collect desc limit 8";
						$result5=mysql_query($sql5);
						while($row5=mysql_fetch_object($result5))
						{
						?>
                        <li>
                        	<div class="chart_artsit_item-first">
                             <a class="ico_radio-first" href="" title=""><?php echo $row5->name;?></a><a class="buddy-first" href="periodical_open.php?particleid=<?php echo $row5->articleid;?>" title=""><img src='../images/adminwenzhang/<?php echo $row5->articleimg;?>' width="55" height="55"/></a>
                            </div>  
                            
                        </li>
                         <?php }?>
                    </ul>
                </div>	        
			</div>
            
            
            <div class="main-left1-first"><!--个标题-->
        		<p class="main-left-text">最热用户分享推荐</p>
        	</div>
 
        	<div class="main-left2-first">
       	 		<div class="chart_artsit-first">
                	<ul>
                         <?php 
						$sql6="select * from usarticle where look=1 order by collect desc limit 8";
						$result6=mysql_query($sql6);
						while($row6=mysql_fetch_object($result6))
						{
						?>
                        <li>
                        	<div class="chart_artsit_item-first">
                        	 <a class="buddy-first" href="sharing_open.php?sarticleid=<?php echo $row6->articleid;?>&username=<?php echo $row6->username;?>">
                             <img src='../images/userwenzhang/<?php echo $row6->articleimg;?>' width="55" height="55"/>
                             </a>
                             <a class="ico_radio-first" href="" title=""><?php echo $row6->name;?></a> 
                            </div>  
                        </li>
                        <?php }?>
                    </ul>
                </div>	        
			</div>          
            <a href="#"style="float: right;"><img src="images/totop.png" id="toTop" style="padding-top: 50px;"/></a>
        </div>

        
</div><!--整个中间大外框-->
<!--底部-->
<?php include("footer.php");?>
<script src="js/first.js"></script>

</body>
</html>