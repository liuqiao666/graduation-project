<?php
error_reporting(0);
session_start();
$id=$_GET['id'];//获取修改后的用户名
$username=$_SESSION['username'];
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<title>歌曲收藏-更多</title>
<link href="css/own_more.css" rel="stylesheet" type="text/css" />
<link href="css/audio.css" rel="stylesheet" type="text/css" />
<style type="text/css">
*{margin:0;padding:0;}
.page .abq{ margin-left:4px; color:#555;font-size:12px;cursor:pointer;text-decoration:none }
.page{margin:10px auto;text-align:left;width:700px;}
.page .abq,.page span{margin-right:4px;padding:3px 8px;margin-left:2px;line-height:20px;background:#f9f9f9;border:1px solid #dbdbdb;text-decoration:none;-webkit-border-radius:2px;-moz-border-radius:2px;-ms-border-radius:2px;-o-border-radius:2px;border-radius:2px;color:#333}
.page .abq:hover,.page span.cur{ font-size:12px;background-color:#999;color:#fff;border:1px solid #ccc;cursor:pointer}
.page span.tip{font-size:16px;margin-left:10px;border:0 none; background:none}
</style>
<?php
 require_once("page.php");//调用分页函数
 $page_size=6;//定义每页显示几条记录
 
 include("../Connections/myconn.php");
 mysql_select_db("music");
 if (!empty($id)) 
 { 
	$sql="select * from collect where username='".$id."' and kind=0";
 } 
 else
 {
	$sql="select * from collect where username='".$username."' and kind=0";
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
?><form id="form1" name="form1" method="post" action="">
<!--整个中间大外框-->
<div class="main"><!--紫色的-->
	<!--中间左边部分-->
	<div class="main-left">
    
        <div class="main-left1"><!--中间第一个标题-->
        	<p class="main-left-text">歌曲收藏</p>
        </div>
        <hr>
        <div class="main-left2">
        <div class="chart_artsit">
                	<ul>
                    	<li>
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
		 if (!empty($id)) 
 		 { 
			$sql="select * from collect where username='".$id."' and kind=0 limit $offset,$page_size";
 		 } 
 		 else
		 {
			$sql="select * from collect where username='".$username."' and kind=0 limit $offset,$page_size";
 		 }
		 $result=mysql_query($sql);
		 while ($row=mysql_fetch_object($result)) 
		 {?>
 			<div class="chart_artsit_item">
                             <a class="ico_radio" href="" title=""><?php echo $row->name?></a> 
                             <a class="buddy" href="sharing_open.php?sarticleid=<?php echo $row->articleid?>" title=""><img src="../images/userwenzhang/<?php echo $row->img?>" width="55" height="55"/></a>
                             <div class="private_act">
                              <a class="removeIT" href="delete_more1.php?number=<?php echo $row->articleid?>&username=<?php echo $row->username?>"  onclick="return confirm('确认删除？');"></a><!--删除-->
                              </div><!--删除完-->
                      </div>
			 <?php }echo page($totalpage,$page,$url="?page=");//调用函数?>  
		   
                        </li> 
                    </ul>
                </div>	
           
        </div>
      	
      <div></div><!--分页-->
          
	</div><!--中间左边部分完-->

	
    
    <!--首页右边大方框-->
    <div class="main-right">
     <?PHP 
	 $sql="select * from user where username='".$username."' ";
	 $result=mysql_query($sql);
	 $row=mysql_fetch_object($result)
	 ?>
   		<div class="main-right1">
    		<div class="head-img" style="width:100px;height:100px;"><!--头像-->
        		<img src="../images/userheaderimg/<?php echo $row->image;?>"/>
     	 	</div><!--头像--> 
        </div>
        <div><h3 class="bigtext"></h3></div>
        <div class="information_name"><!--用户名-->
        		<p><?php echo $row->username;?></p><!--名字-->
      		</div><!--用户名-->
            <div><h3 class="bigtext"></h3></div>
			
            <div class="main-right2">
            	<?php echo $row->myself;?>
            </div>
     
        
    </div><!--右边完-->
    
<!--播放器-->
 <div class="audio-box"><!--整个进度条外框-->
		<div class="audio-container"><!--进度条中间内容部分-->
			<div class="audio-view">
				<div class="audio-cover" ></div><!--歌曲图片-->
				<div class="audio-body"><!--进度条与文字信息部分-->
					<h3 class="audio-title">未知歌曲</h3><!--歌曲名-->
					<div class="audio-backs"><!--进度条及时间-->
						<div class="audio-this-time">00:00</div>
						<div class="audio-count-time">00:00</div>
						<div class="audio-setbacks"><!--进度条-->
							<i class="audio-this-setbacks">
								<span class="audio-backs-btn"></span>
							</i>
							<span class="audio-cache-setbacks"></span>
						</div><!--进度条完-->
					</div><!--进度条及时间完-->
				</div><!--进度条与文字信息部分-->
				<div class="audio-btn"><!--按钮部分-->
					<div class="audio-select"><!--按钮-->
						<div class="audio-prev"></div>
						<div class="audio-play"></div>
						<div class="audio-next"></div>
						<div class="audio-menu"></div>
						<div class="audio-volume"></div>
					</div><!--按钮-->
					<div class="audio-set-volume"><!--隐藏的音量条-->
						<div class="volume-box"><!--音量条-->
							<i><span></span></i>
						</div>
					</div><!--隐藏的音量条-->
					<div class="audio-list"><!--整个歌曲列表部分-->
						<div class="audio-list-head"><!--歌曲列表表头-->
							<p>歌单</p>
							<span class="menu-close">关闭</span>
						</div><!--歌曲列表表头-->
						<ul class="audio-inline"></ul><!--歌曲列表-->
					</div><!--整个歌曲列表部分-->
				</div>
			</div>
		</div><!--进度条中间内容部分完-->
	</div><!--整个进度条完-->   
  <!--播放器完-->  

</div><!--外部大框-->


</form>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/audio.js"></script>

<!--播放器-->
<script type="text/javascript">
$(function(){

	var song = [
		<?PHP 
						 include("../Connections/myconn.php");
						 mysql_select_db("music");
						 mysql_query('set names utf8');
						 $sql="select img,music,collect.name,collect.articleid from usarticle,collect where collect.articleid = usarticle.articleid and collect.username='".$username."' and kind = '0'";
						 $result=mysql_query($sql);
						 while($row=mysql_fetch_object($result))
						 {
						 ?>
		{
			
			'cover' : '../images/userwenzhang/<?php echo $row->img;?>',
			'src' : 'musicfile/<?php echo $row->music;?>',
			'title' : '<?php echo $row->name;?>'
		},
		<?php }?>
		
		
	];

	var audioFn = audioPlay({
		song : song,
		autoPlay : false  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	
});

</script>

</html>