<?php 
error_reporting(0);
session_start();//启用
if (isset($_GET['c']))
{
	$b=$_GET['c'];
	$_SESSION['c']=$_GET['c'];
	}
else{
	$b="";

}

$_SESSION['lx']=$_GET['lx'];
$_SESSION['yg']=$_GET['yg'];
$_SESSION['my']=$_GET['my'];
$_SESSION['js']=$_GET['js'];
$_SESSION['yc']=$_GET['yc'];
$_SESSION['xq']=$_GET['xq'];
$_SESSION['xzdlyy']=$_GET['xzdlyy'];
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>期刊</title>
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/periodical.css" rel="stylesheet" type="text/css" />
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
<form id="form1" name="form1" method="get" action="">
<div class="main"><!--中间整个外部大方框-->

	<div class="main-below"><!--中间下面整个方框-->
    	<div class="main-below-left"><!--中间下面左边部分-->
        	<div id="type">
            	<div>
                	<p class="title">音乐期刊</p>  
        		</div>
                
            	<div><h3 class="bigtext"></h3></div>
                
                <div>
                	<ul>
                    	<li><a class="new" href="periodical.php?c=最新上架" target="_parent"><b></b></a>
                        <d name="myset">最新上架</d>
                      </li>
                      
                    	<!--<li><a class="pop" href="periodical.php?c=本周流行" target="_parent"><b></b></a>
                        <d name="myset">本周流行</d>                      
                        </li>-->
                        
                        <li><a class="hot" href="periodical.php?c=热门推荐" target="_parent"><b></b></a> 
                        <d name="myset">热门推荐</d>
                        </li>              
                	</ul>
                </div>
            </div>
        </div><!--中间下面左边部分完-->
        
        <div class="main-below-right"><!--中间下面右边部分-->
        	<div>
            	<div style=" padding-right:15px; text-align:right; padding-top:10px;">
                	<div class="textcontainer">
       					<span class="particletext confetti">
                        <form action="" method="get">
                        <input type="submit" name="lx" class="bq" value="流行" />
                        <input type="submit" name="yg" class="bq"value="摇滚" />
                        <input type="submit" name="my" class="bq"value="民谣" />
                        <input type="submit" name="js" class="bq"value="爵士" />
                        <input type="submit" name="yc" class="bq"value="原创" />
                        <input type="submit" name="xq" class="bq"value="戏曲" />
                        <input type="submit" name="xzdlyy" class="bq" value="小众独立音乐" />
                        </form>
                		</span>
                	</div>
                </div>
                <div><h3 class="bigtext"></h3></div>
                
                <div class="main-below-right-down"><!--主体部分-->
         			 <?php 
						switch($b)
						{
							
							case "最新上架":  include("new.php");
							break;
							case "热门推荐":  include("hot.php");
							break;
							default:
							include("new.php");
							
							}
					
						?>

                </div><!--主体部分完-->
                
            </div>
        </div><!--中间下面右边部分完-->
	</div>
</div><!--中间整个外部大方框完-->
</form>
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