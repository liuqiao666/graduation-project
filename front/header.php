<?php
error_reporting(0);
session_start();
$_SESSION['text']=$_POST['text'];
 header('Content-Type:text/html;charset=UTF-8');?>
<!--页面顶部! -->
<link href="css/nav.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<div id="nav" style="background-color: rgb(240,250,240);">
  <ul class="ul">
    <li class="menu1"><img src="images/logo.png" width="150" height="60"></li>
    <li class="menu2" style="padding-left: 50px;"><a href="index.php">首页</a></li>
    <li class="menu2"><a href="sharing.php">分享圈</a></li>
    <li class="menu2"><a href="periodical.php">期刊</a></li>
    <li class="menu2"><a href="exchange.php">商场</a></li>
    <div class="dropdown">
    <a href="#" class="dropbtn" style="font-weight:bold;">我的</a>
    <div class="dropdown-content">
      <a href="person.php" target="_blank">我的主页</a>
      <a href="update.php">上传</a>
      <a href="sign.php">签到</a>
      <a href="loginout.php">退出</a>
    </div>
  </div>
  
    <li class="menu3" style="padding-left: 50px;">
    	<form role="form" method="post" class="form" action="">
    	<input name="ss" type="text" id="text" size="20" class="search" placeholder="音乐搜索..."/>
     	<input name="search" type="submit" class="button" id="search" value="搜索"/>
        </form>
    </li>
    <li class="menu4"><a href="#"><!--<button>注册</button>--></a></li>
  </ul>
</div>


<?php
if(isset($_POST['search']))
{
	$text = $_POST['ss'];
	echo "<script>location.href='search.php?text=$text';</script>;";
}
?> 