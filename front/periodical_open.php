<?php
error_reporting(0);
session_start();
$particleid=$_GET['particleid'];
$username = $_SESSION['username'];//获取记录的登录名
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>期刊单曲打开</title>
<link href="css/share.css" rel="stylesheet" type="text/css">
<link href="css/periodical_open.css" rel="stylesheet" type="text/css" />
<link href="css/APlayer.min.css" rel="stylesheet" ><!--播放器-->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<style type="text/css">
.pinglunnr { float:left; margin-left:20px; width:96%; height:auto; margin-top:10px; margin-bottom:10px;}
.name{ width:88%;font-size:18px; font-family:"楷体"; color:rgb(79,79,79); margin-bottom:5px; background-color:rgb(245,245,245);margin-left:60px;}
.nr{ width:88%; font-size:16px; font-family:"宋体"; color:#333;margin-left:60px;}
.time{float:right; margin-right:72%; color:#999; font-size:16px; font-family:"宋体";}
.huifufrom { display:none;}
.huifu{ display:block; font-size:16px; color:rgb(79,79,79); border:1px solid #CDC5BF; margin-left:72px; width:88%; margin-top:30px; background-color:rgb(245,245,245);}
.huifunr{ margin-left:20px; margin-bottom:4px;}

*{margin:0;padding:0;}
.page .abq{ margin-left:4px; color:#555;font-size:12px;cursor:pointer;text-decoration:none }
.page{margin:10px auto;text-align:left;width:700px;}
.page .abq,.page span{margin-right:4px;padding:3px 8px;margin-left:2px;line-height:20px;background:#f9f9f9;border:1px solid #dbdbdb;text-decoration:none;-webkit-border-radius:2px;-moz-border-radius:2px;-ms-border-radius:2px;-o-border-radius:2px;border-radius:2px;color:#333}
.page .abq:hover,.page span.cur{ font-size:12px;background-color:#999;color:#fff;border:1px solid #999;cursor:pointer}
.page span.tip{font-size:16px;margin-left:10px;border:0 none; background:none}

.towdimcodelayer {
    position:fixed;
    left: 500px;
    top: 400px;
    z-index:10000;
    margin-top: 0;
    opacity: 0;
    filter: alpha(opacity=0);
}</style> 
<?php
 require_once("page.php");//调用分页函数
 $page_size=4;//定义每页显示几条记录
 
 include("../Connections/myconn.php");
 mysql_select_db("music");
 $sql1="select * from adpinglun where admusicid='".$particleid."'";
 $result1=mysql_query($sql1);
 $count=mysql_num_rows($result1);//多少条数据
 //总页数为0则显示总页数为1
 if(($totalpage=ceil($count/$page_size))<1)//$totalpage=ceil($count/$page_size);//总页数 ceil函数向上取整
 {
	 $totalpage=1;
	 }
 else
 {
	  $totalpage=ceil($count/$page_size);
	 }
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
<div class="main"><!--外圈大框-->

<div class="back"><!--返回-->
    	<div class="back-p">
        	<a href="periodical.php">返回</a>
        </div>
    </div><!--返回完-->
	<?php 
	include("../Connections/myconn.php");
	mysql_select_db("music");
	$sql2="select * from adarticle where articleid='".$particleid."'";
	$result2=mysql_query($sql2);
	$row2=mysql_fetch_object($result2)
    ?>
	<div class="main-left">
      <div class="main-left2">
        	<div class="main-left2-1">
            	<img src="../images/adminwenzhang/<?php echo $row2->articleimg;?>"><!--图片-->
            </div>
            <div class="main-left2-2">
            	<h2><?php echo $row2->name;?></h2>
                <div class="cdinfo" style="font-size: 16px;"><!--歌单信息-->
                	<ul>
                    	<li>
                        	<span>制作人:</span>
                        	<a>管理员</a>
                        </li>
                        <li>
                        	<span>标签:</span>
                        	<a><?php echo $row2->classes;?></a>
                        </li>
                        <li>
                        	<span>更新时间:</span>
                        	<a><?php echo $row2->time;?></a>
                        </li> 
                    </ul>
             </div><!--歌单信息--> 
            </div>
        </div>
   
   	  <div class="sharing-audo"><!--播放器、分享、收藏等标签-->
      
    	<div class="container">
  			<div id="player1" class="aplayer"></div>
		</div>

        
        <!--收藏、分享-->
        <div id="play-2"><!--分享、收藏等标签-->
             <ul class="acts_list">
             	<li class="collect">
                   <a class="wrap" href="pcollecting.php?articleid=<?php echo $row2->articleid;?>">
                      <span>
                          <i></i> <?php echo $row2->collect;?>
                          <!--收藏-->
                       </span>
                   </a>
                </li>

                <li class="a_share">
                   <span>
                       <center>
                          <div class="share-demo">
                              <a href="javascript:void(0)" class="share wrap"><img src="images/share-ico.png"/></a>
                           </div>
                                    
                           <script type="text/javascript" src="js/share.js"></script>
                            <script  type="text/javascript">
                                 $('.share').shareConfig({
                                 Shade : true, //是否显示遮罩层
                                 Event:'click', //触发事件
                                 Content : 'Share', //内容DIV ID
                                 Title : '分享到' //显示标题
                                 });
                             </script>
                        </center>   
					</span>
                 </li> 
              </ul>
           </div><!--分享、收藏等标签-->
        
      </div><!--播放、收藏等标签-->
      
	  <!--歌单介绍-->
      <div class="music_gd">
    	<div class="music_w"><!--正文部分-->
        	<strong class="f1"><b>歌曲介绍</b></strong>
            <div class="f2"><?php echo $row2->mdescribes;?></div>   	   
        </div><!--正文部分-->
        <div class="music_w"><!--正文部分-->
        	<strong class="f1"><b>文章介绍</b></strong>
            <div class="f2"><?php echo $row2->articledescribes;?></div>   	   
        </div><!--正文部分-->
      </div>
      
     
      
      <div><!--打赏-->
      	
      	<div class="content">
			<div class="p-shang">
    			<a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下">打赏</a>
    		</div>
			<div class="hide_box"></div><!--让背景模糊-->
            
            <div class="shang_box">
                <a class="shang_close" href="javascript:void(0)" onClick="dashangToggle()" title="关闭"><img src="images/close.jpg" alt="取消" />
                </a><!--叉×图片-->
                <div class="shang_tit">
                    <p>感谢您的支持，我会继续努力的!</p>
                </div>
                <div class="shang_payimg">
                    <img src="images/alipayimg.jpg" alt="扫码支持" title="扫一扫" />
                </div>
                <div class="pay_explain">扫码打赏，你说多少就多少</div>
                <div class="shang_payselect">
                    <div class="pay_item checked" data-id="alipay">
                        <span class="radiobox"></span>
                        <span class="pay_logo">
                        	<img src="images/alipay.jpg" alt="支付宝" />
                        </span>
                    </div>
                    <div class="pay_item" data-id="weipay">
                        <span class="radiobox"></span>
                        <span class="pay_logo">
                        	<img src="images/wechat.jpg" alt="微信" />
                        </span>
                    </div>
                </div>
                <div class="shang_info">
                    <p>打开<span id="shang_pay_txt">支付宝</span>扫一扫，扫码打赏</p>
                </div>
            </div>
        </div>
        
      </div><!--打赏完--> 
     
	<!--我来说两句-->
    <div id="wall" class="suggest suggest_1">
		<h3 >我来说两句</h3>
    	<div class="suggest_2">
			<div class="suggest_form">
				<form id="post_form" method="post" action="" style="display:block;">
					<div>
						<div class="auto">
                        	<textarea name="content" cols="60" rows="6" maxlength="300"></textarea>
						</div>
			</div>
            <p class="act">                    
				<input name="pl" id="pl" class="suggest_input" value="发表评论" type="submit"></p>
			</form>
		</div>										
			<div class="wall_list" id="wall_list">	
		</div>
		</div>
        <br />
    <h3 >最新评论</h3>
        <hr style=" border:none;height:1px; margin-left:20px; margin-right:20px; background-color: #CCC;"/>
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
		 //查询评论的内容
		 $sql3="select * from adpinglun where admusicid='".$particleid."' limit $offset,$page_size";
		 $result3=mysql_query($sql3);
		 while ($row3=mysql_fetch_object($result3)) 
		 {

			echo "<div class='pinglunnr'>
			<div style='float:left; width=60px; height=60px;'>
			<img src='../images/userheaderimg/{$row3->userimg}' width='60' height='60'/></div>
			<div style='margin-left:10px;height:auto;'>
			<div class='name'>{$row3->username}<a href=''>@管理员</a>  <div class='time'>{$row3->time}</div></div>
			<div class='nr'>{$row3->content}</div></div>";
			
			//显示回复的链接
			echo "<a href='javascript:show(".$row3->id.")' style='float:right;font-size:16px;color:#666;'>回复</a>";
			
			//显示点赞的链接
			echo "<a href='action.php?act=praise&id=".$row3->id."&particleid=".$particleid."' style='float:right;font-size:16px;color:#666;'>赞(".$row3->praise.")&nbsp;|&nbsp;</a>";
			
			//构造SQL语句读取回复的内容
			echo '<div class="huifu">';
			$sql4="select * from adhuifu where jieshouid='".$row3->id."'";
			$result4=mysql_query($sql4);
			while($row4=mysql_fetch_object($result4))
			{
				echo "<div class='huifunr'>{$row4->username} : {$row4->content}</div>";
			}
			echo '</div>';
			//弹出的回复框
			echo '<form action="action.php?act=periodical_comment&id='.$row3->id.'&particleid='.$particleid.'" method="post" id="comment'.$row3->id.'" class="huifufrom"><br>
					<div class="suggest_2">
						<div class="suggest_form">
							<div>
								<div class="auto">
                        	<textarea name="content" cols="60" rows="6" maxlength="300"></textarea>
								</div>
							</div>
            				<p class="act">                    
							<input class="suggest_input" value="回复" type="submit">	</p>
						</div>										
					</div>
				</form>';
			echo "</div>";
		 }
		 echo page($totalpage,$page,$url="?particleid=$particleid&page=");//调用函数?>

<script type="text/javascript">
	function show(id){
		var obj=document.getElementById('comment'+id)
		if(obj.style.display=='' || obj.style.display=='none')
		{
			obj.style.display='block';
		}
		else
		{
			obj.style.display='none';
			}
		}
</script>
    </div><!--我来说两句-->  
  </div> <!--main-left-->  
    
</div><!--外圈大框-->

<!--播放器-->
<script src="js/APlayer.min.js"></script> 
<script>
    var ap1 = new APlayer({
        element: document.getElementById('player1'),
        narrow: false,
        autoplay: false,
        showlrc: false,
        music: {
            title: '<?php echo $row2->music;?>',/*歌名*/
            author: '',/*歌手*/
            url: '../admin/musicfile/<?php echo $row2->music;?>',/*歌曲*/
            pic: '../images/adminwenzhang/<?php echo $row2->articleimg;?>'/*歌曲图片*/
        }
    });
    ap1.init();
</script>
<?php include("footer.php");?>
</body>
</html>
<?php 
if(isset($_POST['pl']))
{
	$time = date("Y-m-d H:i:s");
	
	if (!empty($_SESSION['username'])) 
	{ 
		//查询评论人的头像
		$sql5="select * from user where username='".$username."'";
		$result5=mysql_query($sql5);
		$row5=mysql_fetch_object($result5);
		//插入评论信息
		$sql6="insert into adpinglun(admusicid,username,userimg,content,time) values('".$particleid."','".$username."','{$row5->image}','".$_POST['content']."','".$time."');";
		$result6=mysql_query($sql6);
		//判断评论是否成功
		if($result6)
		{
			//弹出评论成功并返回到原页面
			echo "<script type='text/javascript'>alert('评论成功！');location.href='periodical_open.php?particleid={$particleid}';</script>"; 
	}
		else
			echo "<script>alert('评论失败！');header('Location:periodical_open.php?particleid={$particleid}');</script>";
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	}
	
}?>