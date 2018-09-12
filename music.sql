-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 06 月 27 日 16:28
-- 服务器版本: 5.5.47
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `music`
--

-- --------------------------------------------------------

--
-- 表的结构 `adarticle`
--

CREATE TABLE IF NOT EXISTS `adarticle` (
  `articleid` varchar(32) DEFAULT NULL COMMENT '管理员发布的文章编号 管理员发布的文章编号',
  `name` varchar(32) DEFAULT NULL COMMENT '文章名称 文章名称',
  `music` varchar(225) DEFAULT NULL COMMENT '音乐文件 音乐文件',
  `mdescribes` varchar(225) DEFAULT NULL COMMENT '音乐简单描述 音乐简单描述',
  `classes` varchar(225) DEFAULT NULL COMMENT '文章分类 文章分类',
  `articleimg` varchar(50) DEFAULT NULL COMMENT '文章缩略图 文章缩略图',
  `articledescribes` varchar(2000) DEFAULT NULL COMMENT '文章描述 文章描述',
  `time` varchar(50) DEFAULT NULL COMMENT '管理员发布文章的时间 管理员发布文章的时间',
  `collect` varchar(225) DEFAULT '0' COMMENT '文章收藏量 文章收藏量'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员发布的文章信息 管理员发布的文章信息';

--
-- 转存表中的数据 `adarticle`
--

INSERT INTO `adarticle` (`articleid`, `name`, `music`, `mdescribes`, `classes`, `articleimg`, `articledescribes`, `time`, `collect`) VALUES
('7', '那时的风依旧', '夏川りみ - 黄金の花.mp3', '黄金の花が咲くという', '民谣', 'a7.jpg', '<p>\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">冲绳音乐的节奏来自生活本身，这些民谣具备厚实的时间沉淀，他不仅忠实的记录了冲绳数百年来的政治历史和社会变迁，还表现出小岛原住民充实自信的一面。就着这些岛歌里轻柔的三味线，冲绳的风情万种以及平远辽阔的海天一色总能温暖的绽放在人们眼前。当你回头望向远方，就这么轻易的让人心底的忧愁都消散在了风的嘶鸣以及鸟雀的欢愉中。</span>\n</p>\n<p>\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<p>\n		<p class="f-ust f-ust-1">\n			<strong>sharing：</strong>\n		</p>\n		<p class="f-ust f-ust-1">\n			<span style="color:#E53333;">黄金の花が咲くという</span>\n		</p>\n		<p class="f-ust f-ust-1 f-fs0 translated" style="font-size:12px;">\n			<span style="color:#E53333;">由传说而描绘出梦想的黄金之花</span>\n		</p>\n	</p>\n	<div class="j-line trans" style="margin:0px 0px 14px;padding:0px;color:rgba(0, 0, 0, 0.7);font-family:arial, 微软雅黑, &quot;font-size:14.4px;background-color:#FAFAFA;">\n		<p class="f-ust f-ust-1">\n			<span style="color:#E53333;">噂で夢を描いたの</span>\n		</p>\n		<p class="f-ust f-ust-1 f-fs0 translated" style="font-size:12px;">\n			<span style="color:#E53333;">听闻已经盛开</span>\n		</p>\n	</div>\n	<div class="j-line trans" style="margin:0px 0px 14px;padding:0px;color:rgba(0, 0, 0, 0.7);font-family:arial, 微软雅黑, &quot;font-size:14.4px;background-color:#FAFAFA;">\n		<p class="f-ust f-ust-1">\n			<span style="color:#E53333;">家族を故郷、故郷に</span>\n		</p>\n		<p class="f-ust f-ust-1 f-fs0 translated" style="font-size:12px;">\n			<span style="color:#E53333;">将家人留在故乡</span>\n		</p>\n	</div>\n	<div class="j-line trans" style="margin:0px 0px 14px;padding:0px;color:rgba(0, 0, 0, 0.7);font-family:arial, 微软雅黑, &quot;font-size:14.4px;background-color:#FAFAFA;">\n		<p class="f-ust f-ust-1">\n			<span style="color:#E53333;">置いて泣き泣き、出てきたの</span>\n		</p>\n		<p class="f-ust f-ust-1 f-fs0 translated" style="font-size:12px;">\n			<span style="color:#E53333;">挥泪远行的</span>\n		</p>\n	</div>\n<span style="color:#E53333;"></span><br />\n</span>\n</p>', '2018-05-15 21:32:23', '4'),
('8', '再见，二零一七。', 'Muma木马 - 纯洁2016.mp3', '人再怎么文艺，落入凡尘只是个俗人。家家有本难念的经，身为旁人的我们，只有默默的关注祝福祈祷，希望我们心中的那片乐土能继续存在下去。', '民谣', 'a8.jpg', '<p>\r\n	跟随着她 青春无比甜美\r\n</p>\r\n<p>\r\n	在奔跑时 孩子般的游戏\r\n</p>\r\n<p>\r\n	一起赞美吧 燃烧的火焰\r\n</p>\r\n<p>\r\n	明天永远只是明天\r\n</p>\r\n<p>\r\n	逝去了不会再来临\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;- 木马·纯洁\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	又一年要过去了，我们总是在所难免的要挥别过去，去迎接新的一年、新的生活。在生活、在情感、在岁月的感动中，我们总会留恋，留恋曾经所有的所有，造就的此刻我们。没有什么美好的东西能永远存在着，不是么？\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	感谢所有曾经在黑夜中给予我们孤独的灵魂以安抚的声音，在内心荒漠的世界里，是你们陪伴着我们独自等待与独自追寻着那一片绿洲，是你们让我们不曾忘记奔跑的力量和畅快，以及让我们为之疯狂并为之骄傲的原初。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	在未来能够重逢的日子里，希望这世界以及我们依旧能够变得干净并且温暖。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>14岁那年听了feifei run，从此爱上这个男人一发不可收拾。17岁那年有幸看了专场，结束后第二天清晨看着摆在桌上的签名专辑和海报突然大哭。那个夜晚就像是一场奇异的梦，高兴地变成了悲伤的风。我想在你面前永葆纯洁。</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	再见，二零一七。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;- 落在低处&nbsp;\r\n</p>', '2018-05-15 21:39:38', '3'),
('9', '座中何人 谁不怀忧', 'Yinyues - Everything.mp3', '秋风萧萧愁杀人，出亦愁，入亦愁。', '摇滚', 'a9.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"="">\r\n	这么些年来，时间总在渐慢的逝去。年轻时逆流而上的愤怒早已消散在这沉默的天空，你等待的那种无助以及绝望之后重生的力量并未如期到来。我们只能向前，向着“去经历改变，然后成熟”、以及“去接受现实，然后成长”出发，然后义无反顾的跳进一个又一个生命的轮回里。你可曾想过，当你跳进这生活深邃的黑洞之前，你是一个浪荡的痞子。而当你穿过黑洞之后，则摇身一变，穿上了精美的雅痞外衣。是什么让你外表变得“优雅漂亮”？又是什么让你的内部变得“沉默如烟”？\r\n	</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"=""><br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"=""> <strong>秋风萧萧愁杀人，出亦愁，入亦愁。座中何人，谁不怀忧。</strong> \r\n	</p>', '2018-05-15 21:44:16', '3'),
('1', '相信公路', '五条人 - 东莞的月亮.mp3', '我始终相信在每一个地方、无论是城市还是乡村，都有着这样一群普通的年轻人，他们不甘于沉默，他们会拼尽全力向这个世界表达自己的看法。', '民谣', '56d5141560fe9.jpg', '<p>\r\n	<span style="color:#E53333;">广东对于中国大陆来说是一个神奇复杂的地方，在这里生活的人们有着被海风吹打过后硬朗的背影、有着市井现实里狡黠的眼神、有着夜色深处悲伧的高歌而和、还有着高屋里的闲适自得。广东人比起全国其他地方的人来说，更愿意相信梦想、物质和规则。</span> \r\n</p>\r\n<p>\r\n	他们始终相信只要不停的努力，定能实现梦想花开；他们始终相信只要不停的打拼，定能富贵还乡；他们始终相信只要不停的吸新去旧，定能重塑世界之纲领。 &nbsp;本期音乐包含民谣、说唱、后摇、爵士、金属等风格。你可以从这一期音乐里听到宁静海边停泊的渔船、大戏里的宗族精神和传奇故事、乡下小路尽头里的青山巍巍、县城大道里奔驰而过的摩托车、城乡结合部里暧昧的发廊、夜市里喧哗的推杯换盏、工厂里轰隆而鸣的机器声、地铁里茫然等待的眼神、咖啡馆里的余韵残存、高楼顶上的振臂呐喊... &nbsp;独立音乐对于广东来说，由于广东地缘的特殊性，早期的独立音乐作品常被湮灭于港式音乐文化中。\r\n</p>\r\n<p>\r\n	不过近年来出现了如五条人、沼泽、玩具船长、六甲番等地域性极强的乐队，他们跳脱了地域文化的绝缘性，使得广东的独立音乐在全国范围内获得了更多的认知和认同。他们带着忙碌与悠闲里的众生相，将吉他带到了乡村、酒吧、咖啡馆、地下通道和城市广场，唱起这个地方里的秋去冬来与人情冷暖。 &nbsp;当你生活在这个地方，你无法逃脱城市里的霓虹闪烁，也无法逃脱海风拂面里的清清索索，所以你只能就着夜的声音，用一种相对悲壮的姿势，跳入茫茫人海中。\r\n</p>\r\n<p>\r\n	这一切就像北岛写的“如今我们深夜饮酒，杯子碰到一起，都是梦破碎的声音”。 &nbsp;我始终相信在每一个地方、无论是城市还是乡村，都有着这样一群普通的年轻人，他们不甘于沉默，他们会拼尽全力向这个世界表达自己的看法。就像这个世界上有那么多条路：有马路、铁路、航路、水路等。<strong>但是到最后，我们心中始终相信公路！</strong> \r\n</p>', '2018-04-19 20:07:34', '6'),
('2', '借我杀死庸碌的情怀', '谢春花 - 借我.mp3', '特别喜欢谢春花的声音，就像高中夏天某个只有选修课的下午。就像再也买不到的橘子味巧克力。就像甜甜的回笼觉。', '民谣', '56d5141ca9b7e.jpg', '<p>\r\n	借我不愁\r\n</p>\r\n<p>\r\n	借我童真不泯灭&nbsp;\r\n</p>\r\n<p>\r\n	借我不会失望的际会姻缘\r\n</p>\r\n<p>\r\n	借我杳无音信的荒岛人烟&nbsp;\r\n</p>\r\n<p>\r\n	借我风驰电掣脱离地平线\r\n</p>\r\n<p>\r\n	借我悲喜自酿的见异思迁&nbsp;\r\n</p>\r\n<p>\r\n	借我闲适的清明和幽冷的寒夜\r\n</p>\r\n<p>\r\n	借我诞出成熟到朽而天真的蜕变&nbsp;\r\n</p>\r\n<p>\r\n	借我无妄的想见\r\n</p>\r\n<p>\r\n	借我乐意的脸睑&nbsp;\r\n</p>\r\n<p>\r\n	借我转瞬万年的顷刻之间\r\n</p>\r\n<p>\r\n	借我一切归零的长夜睡眠&nbsp;\r\n</p>\r\n<p>\r\n	借我重回弱冠啊\r\n</p>\r\n<p>\r\n	不觉已是暮年<span style="font-size:18px;"><span style="font-size:24px;"></span></span>\r\n</p>\r\n<p>\r\n	终究未能谈及旦旦誓言&nbsp;\r\n</p>\r\n<p>\r\n	也未曾能决绝如初见&nbsp;\r\n</p>\r\n<p>\r\n	但求有光照亮黯淡&nbsp;\r\n</p>\r\n<p>\r\n	<strong><span style="font-size:16px;">予我明媚笑颜如春天</span></strong><img src="http://localhost/music/admin/js/kindeditor/plugins/emoticons/images/0.gif" border="0" alt="" /><span style="line-height:1.5;"></span>\r\n</p>', '2018-04-20 11:23:58', '1'),
('3', '听完一首歌', '宇西 - 那个男人（Cover 张碧晨）.mp3', '真的，我们连分手都没好好说过。', '流行', '011e695991678d0000002129ed7101.jpg', '<p>\r\n	<span style="font-size:16px;">人生就是不停地告别，与亲人、与朋友、与过去、与自己。</span>\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;">面对每一次的别离，我们都要好好告别。因为每次分开都可能是最后一次。相见时，要心存感激，像第一次那样。 书中记录了50个生活中的平凡故事，从这些朴实的文字中，可以让我们感悟到：不论是爱情、婚姻还是亲情，都需要我们有耐心并付出时间去探索、去守候、去珍惜。</span>\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;">生命原本是一场远行，谁与你相知，谁与你相爱，谁与你相处，谁与你擦肩，都是一场美丽的缘分。缘在，珍惜。就算终有一散，也不要辜负彼此的相遇。</span>\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;">至真至纯的故事，简单朴素的文字，温暖动人的情感，字里行间可以感受到温情与正能量。</span>\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"></span><span style="font-size:16px;">原来，真爱一个人，可以什么都不介意。&nbsp;</span>\r\n</p>\r\n<span style="font-size:16px;"> 真爱一个人，可以包容一切。&nbsp;</span><br />\r\n<span style="font-size:16px;"> 真爱一个人，可以忘记一切。&nbsp;</span><br />\r\n<span style="font-size:16px;"> <strong>就算没有忘记，可以假装看不见。</strong><strong>&nbsp;</strong></span>', '2018-04-20 11:34:36', '1'),
('4', '初冬的倒影', '岑宁儿 - 追光者.mp3', '这里荒芜寸草不生， 后来你来这走了一遭， 奇迹般万物生长， 这里是我的心。', '流行', '640x452.jpg', '<p>\r\n	春有狂花秋有月，冷风几度入冬雪，只有夏天，夏天是爱人的庆典，夏天是少女的祭祀，夏天从你裸露的锁骨和洁白的脚踝入场。我没有花月风雪，唯有让棕榈阳伞为你暂借荫凉，睡莲臂弯伴你一夜好眠，我一介凡人庸人无用之人，为了你，三两杯浊酒下肚，也想试试那些所谓的不可能，不二不重来的夏天。\r\n</p>\r\n<p>\r\n	七七和立夏喜欢上了同一个男孩，立夏没发现，七七没有说，小司选择了拒绝。谁都没有错，只是在对的时间遇上了错的人。\r\n</p>\r\n<p>\r\n	世界在变， 我们都在妥协， 我们依然没有得到自己想要的。 但我们还是那个会独自在房间里跳舞的少年。 我们无法成为大人，可是也不是少年。\r\n</p>\r\n<p>\r\n	爱情最怕：开始不给机会，中间不给空间，结局不给宽容。 人生若只如初见该多好。\r\n</p>\r\n<p>\r\n	后来我再也没有翻过夏至未至，一如我再也没有见过那个借我书的少年。\r\n</p>', '2018-04-20 11:44:34', '7'),
('5', '人生是把悲伤的钥匙', 'EastDear Park - Only Time Will Tell.mp3', '相信美好的发生，是当下活下去的最厚实的、也是唯一的理由。', '原创', 'a5.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	生活很复杂，可以肯定的是普通人一生中的不幸总是远远大过幸运。什么都可能失败，什么都可以失败，你只能接受，这一生都遇不到爱情，无法坚持一段友情，无能经营一个家庭，无力抵抗疾病，你哭着来，却做不到笑着走，人死灯灭，人走茶凉，其实我们都一无所有。\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	面对这般无奈生活，人生像是一把悲伤的钥匙，他总是能够轻易的打开生活里残酷的那一面。每个人都有自己的故事，不是每个人都能够正能量的冲破天际。但相信明天依然如期而至，相信美好的发生，是当下活下去的最厚实的、也是唯一的理由。\r\n</p>', '2018-05-15 21:13:48', '0'),
('6', '伟大的渺小', 'Black Shine,The House Pushers - Slow It Down.mp3', '愿你出走半生，归来仍是年少', '独立音乐', 'a6.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"="">所有艺术的伟大都来源于人内心里无尽探求，在这些宏大结构的音乐里，即兴式的段落启程，闪烁着光辉的古典华丽音符，足够让每个个体都显得无比的渺小。音乐画面里，不仅有史诗鏖战里的汪洋恣肆，还有带给人欢笑的小丑在落幕后独自抚面低泣。仿佛在对着世人说：来吧，偏执狂般的狂风暴雨！来吧，归寂于山林幽色的落寞！悲剧既然早已诞生，何必再去修饰这世界的荒诞！在哪戡不尽的滚滚红尘里，一如叔本华说的：幸福只是痛苦的减轻，而无法清除，只是伴随着幸福在逐渐减轻的过程。</span>', '2018-05-15 21:27:59', '0'),
('10', '只为时光 不为玩乐', 'Garry Schyman - Dancing Outtakes.mp3', '欢快又惬意，都是我喜欢你的样子。', '戏曲', 'a10.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	生命总是以一种奇妙的方式而展开的，或许迷惘，或许止步不前，更或许是格格不入。但生命是个奇迹，只要生命还在继续，奇迹就会继续。没有人知道自己活下去的话会发生什么，所以就让奇迹继续吧！\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	生命里最美好的事莫过于在会心一笑里收获一把生命的砰然感动。\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	这期音乐为原声音乐专题，有来自世界各地的民族乐器演奏。整期音乐仿佛用一种迷离欢快的舞步把生命里最为灿烂的那一部分层层推进展开，然后让人释然于人世间的真相里。\r\n</p>', '2018-05-15 21:46:23', '3'),
('11', '成长历程', '买辣椒也用券 - 起风了.mp3', '年少的我带着对这个世界的向往，一个人踏上征程，在走走停停的旅途中告别渐行渐远的故乡，一路上历尽风吹雨打，也不曾为自己的选择感到后悔与退缩，也终于在多年的漂泊中得以见识世界之大。', '原创', 'a11.jpg', '初闯世间的少年，意气风发的模样，从前初识这世间，万般流连，也甘愿赴汤蹈火去走他一遍，这种字里行间的自信和神采让我非常向往，一腔热血跃跃欲试。不过非常难得的是如今走过这世间，依旧万般流连，翻过岁月不同侧脸，见识过世事复杂，依旧年轻的那种心态，是未曾被岁月蹂躏殆尽的人。 还有那份心动。其实是偶然一次脑海里突然想到了这句微凉晨光里，再次见到你，笑得很甜蜜。意外理解了那份欣慰。 总的来说，歌词描绘的像是一种内心世界，只不过倒更类似于乌托邦式的，既年少又成熟。心路历程皆有迹可循，我愿意相信这是个不得真假，不做挣扎，不惧笑话的年轻人。', '2018-06-01 21:54:23', '0'),
('12', '光年之外', 'G.E.M.邓紫棋 - 光年之外.mp3', '危难中相爱”的旅程被演绎得真切诚挚，使听者感动不已。', '原创', 'a12.jpg', '嗓音独特唱功深厚的她将这场旷世爱恋的情感拿捏得十分准确，来自遥远太空的旋律饱含深情，“一种执迷不放手的倔强，足以点燃所有希望”等歌词又将劳伦斯和帕拉特共度危机的决心娓娓道来，两人“乱世外相遇，危难中相爱”的旅程被演绎得真切诚挚，使听者感动不已。', '2018-06-01 22:00:53', '0'),
('13', '半城烟沙', '许嵩 - 半城烟沙.mp3', '半城烟沙 兵临池下 金戈铁马 替谁争天下 一将成 万骨枯 多少白发送走黑发', '原创', 'a13.jpg', '这首原创歌曲《半城烟沙》，则把思辩的主题落到了"战"与"和"之上，别具禅意。音乐方面，强节奏，加独门唱法，已经成为招牌;不愠不火、不动声色的演绎，以慵懒的旁观姿态，静待一场一触即发的厮杀，愈加凸显战争的冰冷残酷。而作者的反战立场，也尽在歌曲中了。独特的视角、悲悯的情怀、含蓄内敛的表现手法，给人留下深刻印象 。', '2018-06-01 22:54:23', '0'),
('14', '泡沫', 'G.E.M.邓紫棋 - 泡沫.mp3', '阳光下的泡沫 是彩色的 就像被骗的我 是幸福的 追究什么对错 你的谎言 基于你还爱我', '流行', 'a14.jpg', '这首歌能在沉稳低吟中道出爱与承诺的脆弱，同时也能爆发出巨大能量就像看透这爱情泡沫而破茧新生。这首歌向人们揭示了一个道理：爱情如泡沫般唯美动人，但是用手轻轻一碰就破了，提醒人们要珍惜对方，守护爱情的美好。', '2018-06-02 09:12:03', '0'),
('15', '桃花诺', 'G.E.M.邓紫棋 - 桃花诺.mp3', '初见若缱绻 誓言 风吹云舒卷 岁月间 问今夕又何年 心有犀但愿 执念 轮回过经年 弹指间 繁花开落多少遍', '原创', 'a15.jpg', '邓紫棋突破演绎出浓浓的古韵中国风，将那段荡气回肠的玄古炽恋娓娓诉来。伴随着婉转悠扬的古典曲风、唯美上口的曲调，邓紫棋的独特声线在舒缓之中流露出丝丝朦胧伤情，浓郁有力、层层递进的副歌更是平添几分力量美感，将赤云(黄晓明饰)与阿寞(宋茜饰)的缠绵绮恋娓娓道来。"听雨书，望天湖，人间寥寥情难诉，回忆斑斑，留在爱你的路"，情愫万千，如泣如诉，令人闻之动容。', '2018-06-02 15:22:23', '0'),
('16', '七月上', 'Jam - 七月上.mp3', '《七月上》是Jam演唱的一首歌曲，由Jam本人作曲作词，于2015年4月17日发布，发布后受到许多人的关注与喜爱，成为新时代流行歌曲。', '小众独立音乐', 'a16.jpg', '在走向你心里的旅途里，乘风破浪，踏破黄沙，就算是我自己的误会一场，也算不辜负我的勇气。甚至我希望你能说些谎言欺骗我，因为没见到南墙我就不会退缩。一路上的心酸只能用笑掩饰。在我的世界里，你似乎在很遥远很荒芜的地方，我希望明白你的经历，你的痛苦，我想把我的一切都给你。', '2018-06-01 10:32:45', '0'),
('17', '我的将军啊', '半阳 - 我的将军啊.mp3', '狼烟风沙口 还请将军少饮酒 前方的路不好走 我在家中来等候', '小众独立音乐', 'a17.jpg', '风霜满面的将军下马问路边茶娘: “大婶，你知道附近那个说话很温柔的卖茶 姑娘住在哪吗” 茶娘笑笑: “她呀，嫁了个好人家，衣食无忧， 听说过的很好” 将军叹息，从怀中掏出块手绢， 请您帮我把这个还给她， 谢谢她当丰的茶点心。 日落马远，茶娘小心将手绢系在手腕， 向食客吆喝: “老娘今天开心，所有茶水半价。”', '2018-06-02 16:54:23', '0'),
('18', '樱花樱花想见你', 'RSP - さくら ~あなたに出会えてよかった~.mp3', '『さくら さくら 会いたいよ いやだ 君に今すぐ会いたいよ』 樱花，樱花，想见你，现在就想要见你 だいじょうぶ もう泣かないで 私は风 あなたを包(つつ)んでいるよ 没关系，不要再哭了，我是风，正包围在你的身边。', '小众独立音乐', 'a18.jpg', '《樱花樱花，想见你》(《さくら ~あなたに出会えてよかった~》)是一首由高野健一填词、作曲，RSP演唱的歌曲，被收录于rsp组合2009年2月25日发行的同名专辑内 。该歌词创作灵感起源于西加奈子的小说《樱》 。', '2018-06-03 18:00:53', '0'),
('19', '伴虎', '许嵩 - 伴虎.mp3', '《伴虎》是内地知名独立音乐人许嵩演唱并填词作曲的华语流行歌曲。该歌曲是许嵩发行的个人第四张词曲全创作专辑《梦游计》中的一首歌曲。', '原创', 'a19.jpg', '许嵩巧妙地将旧朝的君臣关系、以及主子事后文过饰非颠倒黑白的故事，来铺陈出现代人在职场、或生活中总会碰到的卸磨杀驴的经历，可谓是寓意深远而又令人印象深刻。', '2018-06-03 08:45:23', '1'),
('20', '烟火里的尘埃 ', '华晨宇 - 烟火里的尘埃 (2014北京火星演唱会).mp3', '《烟火里的尘埃》是华晨宇演唱歌曲，由林夕作词，西楼谱曲，西楼、郑楠编曲，收录在华晨宇2014年发行专辑《卡西莫多的礼物》中。', '原创', 'a20.png', '热气蒸腾夏夜草叶与水雾，迸出的火星四溢。流光携暗紫色烟气扶摇而上，愈上愈缥缈，在肉眼中消失的刹那从黑暗里汲取蠢蠢欲动的颜与色，极致、热烈以至张牙舞爪的盛开。待繁华默去，再化为尘埃，独自静默在人来人往里。', '2018-06-03 10:00:53', '0'),
('21', '你是我唯一的甜', '江语晨 - 浪漫爱.mp3', '在这复杂的世界里，你是我唯一的甜', '流行', '109951163322230022.jpg', ' 我要做一只会织美梦的兔子</p></br>\n我要做一只会闹撒娇的猫咪</p></br>\n我要做一只会粘着人的小狗</p></br>\n我要做一只会摘星星的小鹿</p></br>\n我要做一只会打怪兽的大象</p></br>\n我要做一颗会照亮你的星星</p></br>\n我要做一块会喝牛奶的蛋糕</p></br>\n我要做一块会融化的巧克力</p></br>\n我要做一只草莓味的冰淇淋</p></br>\n我要做一只甜腻腻的棉花糖</p></br>\n我要做一只装满蜜糖的罐子</p></br>\n我要做一只香气四溢的蜜桃</p></br>\n我要做一片粉红色的樱花瓣</p></br>\n我要做一支会写你名字的笔</p></br>\n我还要做你的小可爱</p></br>\n</p></br>\n文 | 柯北</p></br>\n封 | 《小魔女宅急便》</p></br>', '2018-04-19 20:07:34', '0'),
('22', '今天最好，不说来日方长', '邵夷贝 - 时过境迁.mp3', '生命来来往往，来日并不方长', '流行', 'u=3661996928,1420908291&fm=27&gp=0.jpg', '那些支撑我们一路向前的人和事，如果你不精心的看守，在漫漫无边的以后，只会变成幻影，愈加支离破碎。</p></br>\n\n我们总爱说，来日方长，但大多数时候是并没有来日的。﻿﻿ 总要经历些什么，尝到遗憾和懊悔的辛辣后，才知道什么叫珍贵，才会懂得世间并没有那么多来日。</p></br>\n\n所以，如果你有想爱的人就趁早去爱，有想做的事情就及早去做，别等来日，好好珍惜当下。﻿﻿</p></br>\n\n生命来来往往，来日并不方长。﻿﻿尽情去爱，拼命去抓住。别等，别遗憾。</p></br>', '2018-04-20 11:23:58', '0'),
('23', '我想你了', '戚薇 - 第三人称.mp3', '后来你哭了，想安慰却忘了早已换了身份', '小众独立音乐', 'timg1.jpg', ' “你还好吗？</p>\n“挺好的啊，你呢？”</p>\n“还好”</p>\n“她........好吗”</p>\n“她告诉我挺好的”</p></br>\n\n其实每个人的心里都有一个前任</p>\n后来再提起已经无关乎爱与不爱了</p>\n也打心底接受了这段感情注定没结局的事实</p>\n但却会永远记得那段过去与那个人</p></br>\n\n因为我们都会记得曾经付出过真心也得到过别人真诚的喜欢</p>\n我们曾拼命想要给这段感情加上一辈子的砝码，却要咬着牙接受所谓命运的安排</p>\n我们哭喊着自己学会了如何去爱，自己懂得珍惜了\n却也要承认有些人不会一直站在原地等你长大</p></br>\n\n人生的出场顺序真的很重要</p>\n那个看过你单纯幼稚的人注定见不到你在恋爱里游刃有余的样子</p>\n那个陪你酩酊大醉的人注定不能站在门口等你回家\n那个错过而离开的人，注定是用来怀念的\n</p>\n那个曾经说非你不娶的人</p>\n找到了他的人生伴侣</p>\n那个曾爱着你浪漫的姑娘</p>\n最后也得到了别人给的温暖</p></br>\n\n我们都在不懂爱的年纪拼尽全力地爱过一个人</p>\n再用上很久的时间</p>\n学会如何去爱</p>\n学会如何告别</p>\n最后遇上一个对的人</p>\n过着差不多的生活</p></br>\n\n那句话说的对： " 幸福从来都不是故事，不幸才是。 "</p>\n慢慢地你会发现</p>\n很多人都不能和喜欢的人在一起</p>\n有些人只适合遇见</p>\n有些故事只适合珍藏</p></br>\n\n我在深夜里唱着你爱听的歌</p>\n但身旁再无依偎着的你</p></br>\n\n后来</p>\n你哭了</p>\n我却不知道怎么安慰</p>\n因为我知道</p>\n已经换了身份</p></br>\n\n总有一首，在诉说你的故事</p>\n晚安</p>', '2018-04-20 11:34:36', '0'),
('24', '命运的玩笑', '张韶涵 - 复活节 (Live).mp3', '于时间的长廊上 你再也不等我', '流行', 'timg2.jpg', '无妄的误会</p>\n苍白的解释</p>\n必然的分歧</p>\n你前进 我后退</p>\n我们爱对方整整一个曾经</p>\n其实谁都没有错</p>\n只是命运爱跟你开玩笑。</p></br>\n\n海鸟本来不该和鱼相爱</p>\n承诺的时候都是认真的</p>\n确实做不到的时候</p>\n才发现做不到了</p>\n从来没有什么注定在一起</p>\n但最终都会有人拥抱你。</p></br>\n\n歌单名来自张悬</p>《love,new year》歌词', '2018-04-20 11:44:34', '0'),
('25', '地下酒吧', 'V.A. - Crazy right.mp3', '爵士与调酒师的香醇情调', '爵士', 'timg1122.jpg', ' 这只是庞大的明斯特城里的一个街区。天下着雪，鹅毛般从天空中铺盖下来，为整座城添了一层厚厚的银妆。</p></br>\n\n巷子里的一间酒吧内，酒客们或围坐一桌，或并排坐在吧台前。有些人手舞足蹈的谈天说地，有些人似乎是在比赛般抢着饮下啤酒，有些人似乎被喧闹的玩笑话题点中、满脸通红的低下头。伴随着精彩绝伦的爵士演奏，酒吧似乎散发着令人沉沦的魔力。</p></br>\n\n在淡黄却不昏暗的灯光下，一位酒保在递送一杯调制好的鸡尾酒时，仿若不经意的将一张纸条放在杯底，两人短暂对视，心有灵犀的露出只可意会的微笑。而不远处，人们都凑在一张张赌桌前，在能将人淹没的巨额筹码下没有人能抗拒金钱的魔力，每个人的眼里都闪烁着有些疯狂的贪婪光芒。</p></br>\n\n最里面的包厢里，以中年发福男子为主体的群体围坐在一张圆桌前，从他们剑拔弩张的谈吐中似乎能感到无形间的一场不流血的交锋。或许是赶时髦，他们多数人手里都戴着或金或银的名表，这使得他们在争论中挥舞手腕时显得格外有力。一群穿着厚皮衣带着圆筒帽的男人们聚集在包厢门口，警惕的眼神、紧密的站位、腰间偶尔现出的黑色光泽，都说明了这群人的身份。</p></br>\n\n巷子外，无家可归的流浪汉们围坐在火堆前，身上不知从何处捡来的破大衣，各自彼此的脸上满是肮脏的痕迹，但是他们浑浊的眼中此刻却流露出些许的宁静与安详。</p></br>\n\n这就是明斯特，一座在巨大的资本洪流中如孤岛般的城市。城里的人们或哭或笑、或疯狂或平静的脸汇聚在一起，仿佛一片人的海洋所拼凑成的一副奢靡颓唐的浮世绘。</p></br>', '2014-05-27-12:58', '2'),
('26', '异国风情', 'Mili - In imperial capital.mp3', '中世纪幻想｜吟游诗人与异国风情', '爵士', '13869473648597363.jpg', '吟游诗人，漫步在茂翳的花园，行走在广阔的雪原。</p></br>\n\n头戴花圈的少女，身着民族服饰的身姿，飘逸的长裙，脸上带着的是淳朴的笑容。</p></br>\n\n身挎风琴的旅者，身着古旧衣裳的背影，悠扬的琴声，背后留下的是自由的心灵。</p></br>\n\n吟游诗人，高唱着赞美的歌谣，诉说着奇妙的物语。</p></br>\n\n青翠的牧场上，休息着的牧女，松散了农事的附近的田夫农妇，享受着片刻的闲暇。</p></br>\n\n热闹的集市中，忙碌着的商人，看管着摊子的小镇的当地居民，招呼着过往的旅人。</p></br>\n\n来吧！打开中世纪幻想的大门，踏上异国的土地吧！</p></br>', '2018-05-27-13:00', '1'),
('27', '别样戏曲', '银临、Aki阿杰 - 牵丝戏.mp3', '流行歌曲与戏曲唱腔的完美邂逅', '戏曲', '1247947354758574.jpg', '本单收录了部分流行音乐中带有戏曲唱腔或戏曲元素的歌曲，或者是演唱者自己演唱的。</p></br>\n\n戏歌者，传统戏曲与流行歌曲的混合体。周杰伦的《霍元甲》，陶喆的《Susan说》以及王力宏的《盖世英雄》等等，都把戏剧和通俗歌曲嫁接起来，深受年轻人欢迎。戏剧凭借着千古不变的魅力，给流行音乐注入了全新的概念和活力。</p></br>\n\n\n对于戏歌这种形式，各方褒贬不一。有人认为这是对国粹的亵渎，如有人说呈现于流行歌曲中的戏剧的唱腔和念白呈现了一种怪异的感觉，不但不能使歌迷因此迷上戏剧，反而加剧他们对于戏剧老朽、没落的观念；也有人认为这是对音乐的创新，用时尚的R&B等手段来包装、演唱传统戏曲可以使歌迷重新认识中国古老文化的魅力，找到心灵深处的民族归宿。</p></br>\n\n\n任何艺术形式都是相通的，融会贯通才是生命力。戏歌的形式作为在流行音乐中注入戏剧元素的探索值得肯定，当然也需要进一步完善。与现代音乐结合说明戏剧应该因时而变、为时代服务，但不能全盘接受、机械照搬；戏剧与现代音乐结合也可以提高戏剧自身的影响力。</p></br>\n', '2018-05-27-13:03', '9'),
('28', '春波绿惊鸿 一瞥西厢记', 'chill boy - 遇•秋雨.mp3', '当国风遇上说唱', '戏曲', '1849374854738334.jpg', '柳絮春意撩人</p>\n贪恋如画</p></br>\n\n青梅残寒独盛</p>\n入雪既瘾</p></br>\n\n\n你花媚一笑 我此生醉恋无憾</p></br>\n\n\n简介/ Brief Introduction</p></br>\n', '2018-05-27-13:10', '1'),
('29', '原创古风', '奇然liya - 殿书.mp3', '用什么样的节奏用什么样的色彩和弦是非常考验一个人的音乐功力的', '原创', '147890987654344.jpg', '作曲者是给了骨架，而编曲者则是给了血肉\r\n<p>\r\n	<br />\r\n</p>\r\n一人一首编曲作品，带你感受古风编曲的魅力\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n编曲：根据已知的主旋律和创作者希望表现出来的作品的风格，专门为这首歌曲或者是音乐作品编写伴奏和声进行的过程。\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n里面要用到哪些乐器选用什么样的节奏用什么样的色彩和弦是非常考验一个人的音乐功力的\r\n<p>\r\n	<br />\r\n</p>\r\n<br />', '2018-04-30-08:00', '5'),
('30', '梦幻流行', 'slowdive - Sugar for the Pill.mp3', '纵晨霭所往，长眠雪森', '摇滚', '98765872499876543234.png', ' 眼前没有尖锐的银色秒针，</p>\n没有弥漫灰尘躲进眼睛，</p>\n没有乌黑的街道和器官。</p>\n只有松针层叠，</p>\n成为碧绿的守护。</p></br>\n\n身下没有冗长乏味的柏油，</p>\n没有浑浊虚空企图吞噬脊骨，</p>\n没有借不安躲藏的秘密屋宇。</p>\n只有拱起土壤身躯，</p>\n拥一切入怀中。</p></br>\n\n如果这里森雪绵长，</p>\n为何不长眠于这雪森？</p>\n与波澜起伏的北极光，</p>\n一曲呓语幻。</p></br>\n\n-</p></br>\n\n那究竟何为梦幻流行？</p></br>\n\n我说是呓者予梦的解析。</p>\n是玻璃雾气氤氲的海岸线。</p>\n是困倦紧锁迟来的一卷梵香。</p>\n是绯梦裹挟与缠绵悱恻的雨夜。</p>\n是割裂霜雪冷烟缱倦后锈色霓虹。</p>\n是花灯呼啸过晴空逃匿伊始的欢愉。</p>\n是梅雨季节黄昏晕染芋色的绵长森雪。</p></br>\n\n这个极具浪漫主义色彩的流派正如其名，</p>\n无法言说的氛围渐层与浅唱低吟中，</p>\n夹带着烟雨朦胧的幸福与甜蜜。</p>\n将那一切思绪交付于音浪，</p>\n做场淋漓酣畅的美梦。</p></br>\n', '2017-02-11-13:16', '25'),
('432', '2342', '宇西 - 那个男人（Cover 张碧晨）.mp3', 'erwew', '流行', '1.jpg', 'ewrwerwer', '2018-06-27 14:21:04', '0');

-- --------------------------------------------------------

--
-- 表的结构 `adhuifu`
--

CREATE TABLE IF NOT EXISTS `adhuifu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jieshouid` int(30) NOT NULL,
  `username` varchar(60) NOT NULL,
  `content` varchar(600) NOT NULL,
  `time` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `adhuifu`
--

INSERT INTO `adhuifu` (`id`, `jieshouid`, `username`, `content`, `time`) VALUES
(1, 8, '巧巧的小号', '应该是把表演者的名字都说了一遍包括伴奏的', '2018-05-27 13:15:14'),
(2, 8, '时光', '现场版的最后参演人员报名', '2018-05-29 20:56:08'),
(3, 5, '时光', '想要潇洒还是手上拿把伞，就是不撑开的走在雨中', '2018-05-29 20:57:42'),
(4, 7, '刘巧', '什么电影？ ', '2018-06-01 23:43:05'),
(5, 11, '刘巧', '歌声缠绕着\r\n舞着的我们\r\n什么都没有失去\r\n只是破碎了\r\n有些在眼里流淌\r\n轻狂的我们\r\n轻轻的唱着\r\n每一个被遗忘的美梦\r\n步伐紧随着节奏\r\n（这是最后一段的呓语） ', '2018-06-02 21:19:31'),
(6, 17, 'liuqiao666', '瑞特让他', '2018-06-19 16:38:29'),
(7, 16, 'liuqiao666', '666666', '2018-06-19 20:12:45');

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminname` varchar(32) DEFAULT NULL COMMENT '管理员名称 管理员名称',
  `adminpassword` varchar(32) DEFAULT NULL COMMENT '管理员密码 管理员密码',
  `email` varchar(225) DEFAULT NULL COMMENT '管理员邮箱 管理员邮箱',
  `limits` varchar(1) DEFAULT '2' COMMENT '管理员权限等级：1为最高等级，2为一般等级'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员信息 管理员信息';

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`adminname`, `adminpassword`, `email`, `limits`) VALUES
('chenmei', '111111', '234657586@qq.com', '1'),
('yuxin', '666666', '3634454464@qq.com', '1'),
('liuqiao666', '666666', '1255394075@qq.com', '2');

-- --------------------------------------------------------

--
-- 表的结构 `adpinglun`
--

CREATE TABLE IF NOT EXISTS `adpinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admusicid` varchar(32) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userimg` varchar(60) NOT NULL,
  `content` varchar(600) NOT NULL,
  `time` varchar(60) NOT NULL,
  `praise` int(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `adpinglun`
--

INSERT INTO `adpinglun` (`id`, `admusicid`, `username`, `userimg`, `content`, `time`, `praise`) VALUES
(1, '7', '巧巧的小号', 'bg.jpg', '忽然听到这样的声音，真的好感动 ', '2018-05-27 13:12:56', 0),
(4, '12', 'liuqiao666', 'portfolio2.jpg', '虽然这是一首商业歌曲，但是质量却高的出奇，在现在满大街的商业性宣传歌曲，能做出自作自唱这样的水平，真的是不可思议，不愧是邓紫棋！！', '2018-05-29 20:53:59', 0),
(5, '12', 'liuqiao666', 'portfolio2.jpg', '刚下火车出站，外面下雨了，10元一把的伞了，咬咬牙忍了！听着这首歌潇洒的走在雨中 ', '2018-05-29 20:55:18', 0),
(6, '12', 'liuqiao666', 'portfolio2.jpg', '即便你在光年之外，我也会竭尽所能找到你。没有人能躲藏，爱是永恒，便是永生！本来昨天要去离婚的，和老婆约好一起开车去，就像当初一起开车去领证，也算是好聚好散。只不过，当初是一路阳光一路欢笑，昨天是一路阴霾一路沉默。两人有太多不可调和的矛盾，人都说婚姻能把人的棱角磨平，我们却越过越个性分明。到达民政局把车停好，我提议先去对面的小饭店吃个早餐，她同意了。我们走进店里，点了豆浆油条，正准备吃的时候，小饭店', '2018-05-29 20:55:23', 0),
(7, '12', 'liuqiao666', 'portfolio2.jpg', '看了电影后会对这首歌的理解更加深刻，真的十分契合耶 ', '2018-05-29 20:56:00', 0),
(8, '7', 'liuqiao666', 'portfolio2.jpg', '我很想知道最后她们都说了些什么，为什么我感觉很难受 \n', '2018-05-30 11:56:56', 0),
(9, '7', 'liuqiao666', 'portfolio2.jpg', '第一次听霓虹島唄就是这种风格的，带点民谣的感觉。但其实这还不是最早的島唄的感觉。早年的风格让我听了难忘 ', '2018-05-30 13:12:47', 0),
(10, '12', '刘巧', '2.jpg', '好好听好好听 歌手上第一次听没感觉 今晚无意间听好喜欢 我要开始循环邓紫棋的歌了 ', '2018-06-01 23:56:47', 0),
(11, '8', 'liuqiao666', 'portfolio2.jpg', '全世界把“啦啦啦啦啦啦啦”唱的最好听的乐队 ', '2018-06-02 21:18:32', 0),
(12, '8', 'liuqiao666', 'portfolio2.jpg', '我听过的所有关于青春的作品中最好的一首！第一次听时泪流满面 ', '2018-06-02 21:18:47', 0);

-- --------------------------------------------------------

--
-- 表的结构 `collect`
--

CREATE TABLE IF NOT EXISTS `collect` (
  `username` varchar(32) DEFAULT NULL COMMENT '用户名 用户名',
  `articleid` varchar(32) DEFAULT NULL COMMENT '收藏的文章的编号 收藏的文章的编号',
  `name` varchar(50) DEFAULT NULL COMMENT '文章名称 文章名称',
  `img` varchar(50) DEFAULT NULL COMMENT '文章缩略图 文章缩略图',
  `kind` varchar(1) DEFAULT NULL COMMENT '收藏的类型：1为期刊，0为用户分享',
  `tjrname` varchar(32) DEFAULT NULL COMMENT '文章推荐人的用户名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户的收藏';

--
-- 转存表中的数据 `collect`
--

INSERT INTO `collect` (`username`, `articleid`, `name`, `img`, `kind`, `tjrname`) VALUES
('liuqiao666', '7', '一腔孤勇', 'u7.jpg', '0', '时光'),
('liuqiao666', '1', '相信公路', '56d5141560fe9.jpg', '1', '管理员'),
('liuqiao666', '10', '以后的伤口', 'u12.jpg', '0', 'liuqiao666'),
('liuqiao666', '19', '伴虎', 'a19.jpg', '1', '管理员');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `reviewer` varchar(32) DEFAULT NULL COMMENT '评论者名称 评论者名称',
  `respondent` varchar(32) DEFAULT NULL COMMENT '被评论者名称 被评论者名称',
  `coment` varchar(225) DEFAULT NULL COMMENT '评论内容 评论内容',
  `image` varchar(32) DEFAULT NULL COMMENT '评论者的头像',
  `time` varchar(32) DEFAULT NULL COMMENT '评论的时间',
  `articleid` varchar(32) DEFAULT NULL COMMENT '文章的编号',
  `kind` varchar(1) DEFAULT NULL COMMENT '1为期刊，0为分享圈',
  `dzlike` varchar(32) DEFAULT '0' COMMENT '点赞数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户评论 用户评论';

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`reviewer`, `respondent`, `coment`, `image`, `time`, `articleid`, `kind`, `dzlike`) VALUES
('巧巧的小号', '管理员', '我很喜欢这种类型的歌曲。', 'code-wallpaper-8.jpg', '2018-05-22 13:06:45', '9', '1', '1'),
('liuqiao666', '管理员', '你是年少的欢喜', 'portfolio2.jpg', '2018-05-16 21:05:06', '10', '1', '0'),
('liuqiao666', '时光', '不开心的时候 总会听到这首', 'portfolio2.jpg', '2018-05-16 20:47:54', '9', '0', '1'),
('liuqiao666', '管理员', '来年要更努力地生活。\r\n痛苦本就是生活的一部分。\r\n要笑啊，要开心啊。', 'portfolio2.jpg', '2018-05-15 21:41:46', '8', '1', '0'),
('liuqiao666', '管理员', '我的耳朵被音悦养刁了啊，一段时间不听感觉都好听。', 'portfolio2.jpg', '2018-05-15 21:29:00', '6', '1', '0'),
('liuqiao666', '时光', '沉溺于忧伤的自恋，瓦解于漫长的等待', 'portfolio2.jpg', '2018-05-15 21:10:42', '8', '0', '0'),
('liuqiao666', 'liuqiao666', '人生是把悲伤的钥匙', 'portfolio2.jpg', '2018-05-15 21:09:08', '10', '0', '0'),
('liuqiao666', '时光', '异化世界，寻找影子的交织，\r\n无论你是否藏匿。\r\n我仍是这世界晃来晃去的人。', 'portfolio2.jpg', '2018-05-15 21:06:14', '5', '0', '0'),
('巧巧的小号', '管理员', '我很喜欢这种类型的歌曲。', 'code-wallpaper-8.jpg', '2018-05-22 13:06:45', '9', '1', '1'),
('liuqiao666', '管理员', '你是年少的欢喜', 'portfolio2.jpg', '2018-05-16 21:05:06', '10', '1', '0'),
('liuqiao666', '时光', '不开心的时候 总会听到这首', 'portfolio2.jpg', '2018-05-16 20:47:54', '9', '0', '1'),
('liuqiao666', '管理员', '来年要更努力地生活。\r\n痛苦本就是生活的一部分。\r\n要笑啊，要开心啊。', 'portfolio2.jpg', '2018-05-15 21:41:46', '8', '1', '0'),
('liuqiao666', '管理员', '我的耳朵被音悦养刁了啊，一段时间不听感觉都好听。', 'portfolio2.jpg', '2018-05-15 21:29:00', '6', '1', '0'),
('liuqiao666', '时光', '沉溺于忧伤的自恋，瓦解于漫长的等待', 'portfolio2.jpg', '2018-05-15 21:10:42', '8', '0', '0'),
('liuqiao666', 'liuqiao666', '人生是把悲伤的钥匙', 'portfolio2.jpg', '2018-05-15 21:09:08', '10', '0', '0'),
('liuqiao666', '时光', '异化世界，寻找影子的交织，\r\n无论你是否藏匿。\r\n我仍是这世界晃来晃去的人。', 'portfolio2.jpg', '2018-05-15 21:06:14', '5', '0', '0'),
('巧巧的小号', '管理员', '我很喜欢这种类型的歌曲。', 'code-wallpaper-8.jpg', '2018-05-22 13:06:45', '9', '1', '1'),
('liuqiao666', '管理员', '你是年少的欢喜', 'portfolio2.jpg', '2018-05-16 21:05:06', '10', '1', '0'),
('liuqiao666', '时光', '不开心的时候 总会听到这首', 'portfolio2.jpg', '2018-05-16 20:47:54', '9', '0', '1'),
('liuqiao666', '管理员', '来年要更努力地生活。\r\n痛苦本就是生活的一部分。\r\n要笑啊，要开心啊。', 'portfolio2.jpg', '2018-05-15 21:41:46', '8', '1', '0'),
('liuqiao666', '管理员', '我的耳朵被音悦养刁了啊，一段时间不听感觉都好听。', 'portfolio2.jpg', '2018-05-15 21:29:00', '6', '1', '0'),
('liuqiao666', '时光', '沉溺于忧伤的自恋，瓦解于漫长的等待', 'portfolio2.jpg', '2018-05-15 21:10:42', '8', '0', '0'),
('liuqiao666', 'liuqiao666', '人生是把悲伤的钥匙', 'portfolio2.jpg', '2018-05-15 21:09:08', '10', '0', '0'),
('liuqiao666', '时光', '异化世界，寻找影子的交织，\r\n无论你是否藏匿。\r\n我仍是这世界晃来晃去的人。', 'portfolio2.jpg', '2018-05-15 21:06:14', '5', '0', '0'),
('巧巧的小号', '管理员', '我很喜欢这种类型的歌曲。', 'code-wallpaper-8.jpg', '2018-05-22 13:06:45', '9', '1', '1'),
('liuqiao666', '管理员', '你是年少的欢喜', 'portfolio2.jpg', '2018-05-16 21:05:06', '10', '1', '0'),
('liuqiao666', '时光', '不开心的时候 总会听到这首', 'portfolio2.jpg', '2018-05-16 20:47:54', '9', '0', '1'),
('liuqiao666', '管理员', '来年要更努力地生活。\r\n痛苦本就是生活的一部分。\r\n要笑啊，要开心啊。', 'portfolio2.jpg', '2018-05-15 21:41:46', '8', '1', '0'),
('liuqiao666', '管理员', '我的耳朵被音悦养刁了啊，一段时间不听感觉都好听。', 'portfolio2.jpg', '2018-05-15 21:29:00', '6', '1', '0'),
('liuqiao666', '时光', '沉溺于忧伤的自恋，瓦解于漫长的等待', 'portfolio2.jpg', '2018-05-15 21:10:42', '8', '0', '0'),
('liuqiao666', 'liuqiao666', '人生是把悲伤的钥匙', 'portfolio2.jpg', '2018-05-15 21:09:08', '10', '0', '0'),
('liuqiao666', '时光', '异化世界，寻找影子的交织，\r\n无论你是否藏匿。\r\n我仍是这世界晃来晃去的人。', 'portfolio2.jpg', '2018-05-15 21:06:14', '5', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `commodity`
--

CREATE TABLE IF NOT EXISTS `commodity` (
  `number` varchar(32) NOT NULL DEFAULT '' COMMENT '商品编号 商品编号',
  `name` varchar(50) DEFAULT NULL COMMENT '商品名称 商品名称',
  `description` varchar(225) DEFAULT NULL COMMENT '商品的描述 商品的描述',
  `img` varchar(50) DEFAULT NULL COMMENT '商品图片 商品图片',
  `price` varchar(32) DEFAULT NULL COMMENT '价格 价格',
  `stock` varchar(32) DEFAULT NULL COMMENT '商品的库存',
  PRIMARY KEY (`number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分兑换的商品';

--
-- 转存表中的数据 `commodity`
--

INSERT INTO `commodity` (`number`, `name`, `description`, `img`, `price`, `stock`) VALUES
('4', '手机K歌耳机', '卡姆昂 手机K歌耳机带麦克风话筒二合一套装唱吧全民唱歌耳麦入耳式通用苹果小米魅族VIVO', '58dcab0eN9dd1f5e2.jpg', '500', '8'),
('1', '小米活塞耳机', '清新版 入耳式手机耳机 通用耳麦-配件 黑色', '5aa8ba69Nd4f39609.png', '500', '4'),
('2', 'bcase', 'Bcase个性MEC耳机收纳器手机配件多功能绕线整理器保护绳休闲创意', 'erji.jpg', '500', '7'),
('3', 'Joyroom', '耳机入耳式手机通用重低音炮K歌苹果有线耳塞迷你线控 【红色】立体重低音', '5a608703N430ebddd.jpg', '500', '9'),
('5', '斯泰克（stiger）手机耳机', '线控带麦克风入耳式重低音立体声耳塞 适用苹果iPhone6s/Plus iPad Air/Pro/Mini', '5.jpg', '500', '10'),
('6', 'TMiao手机入耳式耳机', 'TMiao 手机入耳式耳机适用于vivo耳机 x20 X9 X6 X7Plus y67 线控带麦耳机【京东正品】', '5a5b08a4N8b8477b5.jpg', '500', '10'),
('7', '立体声运动耳机', 'HONGBIAO SM 立体声运动耳机入耳式手机通话钛金属磁吸式重低音乐线控耳塞 红色 普通版（不带麦）', '5a45fa7bN8765fb27.jpg', '500', '5'),
('8', '小米（MI）', '小米（MI）小米二合一数据线 Micro USB转Type-C(100cm)', '59803b81Nd7bf60a3.jpg', '450', '10'),
('9', '美斯捷入耳式耳机', '美斯捷 耳机入耳式线控带麦手机通用 玫瑰金 金立M2017/M6/m6s plus/S9', '592d2f3bNf2c50720.jpg', '500', '10'),
('10', 'HUASUME', 'HUASUME 原装苹果6/iPhone6/6s/6plus/iPad/5se手机耳机线', '5944f613N1545a93a.jpg', '700', '10'),
('11', '荣耀指环扣', '荣耀指环扣手机支架AF16', '5909db50Nd36fe672.jpg', '200', '10'),
('12', '绿联 OTG手机TF读卡器', '绿联 OTG手机TF读卡器 插卡式U盘 Type-C/USB3.0安卓手机电脑两用数据线转接头 支持小米华为新macbook 30359', '59476f0eNbb7f0f3c.jpg', '450', '10');

-- --------------------------------------------------------

--
-- 表的结构 `intexchange`
--

CREATE TABLE IF NOT EXISTS `intexchange` (
  `username` varchar(32) DEFAULT NULL COMMENT '用户名 用户名',
  `number` varchar(32) DEFAULT NULL COMMENT '商品编号 商品编号',
  `name` varchar(32) DEFAULT NULL COMMENT '商品名称 商品名称',
  `description` varchar(225) DEFAULT NULL COMMENT '商品描述 商品描述',
  `img` varchar(50) DEFAULT NULL COMMENT '申请兑换的商品图片 申请兑换的商品图片',
  `price` varchar(32) DEFAULT NULL COMMENT '兑换的商品价格 兑换的商品价格',
  `address` varchar(225) DEFAULT NULL COMMENT '收货地址 收货地址',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `delivered` varchar(1) DEFAULT '0' COMMENT '是否发货：1为已发货；0为未发货'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分兑换 积分兑换';

--
-- 转存表中的数据 `intexchange`
--

INSERT INTO `intexchange` (`username`, `number`, `name`, `description`, `img`, `price`, `address`, `email`, `delivered`) VALUES
('时光', '3', 'Joyroom', '耳机入耳式手机通用重低音炮K歌苹果有线耳塞迷你线控 【红色】立体重低音', '5a608703N430ebddd.jpg', '500', '13981712815+电子科技大学成都学院百叶路1号', '1255394075@qq.com', '1'),
('liuqiao666', '3', 'Joyroom', '耳机入耳式手机通用重低音炮K歌苹果有线耳塞迷你线控 【红色】立体重低音', '5a608703N430ebddd.jpg', '500', '四川省成都市郫县电子科技大学成都学院百叶路1号', '1255394075@qq.com', '1'),
('liuqiao666', '4', '手机K歌耳机', '卡姆昂 手机K歌耳机带麦克风话筒二合一套装唱吧全民唱歌耳麦入耳式通用苹果小米魅族VIVO', '58dcab0eN9dd1f5e2.jpg', '500', '四川省成都市郫县电子科技大学成都学院百叶路1号', '1255394075@qq.com', '0'),
('liuqiao666', '4', '手机K歌耳机', '卡姆昂 手机K歌耳机带麦克风话筒二合一套装唱吧全民唱歌耳麦入耳式通用苹果小米魅族VIVO', '58dcab0eN9dd1f5e2.jpg', '500', '四川省成都市郫县电子科技大学成都学院百叶路1号', '1255394075@qq.com', '0'),
('liuqiao666', '11', '荣耀指环扣', '荣耀指环扣手机支架AF16', '5909db50Nd36fe672.jpg', '200', '四川省成都市郫县电子科技大学成都学院百叶路1号', NULL, '0');

-- --------------------------------------------------------

--
-- 表的结构 `opinion`
--

CREATE TABLE IF NOT EXISTS `opinion` (
  `username` varchar(32) DEFAULT NULL COMMENT '反馈信息人的名称 反馈信息人的名称',
  `message` varchar(225) DEFAULT NULL COMMENT '反馈的信息 反馈的信息',
  `email` varchar(225) DEFAULT NULL COMMENT '反馈信息人的邮件 反馈信息人的邮件',
  `opinionok` varchar(1) DEFAULT '0' COMMENT '用户反馈的信息是否处理完毕'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='意见反馈 意见反馈';

--
-- 转存表中的数据 `opinion`
--

INSERT INTO `opinion` (`username`, `message`, `email`, `opinionok`) VALUES
('liuqiao666', '我觉得每天的积分可以再多点~', '1255394075@qq.com', '1');

-- --------------------------------------------------------

--
-- 表的结构 `praise`
--

CREATE TABLE IF NOT EXISTS `praise` (
  `username` varchar(30) NOT NULL COMMENT '点赞人的用户名',
  `id` varchar(30) NOT NULL COMMENT '评论的id',
  `plusername` varchar(30) NOT NULL COMMENT '评论人的用户名',
  `content` text NOT NULL COMMENT '评论的内容',
  `kind` int(10) NOT NULL COMMENT '评论歌曲的类型'
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

--
-- 转存表中的数据 `praise`
--

INSERT INTO `praise` (`username`, `id`, `plusername`, `content`, `kind`) VALUES
('liuqiao666', '3', 'liuqiao666', '突然电话', 1),
('liuqiao666', '3', 'liuqiao666', '好好干', 0),
('liuqiao666', '8', 'liuqiao666', '函数', 0),
('liuqiao666', '16', 'liuqiao666', '好听', 1),
('liuqiao666', '4', 'liuqiao666', '这么哇塞的曲没人听甚是可惜', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sign`
--

CREATE TABLE IF NOT EXISTS `sign` (
  `id` int(32) DEFAULT NULL COMMENT '用户编号',
  `time` varchar(32) DEFAULT NULL COMMENT '签到时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sign`
--

INSERT INTO `sign` (`id`, `time`) VALUES
(0, '2018-06-19'),
(0, '2018-06-20'),
(0, '2018-06-26'),
(0, '2018-06-27');

-- --------------------------------------------------------

--
-- 表的结构 `start`
--

CREATE TABLE IF NOT EXISTS `start` (
  `id` varchar(10) DEFAULT NULL COMMENT '图片的id 图片的id',
  `img` varchar(50) DEFAULT NULL COMMENT '图片 图片',
  `description` varchar(225) DEFAULT NULL COMMENT '图片的描述 图片的描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='前端页面轮播 前端页面轮播';

--
-- 转存表中的数据 `start`
--

INSERT INTO `start` (`id`, `img`, `description`) VALUES
('5', '5.jpg', '你的名字'),
('3', '3.jpg', '听完一首歌'),
('2', '2.jpg', '借我杀死庸碌的情怀'),
('1', '1.jpg', '借我杀死庸碌的情怀'),
('4', '4.jpg', '相信公路');

-- --------------------------------------------------------

--
-- 表的结构 `thumbs`
--

CREATE TABLE IF NOT EXISTS `thumbs` (
  `articleid` varchar(32) DEFAULT NULL COMMENT '文章的编号',
  `coment` varchar(225) DEFAULT NULL COMMENT '评论内容',
  `kind` varchar(32) DEFAULT NULL COMMENT '文章的类型：1为期刊，0为分享圈'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `thumbs`
--

INSERT INTO `thumbs` (`articleid`, `coment`, `kind`) VALUES
('1', '55', '0'),
('1', 'rtttttrt', '0'),
('9', '不开心的时候 总会听到这首', '0'),
('2', '555555555', '1'),
('9', '我很喜欢这种类型的歌曲。', '1');

-- --------------------------------------------------------

--
-- 表的结构 `usarticle`
--

CREATE TABLE IF NOT EXISTS `usarticle` (
  `articleid` varchar(32) DEFAULT NULL COMMENT '用户发布的文章的编号 用户发布的文章的编号',
  `name` varchar(32) DEFAULT NULL COMMENT '文章名称 文章名称',
  `music` varchar(50) DEFAULT NULL COMMENT '音乐文件 音乐文件',
  `mdescribes` varchar(225) DEFAULT NULL COMMENT '音乐简单描述 音乐简单描述',
  `classes` varchar(225) DEFAULT NULL COMMENT '文章分类 文章分类',
  `articleimg` varchar(50) DEFAULT NULL COMMENT '文章缩略图 文章缩略图',
  `adescribes` varchar(2000) DEFAULT NULL COMMENT '文章描述 文章描述',
  `look` varchar(32) DEFAULT '0' COMMENT '审核 审核',
  `time` varchar(50) DEFAULT NULL COMMENT '用户发布文章的时间 用户发布文章的时间',
  `collect` varchar(225) DEFAULT '0' COMMENT '文章收藏量 文章收藏量',
  `email` varchar(50) DEFAULT NULL COMMENT '推荐人的邮箱',
  `username` varchar(32) DEFAULT NULL COMMENT '推荐人用户名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户发布的文章信息 用户发布的文章信息';

--
-- 转存表中的数据 `usarticle`
--

INSERT INTO `usarticle` (`articleid`, `name`, `music`, `mdescribes`, `classes`, `articleimg`, `adescribes`, `look`, `time`, `collect`, `email`, `username`) VALUES
('9', '青春的纪念碑', 'JPB,Alexa - Come Back.mp3', '你终于失去了年轻。', '独立音乐', 'u2.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="background-color:#FFFFFF;color:#333333;font-family:&quot;">在流逝的时空之中</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="background-color:#FFFFFF;color:#333333;font-family:&quot;">你终于失去了年轻</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">那些冲动和不安</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">刻画了今天的苦痛</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">在灰暗的记忆里面</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">你曾经呼喊着光明</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">那些标语和口号撕开了生命的裂缝</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">奔腾的风没有能吹醒昏睡的人们</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#333333;font-family:&quot;background-color:#FFFFFF;">抑郁的心渐渐地变得苍老而胆怯</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="background-color:#FFFFFF;color:#333333;font-family:&quot;">你不想知道广场上那红旗歌颂的是谁</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="background-color:#FFFFFF;color:#333333;font-family:&quot;">你只是看到血干的地方矗立着青春的纪念碑</span>\n</p>', '1', '2018-05-15 18:42:02', '4', '1204927037@qq.com', '时光'),
('6', '依旧是疲惫眼睛', '曹方 - 觉醒.mp3', '我相信，这呼喊有回声。', '摇滚', 'u6.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">闭上眼睛就能想象到：</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">七八十年代北京的一个冬天，裹着劣质棉衣，叼上一根烟。</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">呵一口气也是雾，吐一口烟也是雾。</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">烟雾缭绕里说着生活说着尊严。</span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"><strong>如今一个人也流浪在地球另一边，没有烟没有酒，只有自己。</strong></span>', '1', '2018-05-15 18:13:35', '3', '1204927037@qq.com', '时光'),
('7', '一腔孤勇', 'Thousand Foot Krutch - Take It Out On Me.mp3', '当你回头望向远方，就这么轻易的让人心底的忧愁都消散在了风的嘶鸣以及鸟雀的欢愉中。', '流行', 'u7.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">在那时，我们在意路上匆忙的人群、在意明媚午后、在意自己是否时髦、以及在意脑海里的所有肆意妄为。在今天，这样一个信息快速且泛滥的时代里，我们再也找不回一整张专辑翻来覆去的听得稀巴烂的状态，只剩下回味里假想的脉脉温情，以及对未来充满着暴力色彩的急切渴求与期盼。在这么多年过去后，我们依然沒有得到自己想要的,可好像這一切也沒有那么糟。</span><br />\n<br />\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"><strong>音乐无非就两种，一种是浮在表面的，而另一种则是渗人灵魂的。感谢所有曾经在黑夜中给予我们孤独的灵魂以安抚的声音。</strong></span>', '1', '2018-05-15 18:20:08', '3', '1204927037@qq.com', '时光'),
('5', '盛大的告别', 'Lube - Календарь.mp3', '仿佛逝去的不再是悲伤，而迎来的将永远是明天的冻土上白色的阳光。', '摇滚', 'u5.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">白桦林边,苍白色的旧伏尔加汽车停靠在破木屋旁，广播里传来正点报时的声音,报时歌曲是莫斯科郊外的晚上。这时音乐响起，我们和着这郁郁悲歌、和着这浓烈的伏特加酒、和着这雪原中铺开的桦林、和着这冬日照耀下的尖顶城镇，那光景像是翻开陈旧相册一样，历历在目。我们高挥起双手，向过去进行一场盛大的告别，仿佛逝去的不再是悲伤，而迎来的将永远是明天的冻土上白色的阳光。</span>', '1', '2018-05-15 18:10:34', '2', '1204927037@qq.com', '时光'),
('1', '仍是异乡人', '墙角先生 - 异乡人 [李健  cover].mp3', '很多时候音乐像是被赋予一种使命感，去扮演某种沟通和连接的角色。', '民谣', 'u1.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	时间总是像很多诗歌里写的那样，是最好的试验剂、最好的磨刀石。在时间面前，很多东西都变得黯然失色，好像没有什么东西可以敌得过时间。能够抚慰人心的、能够撩动心弦的，唯有这些让人心有戚戚的音乐。\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	人和人最大的问题是信任的建立和信任的解除，无论是爱情、友情还是亲情。而我们每一个人内心的问题却是不愿意去面对真实的自己而已。随着岁月必然的转变，我仿佛看到了我们无法回转的叛逆时光、看到了那踽踽独行远去的清凉背影。\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<strong>异乡里的音色阵阵，喝下这杯酒，管它生还是死。</strong>\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<br />\r\n</p>\r\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\r\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">从某种角度来看，音乐一定是从民族的情感、个性、共同文化引发出来的，很多时候音乐像是被赋予一种使命感，去扮演某种沟通和连接的角色。</span>\r\n</p>', '1', '2018-05-15 17:53:06', '1', '1204927037@qq.com', '时光'),
('3', '画海', 'Armed For A Crisis - Black Smoke.mp3', '当你遇到那个人的时候，你才能体会到那种感觉。 ', '爵士', 'u3.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">当你遇到那个人的时候，你才能体会到那种感觉。&nbsp;</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"> &nbsp;</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">就是那种日思夜想辗转反侧，为一双迷人的眼睛着迷，或者偷偷地闻着某人干净的肥皂味道的格子衬衫，或者是偷偷期待那双纤长厚实的手可以把自己的小手握在掌心。&nbsp;</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"> &nbsp;</span><br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">就是那种电光火石般的火花，那种噬魂彻骨的疯狂，那种把世界一切染上光辉的爱慕，只靠思念和期待就能生存的情愫。&nbsp;</span><br />\r\n<br />\r\n<p>\r\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">你遇见我，我遇见你，这就是全部的意义。我不知道明天会是什么样的，但是我知道此刻我是快乐的。</span> \r\n</p>\r\n<p>\r\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"><br />\r\n</span> \r\n</p>\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"><strong>这首音乐包含了爵士、灵魂乐等多种音乐的特征，充满着强烈的浪漫色彩，仿佛在像是在说：停一停，或许会遇见美丽。</strong></span>', '1', '2018-05-15 17:58:40', '2', '1204927037@qq.com', '时光'),
('4', '嬉皮年代', 'Arash - She Makes Me Go (feat. Sean Paul).mp3', '或许我们恐惧的不是眼所见的现实，而是眼所不见的未来。', '摇滚', 'u4.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;"><strong>上世纪六十年代的那些音乐</strong></span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">在那样一个充满爱的年代里，那一代人的青春，因为激情和理想而显得无比漫长。时至半个世纪之后，60年代像一个永不停歇的符号一直敲打着我们的心。他带着最简单的普世梦想、带着尊重和宽容、带着每个人都应拥有的追寻自由的权利，赤裸裸的呈现在我们这一代承受不起的乌托邦梦想里。</span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">总在某个突然的时刻里，我们掌握了真实，但真实稍纵即逝。我们想象和期待中的纵情一跃以及世界大同并未及时到来，我们只好轻轻哼起这些充满着暖色调的音乐，在流年似水里放浪形骸。</span><br />\r\n<br />\r\n<p>\r\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">嬉皮年代，不歇的年代。</span>\r\n</p>', '1', '2018-05-15 18:08:39', '1', '1204927037@qq.com', '时光'),
('11', '我们终将奔赴向前', '赵登凯 - 如你.mp3', '不开心的时候 总会听到这首歌', '民谣', 'a11.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"="">当和煦春风吹拂过细节与平淡的山顶，当往昔的时光洒向林间的湖泊，这温暖如同爱人的怀抱，美好且静默。我们手握着夜间孤芳自赏的花朵，在流离失所的纯白和微妙的纯粹中，用一种自信满满的暖色调涂抹着这世界。</span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, " font-size:13px;"=""><strong>我们终将奔赴向前。</strong></span>', '0', '2018-05-16 20:57:33', '0', '1255394075@qq.com', 'liuqiao666'),
('2', '弄潮', 'Tom Player - Roland Garros Choral Theme.mp3', '似黄粱梦。辞丹凤。明月共。漾孤篷。官冗從。', '流行', 'u10.jpg', '<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">少年侠气，交结五都雄。肝胆洞。毛发耸。立谈中。死生同。一诺千金重。推翘勇。矜豪纵。轻盖拥。联飞鞚。斗城东。轰饮酒垆，春色浮寒瓮。吸海垂虹。闲呼鹰嗾犬，白羽摘雕弓。狡穴俄空。乐匆匆。&nbsp;</span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">似黄粱梦。辞丹凤。明月共。漾孤篷。官冗從。怀倥偬。落尘笼。簿书丛。鹖弁如云众。供粗用。忽奇功。笳鼓动。渔阳弄。思悲翁。不请长缨，系取天骄种。剑吼西风。恨登山临水，手寄七弦桐。目送归鸿。</span><br />\r\n<br />\r\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">- 贺铸（宋）</span>', '1', '2018-05-15 18:45:49', '0', '1204927037@qq.com', '时光'),
('8', '怒放', 'Katja Sommer - Hamburg du bist die schönste Stadt.', '用噪音远离喧嚣，用沉重展示平静。', '流行', 'u11.jpg', '<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">异化世界，寻找影子的交织，</span><br />\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">无论你是否藏匿。</span><br />\n<span style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">我仍是这世界晃来晃去的人。</span>\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	他们用噪音远离喧嚣，他们用沉重展示平静。\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	他们沉溺于忧伤的自恋，他们瓦解于漫长的等待。\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	<br />\n</p>\n<p style="color:#2D2D2D;font-family:Verdana, 微软雅黑, &quot;font-size:13px;">\n	每个人都在面对一种自以为是的精神生活之外的坚硬现实。在内心深处的精神领地里，你是遨游四方的骑士。而在这坚硬的现实里，总让人绕不开对自我价值的怀疑。这种怀疑总是轻易的让懦弱的情绪无限放大，然后在现实与想象的相互映射中，伤花悄然怒放。\n</p>', '1', '2018-05-15 18:49:59', '2', '1204927037@qq.com', '时光'),
('10', '以后的伤口', '林俊杰 - 记得.mp3', '我和你手牵手说要一起 走到最后', '流行', 'u12.jpg', '谁还记得是谁先说 永远的爱我\n以前的一句话是我们 以后的伤口\n过了太久没人记得 当初那些温柔\n我和你手牵手说要一起 走到最后\n我们都忘了 这条路走了多久\n心中是清楚的 有一天 有一天都会停的\n让时间说真话 虽然我也害怕\n在天黑了以后 我们都不知道 会不会有以后\n谁还记得是谁先说 永远的爱我\n以前的一句话是我们 以后的伤口\n过了太久没人记得 当初那些温柔\n我和你手牵手说要一起 走到最后\n我们都累了 却没办法往回走\n两颗心都迷惑 怎么说 怎么说都没有救\n亲爱的为什么 也许你也不懂\n两个相爱的人 等着对方先说 想分开的理由\n谁还记得爱情开始变化的时候\n我和你的眼中看见了 不同的天空\n走得太远终于走到 分岔路的路口\n是不是你和我 要有两个 相反的梦\n谁还记得是谁先说 永远的爱我\n以前的一句话是我们 以后的伤口\n过了太久没人记得 当初那些温柔\n我和你手牵手说要一起 走到最后\n我和你手牵手说要一起 走到最后', '0', '2018-05-15 19:04:04', '3', '1255394075@qq.com', 'liuqiao666'),
('25', '燕归巢', '许嵩 - 燕归巢.mp3', '《燕归巢》是张靓颖和张杰演唱的歌曲，由许嵩创作词曲，收录于《燕归巢》。  2015年，该歌曲获得第15届全球华语歌曲排行榜“最受欢迎对唱金曲奖”。', '原创', 'u25.jpg', '歌曲用词考究，具有古典文学的意境和神韵。音乐方面，许嵩融入了琵琶、牧笛等音乐元素，悠扬的曲风搭配张杰浑厚高亮的声线和张靓颖温柔婉转的嗓音，唱尽游子的思乡之情 。打造了一幅唯美的中国画卷，将游子的思乡情切全部融化在迷朦细雨中，诗情画意跃然歌声之中。"寒梅落尽，燕衔春柳，家书千行不及游子归来，执手相看泪眼朦胧"，当游子辛劳一年，踏上归家路途时，已是寒雪落尽，大地春回，旧时家中的一景一物 ，莫不牵动着人们的内心。', '1', '2018-06-02 20:12:23', '0', '13244075@qq.com', 'liuqiao666'),
('26', '装糊涂', '许嵩 - 装糊涂.mp3', '《装糊涂》是许嵩演唱的歌曲，歌曲由许嵩作词作曲制作，收录在专辑《梦游计》中，专辑于2012年6月28日发行。这首歌曲是电影《做次有钱人》中的主题曲。', '原创', 'u26.jpg', ' 许式经典R&B，逐层递进的配唱方式，摇摆感性的节奏律动，把这首歌曲推送到每个"糊涂着却不糊涂"的人心中。2012暑期档影片《影子富豪》制片方在第一次听到歌曲小样时，就立马邀此歌作为电影主题曲。', '1', '2018-06-02 23:00:02', '0', '13244075@qq.com', 'liuqiao666'),
('27', '桃花凉', '艾辰 - 桃花凉.mp3', '艾辰最新单曲《桃花凉》，用唯美古风演绎三世爱恋情长，一见倾心，一见倾情，爱的醇香凝成一盏桃花酿，醉了你我的前世今生，从此执手相伴，两不忘！', '流行', 'u27.jpg', '桥段与传统戏剧元素相结合，古风与流行音乐元素相结合，唯美画风与场景交替转换，是艾辰新歌《桃花凉》最大的亮点和特色，也是艾辰对自己演唱风格的一次挑战和全新演绎。尤为难得的是，这样高难度的技巧和挑战，艾辰演唱起来简直得心应手，听起来也毫无违和感。 为了将这首歌演绎得更加完美，艾辰认真揣摩歌曲的意境，尝试着加入属于自己的演唱风格，赋予这首歌全新独特的魅力。', '1', '2018-06-03 08:12:23', '0', '13244075@qq.com', 'liuqiao666'),
('28', 'Every Breath You Take', 'Karen Souza - Every Breath You Take', '20世纪90年代的西方乐坛，饶舌音乐逐渐成为主流音乐的一部分，这首歌曲在1997年曾经被吹牛老爹（Puff Daddy）改编为另一首畅销单曲："I''ll be missing you"。 很多人翻唱过这首歌。这里推荐的是Karen Souza翻唱的版本，爵士、蓝调风格。', '爵士', 'u28.jpg', '这首歌的作者是警察乐队的灵魂人物斯汀（Sting），也是乐队的贝斯手。他表示，这首歌的写作灵感源自于在牙买加度假期间，对美国里根政府的发动、以“星球大战计划”为首的美苏太空军备竞赛的反感和憎恶。与此同时，斯汀本人的婚姻也遇到了麻烦，这两个因素促使他写了这首歌。这首歌推出后风行全球，影响了世界各国流行音乐的创作方向，国内当时的玉女歌手杨林就有一首歌，明显的受到这首歌曲的「启发」。', '1', '2018-06-02 10:25:59', '0', '13244075@qq.com', 'liuqiao666'),
('29', 'A Thousand Years', 'Christina Perri - A Thousand Years.mp3', '人气才女Christina Perri献唱大热电影《Breaking Dawn(暮光之城4)》插曲《A Thousand Years(一千年)》。在MV中，身着黑色纱裙的Perri在夜色里点亮满地烛光，穿越千年，等待着那一缕温暖的瑰丽阳光。', '爵士', 'u29.jpg', 'The day we met 初次邂逅的那天 Frozen I held my breath 时间彷佛停止了 Right from the start 从一开始我就知道 I knew it I found a home for my 我从此找到了归宿 Heart beats fast 心跳开始加速 Colors and promises 色彩飞旋、承诺在心中回荡 How to be brave 我该怎样鼓起勇气面对一切 How can I love when I''m afraid to fall 我该如何去爱你，此刻的我是那么害怕因此沉沦', '1', '2018-06-02 20:22:60', '1', '13244075@qq.com', 'liu123'),
('30', '梦回唐朝', '唐朝 - 梦回唐朝.mp3', '《梦回唐朝》是唐朝乐队的首发专辑《唐朝》中的主打歌曲，唐朝乐队的成名歌曲，是中国罕有的重金属风格的摇滚代表作之一。', '摇滚', 'u30.jpg', '这首歌是中国摇滚乐最杰出的作品之一，在资源匮乏的年代，唐朝乐队仿佛在困境之中爆发出了极强的灵感，又在瞬间以令人难以想象的速度将其消耗殆尽。 怎奈只留下一首惊为天人的“梦回唐朝”，令人无限缅怀唏嘘。', '1', '2018-06-03 14:12:23', '0', '13244075@qq.com', 'liu123'),
('12', '我的故事里都是你', '烟把儿乐队 - 纸短情长.mp3', '每张歌单都有你的感情、经历和故事，倾诉一下吧！ ', '民谣', 'timg.jpg', '你陪我步入蝉夏</p>\n越过城市喧嚣</p>\n歌声还在游走</p>\n你榴花般的双眸</p>\n不见你的温柔</p>\n丢失花间欢笑</p>\n岁月无法停留</p>\n流云的等候</p>\n我真的好想你</p>\n在每一个雨季</p>\n你选择遗忘的</p>\n是我最不舍的</p>\n纸短情长啊</p>\n道不尽太多涟漪</p>\n我的故事都是关于你呀</p>\n我真的好想你</p>\n在每一个雨季</p>\n你选择遗忘的</p>\n是我最不舍的</p>\n纸短情长啊</p>\n道不尽太多涟漪</p>\n我的故事都是关于你呀 </p>', '1', '2018-06-01-20:10', '7', '951336273@qq.com', '我不习惯'),
('13', '致青春', '少年梦 - 麦子杰.mp3', '我们的梦在未来，我们的青春，在过去。致青春，怀念我们的怀念。', '流行', '275071180_5a7efc0fd35eb_ouO3_1518271503.jpg', ' 90后，流行与经典交汇的一代人，我们感伤过失去的过往，也同样勇敢的向往未来；</p>痴迷不悟地追逐理想，也在小憩中平复激进的性情</p>，理想与现实交织，太多的无奈增加了我们对生活的感悟，</p>而这些歌都是我们成长路上曾经听过的。</p>我们慢慢咀嚼，慢慢想起忆往错过的人和事，</p>也追忆曾经的花样年华，青葱岁月。</p>因为这些歌伴随我们求学时的孤独，初恋时的美好与无奈。</p> ', '1', '2018-06-01-21:20', '2', '2628064753@qq.com', 'mystery'),
('14', '以爱之名', '买辣椒也用券 - 起风了.mp3', '这一路上走走停停，\n顺着少年漂流的痕迹。如今走过这世间，\n万般流连。晚风吹起你鬓间的白发，\n抚平回忆留下的疤。心之所动， 就随风去了，\n以爱之名， 你还愿意吗？', '流行', '1517899049940.jpg', '晚风吹起你鬓间的白发</p> 抚平回忆留下的疤 </p>你的眼中</p> 明暗交杂 </p>一笑生花，</p>暮色遮住你蹒跚的步伐 </p>走进床头藏起的画 </p>画中的你 低着头说话，我仍感叹于世界之大</p> 也沉醉于儿时情话</p> 不剩真假 </p>不做挣扎</p> 无谓笑话，我终将青春还给了她</p> 连同指尖弹出的盛夏</p> 心之所动 就随风去了，</p>以爱之名 你还愿意吗。</p> ', '1', '2018-05-31-12:12', '5', '951336273@qq.com', '我不习惯'),
('15', '幻夏集 | 丛林霓虹与假面舞会', 'Lucy Dacus - Night Shift.mp3', '夏夜听这样的歌，连梦里都是童话', '小众独立音乐', '109951163301757072.jpg', '夏夜还薄</p>\n一片月亮落在草坪的西边</p>\n蜕出另一瓣更轻的月亮</p>\n——蝉翼重叠</p>\n惊讶的行人 ，眼睛如灯</p></p></br>\n\n我忆起，曾在中午的光中</p>\n观察一只透明水杯</p>\n在手中旋转，产生清凉的光晕</p>\n和迷离的幻觉</p></p></br>\n\n向晚的草地，婴儿车起伏</p>\n毛绒玩具，拥着各自的生命</p>\n孩子们，曾在雾气里辩论晚餐</p>\n匆匆散场的披萨Party</p>\n像是昨日的重现，而今天未发生</p></p></br>\n\n未发生的，还有课堂的喧嚣</p>\n诱发着，一种迟到后绵延的不安</p>\n后花园的亭阁</p>\n绽放在的水泥迷宫之上</p>\n听说，没有人在闯入后</p>\n能够无所割舍的离开梦境</p></p>\n', '1', '2017-8-8-8:18', '2', '2628064753@qq.com', '音左'),
('16', '森林物语 | 绿野仙踪奇幻之旅', 'Mountain - Summer of Our Discontent.mp3', '明月之背，清雨之后，凌驾于彩虹之上的仙境。', '摇滚', '19072128696005196.jpg', ' “someplace where there isn''t any trouble.”</p>\n“Do you suppose there is such a place Toto？”</p>\n“There must be！”</p>\n“It''s not a place you can get to by a boat or a train.”</p>\n“It''s far ..far away”</p>\n“Behind the moon...beyond the rain”</p>\nsomewhere over the rainbow</p></br>\n\n弗兰克·鲍姆《绿野仙踪》</p></p></br>\n\n在彩虹某个地方，青鸟翱翔在天空;</p>只要你敢做梦，都会实现 .有一天我对着星星许愿 ;</p>在云彩后面醒来 烦恼像柠檬汁一样融化;</p>如果有一场海上风暴 </p>醒来 飘到一个神奇的王国 奥兹国 </p>那里遇见了铁皮人、稻草人和小狮子 </p>走在通往翡翠城的黄砖路上 奇妙冒险开始了......</p>', '1', '2018-06-02-10:34', '4', '951336273@qq.com', '颜啉'),
('17', '这个冬天，让我们温柔的摇滚', 'Heyhihello - Together Till the End.mp3', '如轻风拂面的清新感，谁说摇滚不能小清新？让这个冬天因摇滚而温暖！', '摇滚', '1325482322_1gB2.jpg', '每个人心中都有不一样的摇滚。</p></br>摇滚如同我的初恋情人，对它的爱曾经如此浓烈而刻骨铭心，却因为岁月的蹉跎而和它渐行渐远，</p>直到不久以前我在虾米开始重拾起往日的摇滚记忆，并试着去接受如今显得有些陌生的那些摇滚，</p>却发现曾经最钟爱的POP ROCK，不知何时成了各种另类、非主流、独立，</p>困惑之余不免有些人是物非、时过境迁的感觉，也许真的OUT了。</p></br>曾经的初恋，从以前亭亭玉立的美丽少女，</p>现在成为妩媚动人的妖娆妇人，也许改变的并不是摇滚，而只是岁月留下的痕迹。</p>历经沧桑之后，才发现对她的爱虽已深埋心底，却依然如故。</p>于是就有了这张精选，</p>所有的歌都是经过刻意挑选的，一如自己一贯坚持的口味，没有激烈、喧嚣、如暴风骤雨般的宣泄，有的只是如冬日阳光般和煦轻柔、雨后轻风般清新拂面，</p>请不要向我炫耀后摇、黑金、硬核的时髦，对于无视一切分类的我这些只是浮云，</p>请不要鄙视我的肤浅，因为我的唯一选择标准是——好听。</p>听过这张好歌扎堆的专辑，你会发现，原来摇滚——也可以这么温柔。</p>\n那么，你准备好了吗，请掏空你的耳朵，让我们在这个冬天，来一场华丽而温柔的摇滚吧。</p>', '1', '2017-1-12-13:45', '2', '2628064753@qq.com', '韩湘子'),
('18', '我们不孤单', '马良 - 往后余生 (Demo).mp3', '孤独的心诠释诗意和远方', '民谣', '109951162811986419.jpg', ' 民谣，一听就是一个故事。</br>\n\n民谣，唱的人普通，听的人平凡。</br>\n\n民谣，喜欢那种感同身受，热爱那些温柔辞藻。</br>\n\n用歌曲说话，用歌曲讲故事，因为被赋予旋律，所以才更易打动人心。</br>\n\n有时民谣像是唱着长达一生的曾经，却又像只是讲了某天放学后暗恋少年阳光下灿烂的笑脸。</br>\n\n好似简单的一首诗，却告诉我人生的道理。</br>\n\n有故事的人一张嘴，便会引起很多人的共鸣</br>', '1', '2016-11-20-16:54', '2', '951336273@qq.com', ' 朩朩青尘\n'),
('19', '音乐里的思恋', '木丽妍 - 想用你名字命名的歌.mp3', '情歌不止两三首 想你不是两三夜', '小众独立音乐', '109951163300285787.jpg', ' 当 整夜不睡 它会陪我度过\n当 微醺以后 它让我清醒过\n再 没有人像 它一样提醒我\n再 没有人像 它一样拥抱我\n当 感到饥饿 它努力填充我\n\n当 觉得难过 它让我心平气和\n如 果要追溯 是何时开始的\n我 想应该是 在失去你以后\n———大宽\n\n宝藏一般的精致旋律\n它们不应该被如此埋没\n歌单收录了一些独立音乐人的作品\n每一首单曲都值得你的收藏\n当你闭上双眼\n思绪融入在这美妙的音符中时\n这大概就是这世间最浪漫的事吧 ♡', '1', '2018-05-08-15:38', '2', '951336273@qq.com', '清凉艳阳天'),
('20', '闻一曲黄梅', '严凤英 - 天仙配.mp3', '耳熟能详的戏曲名段', '戏曲', '5961552046339838.jpg', '中国戏曲主要是由民间歌舞、说唱和滑稽戏三种不同艺术形式综合而成。它起源于原始歌舞，是一种历史悠久的综合舞台艺术样式。经过汉、唐到宋、金才形成比较完整的戏曲艺术，它由文学、音乐、舞蹈、美术、武术、杂技以及表演艺术综合而成，约有三百六十多个种类。它的特点是将众多艺术形式以一种标准聚合在一起，在共同具有的性质中体现其各自的个性。中国的戏曲与希腊悲剧和喜剧、印度梵剧并称为世界三大古老的戏剧文化，经过长期的发展演变，逐步形成了以“京剧、越剧、黄梅戏、评剧、豫剧”五大戏曲剧种为核心的中华戏曲百花苑。[2-5] 中国戏曲剧种种类繁多，据不完全统计，中国各民族地区地戏曲剧种约有三百六十多种，传统剧目数以万计。其它比较著名的戏曲种类有：昆曲、坠子戏、粤剧、淮剧、川剧、秦腔、晋剧、汉剧、河北梆子、河南越调、河南坠子、湘剧、黄梅戏、湖南花鼓戏等。', '1', '2014-01-14-9:26', '1', '951336273@qq.com', '般不丢'),
('21', '游园惊梦', '胡帅 - 牡丹亭－游园惊梦.mp3', '原来姹紫嫣红开遍，似这般都付与断井颓垣。', '戏曲', '7862607651125586.jpg', '梦回莺啭\n乱煞年光遍\n人立小庭深院\n炷尽沉烟\n抛残绣线\n恁今春关情似去年。\n晓来望断梅关，宿妆残。\n你侧着宜春髻子恰凭栏。\n剪不断，理还乱，闷无端。\n已吩咐催花莺燕借春看。\n云髻罢梳还对镜\n罗衣欲换更添香。      良辰美景奈何天，赏心乐事谁家院。情不知所起，一往而深，生者可以死，死亦可生。', '1', '2015-05-30-11:38', '1', '951336273@qq.com', ' 秋月葳蕤 '),
('22', '吟游歌者，句句成诗', 'sungyoungwoo - 你已走远.mp3', '我有一壶酒，足以慰风尘。 也曾二三友，日日不闭门。 而今七八载，落得孤身人。 酒盏仍犹在，风尘已惘闻。', '原创', '3300733909607437.jpg', ' 每个人的人生中都有那么一座城市，</p>那里总有那么一段无法忘记的记忆。</p>你或许不愿意提起那段记忆，</p>或许又因为一些小事而不断的想起。</p> 你会记得那个姑娘喜欢的一切，</p>记得你们发生的一些故事，</p>记得阳光撒在她身上的样子，</p>记得那些嬉笑怒骂。</p>然后，</p>慢慢的淡忘。</p></br>那些所谓的记忆也随着你不断的美化它或者丑化它而变得丧失了原本的摸样。</p> 或许有一天，</p>你完全的忘记了，</p>只留下那座城市的名字。</p></br>你很年轻，你疯狂的爱着，</p>却不知道为什么，而直到今天，</p>你还是不知道什么是爱情，却慢慢的了解什么是生活。</p>时间改变了很多又什么都没有改变。 </p>但是生活，还是要继续。</p>\n', '1', '2016-04-13-17:46', '1', '951336273@qq.com', ' Serain丶Pan '),
('23', '予你情诗百首，余生你是我的所有', '后弦 - 单车恋人.mp3', '我们从未见过\n可当我第一眼看到你的时候\n却觉得已经等了很久', '流行', '109951163313795420.jpg', ' Without you</p>\nHowever beautiful the city is</p>\nIt is just null</p>\n没有了你</p>\n再怎么美丽的城市在我看来</p>\n都只是一座空城</p></br>\n\nTomato and potato</p>\nKetchup and French fries</p>\nYou and me</p>\n番茄和土豆</p>\n番茄酱和炸薯条</p>\n你和我</p></br>\n\nFor a long time</p>\nI don’t know what loneliness means</p>\nUntil I met you</p>\n从前</p>\n我不懂什么是孤独</p>\n直到遇见你</p></br>\n\nWhen I fell in love with you</p>\nMy PH</p>\nIs always lower than 7</p>\n当我爱上你时</p>\n我的PH</p>\n始终低于</p></br>\n\nI prefer to wait</p>\nBecause</p>\nYou are my fate</p>\n我愿意去等待</p>\n因为</p>\n你是我的本命</p></br>\n\nYou and Me</p>\nLovers and Friends</p>\nNo regret, No complain</p>\n你和我</p>\n恋人或者朋友</p>\n不后悔，不抱怨</p></br>\n\nWhen you love somebody</p>\nYou don''t need proof</p>\nYou can feel it</p>\n当你爱一个人的时候</p>\n你不需要证据</p>\n就可以感受到他</p></br>\n\nI always remember that day</p>\nWhen I met you</p>\nI love you</p>\n我一直都记得那一天</p>\n我见到了你</p>\n我就爱上了你</p></br>\n\nI love three things:the sun ,the moon and you</p>\nthe sun is for the day ,the moon is for the night</p>\nand you forever</p>\n我爱三样东西：太阳，月亮和你</p>\n太阳留给白天，月亮留给夜晚</p>\n而你留给永远</p></br>\n\nI don''t know the passion until i met you</p>\nI don''t know the sorrow until i left you</p>\nBut now I do know the love when I cherish you</p>\n遇见你之前我不知道热情</p>\n离开你之前我不知道悲伤</p>\n但是我现在知道要爱你在我珍惜你的时候</br>', '1', '2018-05-17-9:46', '1', '951336273@qq.com', ' 朩朩青尘\n'),
('24', '生命来来往往，来日并不方长', '愚青 - 过境.mp3', '我们都高估了自己在彼此心里的位置，一个以为会挽留，一个以为会回头', '民谣', '109951163320819247.jpg', '那些支撑我们一路向前的人和事，如果你不精心的看守，在漫漫无边的以后，只会变成幻影，愈加支离破碎。</p></br>\n\n我们总爱说，来日方长，但大多数时候是并没有来日的。﻿﻿ 总要经历些什么，尝到遗憾和懊悔的辛辣后，才知道什么叫珍贵，才会懂得世间并没有那么多来日。</p></br>\n\n所以，如果你有想爱的人就趁早去爱，有想做的事情就及早去做，别等来日，好好珍惜当下。﻿﻿</p></br>\n\n生命来来往往，来日并不方长。﻿﻿尽情去爱，拼命去抓住。别等，别遗憾。</p></br>', '1', '2018-05-16-18:44', '0', '951336273@qq.com', ' mayuko然\n'),
('544', '5454', '宇西 - 那个男人（Cover 张碧晨）.mp3', '4545', '戏曲', '5.jpg', '54545', '1', '2018-06-26 11:02:22', '0', '1255394075@qq.com', 'liuqiao666'),
('434', '432423', '宇西 - 那个男人（Cover 张碧晨）.mp3', '4342', '爵士', '640x452.jpg', '324234234', '0', '2018-06-27 14:30:22', '0', '1255394075@qq.com', 'liuqiao666');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL COMMENT '用户名称 用户的名称',
  `userpassword` varchar(32) DEFAULT NULL COMMENT '用户密码 用户的密码',
  `email` varchar(225) DEFAULT NULL COMMENT '用户邮箱 用户的邮箱',
  `image` varchar(50) DEFAULT NULL COMMENT '用户头像 用户的头像',
  `status` decimal(1,0) DEFAULT NULL COMMENT '激活码状态 状态，0-未激活，1-已激活',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别 性别',
  `place` varchar(50) DEFAULT NULL COMMENT '籍贯 籍贯',
  `integral` varchar(32) DEFAULT '20' COMMENT '积分 用户的积分',
  `address` varchar(225) DEFAULT NULL COMMENT '收货信息 用户的收货信息地址',
  `myself` varchar(225) DEFAULT NULL COMMENT '自我介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户信息 用户信息' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `userpassword`, `email`, `image`, `status`, `sex`, `place`, `integral`, `address`, `myself`) VALUES
(1, 'liuqiao666', '666666', '1255394075@qq.com', '1-13100Q54041.jpg', '1', '女', '四川成都', '55', '四川省成都市郫县电子科技大学成都学院百叶路1号', '看万般喜乐纷'),
(2, '时光', 'yxjmmm', '1204927037@qq.com', 'lj.jpg', '1', '女', '成都', '2040', '13981712815+电子科技大学成都学院百叶路1号', '时光不老，我们不散^-^'),
(3, '巧巧的小号', '111111', '3475505138@qq.com', 'bg.jpg', '1', '女', '海口', '20', NULL, NULL),
(4, '刘巧', '111111', '1255394075@qq.com', '640x452.jpg', '1', '女', '海口', '20', NULL, NULL),
(5, 'liu123', '111111', '13244075@qq.com', 'new image - vedlc.jpg', '1', '男', '海口', '20', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ushuifu`
--

CREATE TABLE IF NOT EXISTS `ushuifu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jieshouid` int(30) NOT NULL,
  `username` varchar(60) NOT NULL,
  `content` varchar(600) NOT NULL,
  `time` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ushuifu`
--

INSERT INTO `ushuifu` (`id`, `jieshouid`, `username`, `content`, `time`) VALUES
(1, 1, '时光', '在异乡，没有一个真正值得想念的人，深入骨髓的孤独。我只是一个女孩，我也想被疼被呵护，我也想要一个肩膀。听着歌，眼泪还是要流。而天亮后，我还是要爬起来，像个正常人一样融入车阵中，奔向迷茫的明天，日复一日。 ', '2018-05-27 14:12:18'),
(2, 1, 'liu123', '同感', '2018-05-29 17:40:37'),
(3, 3, '时光', '的确很好听', '2018-05-29 20:39:42'),
(4, 2, '时光', '看了你的评论我笑了，也滴出了一滴泪！ ', '2018-05-29 20:50:30'),
(5, 8, '刘巧', '白海豚音乐节，当时我也有在 ', '2018-05-30 12:06:41'),
(6, 3, 'liuqiao666', 'dg', '2018-06-27 14:44:52');

-- --------------------------------------------------------

--
-- 表的结构 `uspinglun`
--

CREATE TABLE IF NOT EXISTS `uspinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usmusicid` int(32) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userimg` varchar(60) NOT NULL,
  `content` varchar(600) NOT NULL,
  `time` varchar(60) NOT NULL,
  `praise` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `uspinglun`
--

INSERT INTO `uspinglun` (`id`, `usmusicid`, `username`, `userimg`, `content`, `time`, `praise`) VALUES
(1, 1, '巧巧的小号', 'bg.jpg', '在异乡，没有一个真正值得想念的人，深入骨髓的孤独。我只是一个女孩，我也想被疼被呵护，我也想要一个肩膀。听着歌，眼泪还是要流。而天亮后，我还是要爬起来，像个正常人一样融入车阵中，奔向迷茫的明天，日复一日。 ', '2018-05-27 14:05:27', 0),
(2, 1, '巧巧的小号', 'bg.jpg', '那些默默地翻着评论，却不评论的人，或许才是真的孤独寂寞的人，路过的陌生人，愿你贪吃不胖，愿你懒惰不丑，愿你的深情不被辜负，愿你的余生都有人陪。 \n', '2018-05-29 17:39:17', 0),
(3, 9, 'liuqiao666', 'portfolio2.jpg', '赞A啊！忍不住要评论一下 \n', '2018-05-29 20:27:57', 1),
(4, 9, '巧巧的小号', 'bg.jpg', '这么哇塞的曲没人听甚是可惜', '2018-05-29 20:28:55', 1),
(5, 9, 'liuqiao666', 'portfolio2.jpg', '啦啦啦welcome back \n', '2018-05-29 20:29:05', 0),
(14, 9, 'liuqiao666', '640x452.jpg', 'haoting', '2018-06-27 14:44:23', 0),
(8, 6, 'liuqiao666', 'portfolio2.jpg', '这首歌在厦门白海豚音乐节上的字幕设计很有特别。 ', '2018-05-29 21:07:01', 1),
(9, 9, 'liu123', 'new image - vedlc.jpg', '好歌无人系列 ', '2018-05-31 17:01:44', 0),
(10, 6, '时光', 'lj.jpg', '每次听这张专辑都能瞬间回到有落地窗和暖暖阳光的那个冬日。 ', '2018-06-02 21:42:37', 0),
(11, 6, '时光', 'lj.jpg', '“渺小的人，站直了依然卑微。呐喊也只听得见墙壁的回音。害怕吗？反对那么多。害怕吗？迷惑那么多。我要面对恐惧无所畏惧，我要你清醒无所畏惧。” 晚安。 ', '2018-06-02 21:43:45', 0),
(12, 6, 'liu123', 'new image - vedlc.jpg', '让人瞬间安静下来的曲子，很好听吧？', '2018-06-02 21:44:51', 0),
(13, 6, 'liu123', 'new image - vedlc.jpg', '那张中唯一喜欢的一首歌。 ', '2018-06-02 21:45:42', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
