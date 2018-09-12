<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();
//$username = $_SESSION['username'];//获取记录的登录名
$text = $_GET['text'];
?>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索</title>
<link href="css/share.css" rel="stylesheet" type="text/css">
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<link href="css/sharing.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

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
<div class="main">
	<!--中间左边部分-->
	<div class="main-left">
    
    	<div class="sharing-search"><!--搜索部分大方框-->
			<form id="form1" name="form1" method="post" action="" class="form1"> 
            <select name="lb" id="lb" class="select" style="outline:none;">
				<option  value="2">期刊</option>
				<option value="1">分享圈</option>
				</select>
            
            
    			<input style="outline:none;" name="text" type="text" id="text" size="20" class="search1" required="required" placeholder="请输入搜索内容..."/>
   	    		<input style="outline:none;" name="submit" type="submit" class="button1" id="submit" value=""/>
      		</form>
		</div>
        
        <div><h3 class="bigtext"></h3></div><!--下横线-->

        <?php 
	
		 include("../Connections/myconn.php");
		 mysql_select_db("music");
		if(isset($_POST['submit']))
		{
			switch($_POST['lb'])
			{
				case 2: 
						
						 $sql="select * from adarticle where name like '%".$_POST['text']."%' or music like '%".$_POST['text']."%' or classes like '%".$_POST['text']."%'";
						 
						
					   $open='periodical';
					   $articleid='particleid';
					   $one='adminwenzhang';
					   break;
					   
				case 1:	
				
						$sql="select * from usarticle where name like '%".$_POST['text']."%' or music like '%".$_POST['text']."%' or classes like '%".$_POST['text']."%'";
						 
					  
					   $open='sharing';
					   $articleid='sarticleid';
					   $one='userwenzhang';
					   break;
					   
				default:
				 
						 $sql="select * from adarticle where name like '%".$_POST['text']."%' or music like '%".$_POST['text']."%' or classes like '%".$_POST['text']."%'";
						 
						
						$open='periodical';
						$articleid='particleid';
						$one='adminwenzhang';
			}
			
		}
		else
		{
			$sql="select * from adarticle where name like '%".$text."%' or music like '%".$text."%' or classes like '%".$text."%'";
						 
			$open='periodical';
			$articleid='particleid';
			$one='adminwenzhang';
		}
		$result=mysql_query($sql);
		while($row=mysql_fetch_object($result))
		{
        ?>
        <div class="main-left2">
        
        	<div class="main-left2-1">
            
                <div class="port-1 effect-3">
               		<div class="main-left2-1-picture">
                    	<img src="../images/<?php echo $one;?>/<?php echo $row->articleimg;?>"/>
               		</div>
               
            		<div class="text-desc">	
                      <a href="<?php echo $open;?>_open.php?<?php echo $articleid;?>=<?php echo $row->articleid;?>&username=<?php echo $row->username;?>">
						<span  class="btn"></span>
                      </a>  
					</div>
           	   </div>
                
                
            </div><!--main-left2-1-->
            
            <!--右边文字部分-->
            <div class="main-left2-2">
            	<div class="main-left2-2-1">
                <p style='font-size:24px;text-align:center;'><?php echo $row->name;?></p><br/>
                 <p class='sharing-text'>歌曲名：<?php echo $row->music;?></p>
                   <div class='sharing-text3'>
                    歌曲介绍：<?php echo $row->mdescribes;?>
                    </div><!--正文-->
                  
                </div>
                     
			<div id="play-2"><!--分享、收藏等标签-->
                   
             	<p class="sharing-text2">分类:<?php echo $row->classes;?></p>
              
			</div><!--分享、收藏等标签-->
                    
                
            </div>
        </div>
        <?php }?>
    </div><!--中间左边部分完-->

    
</div><!--整个中间大方框完-->

<!--底部-->
<?php include("footer.php");?>

</body>
</html>