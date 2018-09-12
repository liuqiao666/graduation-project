<?php
error_reporting(0);
session_start();
$id=$_GET['nameid'];//获取修改后的用户名
$username = $_SESSION['username'];//获取记录的登录名
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的主页</title>
<link href="css/own1.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php include("header.php");?>
<form id="form1" name="form1" method="post" action="">
<div class="main"><!--最外层-->
	 <?PHP 
     include("../Connections/myconn.php");
     mysql_select_db("music");
     mysql_query('set names utf8');
	 if (!empty($_SESSION['username'])) 
	{ 
		 if (!empty($id)) 
		{ 
		 $sql="select * from user where username='".$id."'";
		} 
		else
		{
	 		$sql="select * from user where username='".$username."'";
		}
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	} 
 	 $result=mysql_query($sql);
     $row=mysql_fetch_object($result)
     ?>
	<div class="information"><!--个人信息部分-->
    	<div class="head-img"><img src="../images/userheaderimg/<?php echo $row->image;?>"/></div><!--头像-->
    	<div><!--部分信息-->
        
          <div>
        	<div height="32"><h1>姓名：<?php echo $row->username;?><span class="xiugai">
        	 <p class="act">
                <a  href="person_xiugai.php?id=<?php echo $row->username;?>">修改信息</a>	
             </p>
        	</span></h1>
        	</div>
          </div>
          
            <div><h3 class="bigtext"></h3></div>
            <div class="cdinfo"><!--歌单信息-->
                	<ul>
                    	<li>
                        	<span>邮件:</span>
                        	<a><?php echo $row->email;?></a>
                        </li>
                        <li>
                        	<span>性别：</span>
                        	<a><?php echo $row->sex;?></a>
                        </li>
                        <li>
                        	<span>收货地址：</span>
                        	<a><?php echo $row->address;?></a>
                        </li> 
                    </ul>
             </div><!--歌单信息--> 
            
            <div>
            	<P>我的签名：<a><?php echo $row->myself;?></a></P>
            </div>
            
        </div><!--部分信息--> 
    </div><!--个人信息部分-->
    
    
    <div class="collect"><!--收藏的歌曲-->
    	<h2>分享圈收藏</h2>
    	<hr>
        <div class="pool10">
            	<div class="chart_artsit">
                	<ul>
                    	<li>
                        <?php 
						if (!empty($id)) 
						{ 
						 	$sql="select * from collect where username='".$id."' and kind=0 limit 4";
						} 
						else
						{
							$sql="select * from collect where username='".$username."' and kind=0 limit 4";
						}
						$result=mysql_query($sql);
						while($row=mysql_fetch_object($result))
						{
						?>
						<div class="chart_artsit_item">
                             <a class="ico_radio" href="" title=""><?php echo $row->name;?></a> 
                             <a class="buddy" href="sharing_open.php?sarticleid=<?php echo $row->articleid; ?>" title=""><img src="../images/userwenzhang/<?php echo $row->img?>" width="55" height="55"/></a>
                            <div class="private_act">
                              <a class="removeIT" href="psdelete_more1.php?number=<?php echo $row->articleid; ?>&username=<?php echo $row->username?>"  onclick="return confirm('取消收藏？');"></a><!--删除-->
                              </div><!--删除完-->
                            </div>  
                            <?php }?>
                       </li> 
                   </ul>
                </div>
            </div>
        <div class="p_more">
        	<a href="own_more1.php" title="更多">更多</a>
        </div>
        
    </div><!--收藏的歌曲-->
    
    
    
    
  <div class="collect"><!--收藏的期刊-->
    	<h2>期刊收藏</h2>
    	<hr>
        	<div class="pool10">
            	<div class="chart_artsit">
                	<ul>
                    	<li>
                        <?php 
						if (!empty($id)) 
						{ 
						 	$sql="select * from collect where username='".$id."' and kind=1 limit 4";
						} 
						else
						{
							$sql="select * from collect where username='".$username."' and kind=1 limit 4";
						}
						$result=mysql_query($sql);
						while($row=mysql_fetch_object($result))
						{
						?>
						<div class="chart_artsit_item">
                             <a class="ico_radio" href="" title=""><?php echo $row->name;?></a> 
                             <a class="buddy" href="periodical_open.php?particleid=<?php echo $row->articleid;?>" title=""><img src="../images/adminwenzhang/<?php echo $row->img?>" width="55" height="55"/></a>
                             <div class="private_act">
                    			<a class="removeIT" href="psdelete_more2.php?number=<?php echo $row->articleid;?>&username=<?php echo $row->username?>"  onclick="return confirm('取消收藏？');"></a><!--删除-->
                              </div><!--删除完-->
                            </div>  
                            <?php }?>
                       </li> 
                   </ul>
                </div>
            </div>

       <div class="p_more">
        	<a href="own_more2.php" title="更多">更多</a>
       </div> 
    </div><!--收藏的期刊-->
     
    
  <!--我来说两句-->
    <div id="wall" class="suggest suggest_1">
		<h3 >给我们的建议</h3>
    	<div class="suggest_2">
			<div class="suggest_form">
		  <form id="post_form" method="post" action="" style="display:block;">
					<div>
						<div class="auto">
                        	<textarea name="message" cols="60" rows="6" maxlength="300"></textarea>
						</div>
					</div>
            <p class="act">                    
				<input name="jy" class="suggest_input" value="提交" type="submit">	</p>
			</form>
			</div>										
		</div>
    </div><!--我来说两句-->  
    
    
</div><!--最外层-->

</form>
<?php include("footer.php");?>
</body>
</html>
<?php
if(isset($_POST['jy']))
{
	if (!empty($_SESSION['username'])) 
	{ 
		//查询建议人的信息
		if (!empty($id)) 
		{ 
			$sql1="select * from user where username='".$id."'";
		} 
		else
		{
			$sql1="select * from user where username='".$username."'";
		}
		$result1=mysql_query($sql1);
		$row1=mysql_fetch_object($result1);
		//提交建议
		if (!empty($id)) 
		{ 
			$sql2="insert into opinion(username,message,email) values('".$id."','".$_POST['message']."','{$row1->email}');";
		} 
		else
		{
			$sql2="insert into opinion(username,message,email) values('".$username."','".$_POST['message']."','{$row1->email}');";
		}
		$result2=mysql_query($sql2);
		//判断提交是否成功
		if($result2)
			//弹出提交成功
			echo "<script>alert('提交成功！');</script>";
		else
			echo "<script>alert('提交失败！');header('Location:person.php');</script>";
	} 
	else  
	{ 
	 echo "<script type='text/javascript'>alert('您未登录，请先登录！');location.href='../login.php';</script>"; 
	}
}

?>