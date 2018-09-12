<?php
error_reporting(0);
function page($total_page,$page,$url="")
{

	$up=$page-1;//上一页
	$dn=$page+1;//下一页
	if($page>1){
		$outstr .= "<a class='abq' href='{$url}1'>首页</a>";
		$outstr .= "<a class='abq' href='{$url}{$up}'>上一页</a>";
	}
	if($total_page>1 and $total_page<7 and $total_page!=0)//$total_page总页数在1到10之间
	{
		if($page==1)
		{
			$outstr .=  "<a class='ab' href='{$url}1'><span class='cur'>1</span></a>";//显示的当前页码数变为绿色
			for($i=2;$i<=$total_page;$i++)
			{
				$outstr .= "<a class='abq' href='{$url}{$i}'>{$i}</a>";
			}
		}
		else 
		{
			for($i=1;$i<=$total_page;$i++)
			{
				if($i==$page)
				{
					$outstr .=  '<span class="cur">'.$i.'</span>';//显示的当前页码数变色
				}
				else
				{
					$outstr .= " <a class='abq' href='{$url}{$i}'>{$i}</a>";
				}
			}
		}
	}
	else//总页数大于10
	{
		if($page==1 and $total_page!=0 and $total_page!=1)
		{
			$outstr .=  '<span class="cur">1</span>';
			for($i=2;$i<=7;$i++)
			{
				$outstr .= "<a class='abq' href='{$url}{$i}'>{$i}</a>";
			}
		}
		elseif($page<5 and $total_page!=0 and $total_page!=1)//点击的页数小于页7
		{
			for($i=1;$i<=7;$i++)
			{
				if($i==$page)
				{
					$outstr .=  '<span class="cur">'.$i.'</span>';
				}else
				{
					$outstr .= " <a class='abq' href='{$url}{$i}'>{$i}</a>";
				}
			}
		}
		elseif($page<$total_page-3 and $total_page!=0 and $total_page!=1)//点击的页数小于总页数-3
		{
			for($i=$page-5;$i<=$page+4;$i++)
			{
				if($i==$page)
				{
					$outstr .=  '<span class="cur">'.$i.'</span>';
				}else
				{
					$outstr .= " <a class='abq' href='{$url}{$i}'>{$i}</a>";
				}
			}
		}
		elseif($page>=$total_page-3 and $total_page!=0 and $total_page!=1)//点击的页数大于等于总页数-3
		{
			for($i=$total_page-7;$i<=$total_page;$i++)
			{
				if($i==$page)
				{
					$outstr .=  '<span class="cur">'.$i.'</span>';
				}else
				{
					$outstr .= " <a class='abq' href='{$url}{$i}'>{$i}</a>";
				}
			}
		}
	}
	if($page<$total_page and $total_page!=1)
	{
		$outstr .= "<a class='abq' href='{$url}{$dn}'>下一页</a>";
		$outstr .= "<a class='abq' href='{$url}{$total_page}'>尾页</a>";
	}
	if($total_page > 1)
	{
	    $outstr .= "<span class=\"tip\">页数：".$page."/".$total_page."</span>";
	}
	return "<div class='page'>".$outstr."</div>";
}
?>