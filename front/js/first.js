window.onload = function () {
            var liItems = document.getElementById("imgChange").children;
            var circles = document.getElementsByClassName("circles")[0].children;

            var count = 0;//计数器
            var timer1 = null,timer2 = null;
//            定义图片切换函数(即改变透明度)
            function showImages(index){
            //要显示第index张图片的函数封装
                for(var i = 0;i < liItems.length;i++　){
            //把所有的图片设置用index,重叠到一起,用zindex排序,
                    liItems[i].style.opacity = 0;
                    //把所有的图片都设置成透明度为0;都不显示
                    circles[i].className = "";
                }
                liItems[index].style.opacity = 1;
                //谁要显示,就给谁单独把透明度改为1,单独显示出来
                circles[index].className = "active";
            }
            showImages(0);//打开网页要显示的图片

            function autoplay(){
            //用来封装自动播放的函数体,真正的自动播放在定时器调用
                if(count % 5 == 0){//一个循环体来设置,总共有5张,即图片的count对应4就是第5张图,
                    // count为4的时候,已经超出图片显示量,将其初始化为0,变为第一张
                    count = 0;
                }
                showImages(count);//显示第count张图片
                count++;//准备下一张
            }
            timer1 = setInterval(autoplay,2000);

            //箭头动态变化
            document.getElementsByClassName("arr_left")[0].onclick = function () {
                clearInterval(timer1);
                if(count == 0){
                    count = 5;
                }
                count--;
                showImages(count);
                console.log(count);
                timer1 = setInterval(autoplay,2000);
            };
            document.getElementsByClassName("arr_right")[0].onclick = function (){
                clearInterval(timer1);
                autoplay();
                timer1 = setInterval(autoplay,4000);
            };
            //点击小圆点事件
            console.log(circles);

            for(var i = 0;i < circles.length;i++){
                circles[i].index = i;//中间变量保存下i的值
                circles[i].onclick = function () {
                    clearInterval(timer1);
                    showImages(this.index);
                    timer1 = setInterval(autoplay,2000);
                }
            }
        }

 
//标签页图标 文字闪烁
 var newRemindFlag = 1; //启动闪烁
    /*
     pageTitle:原页面的标题
     showRemind:闪烁时显示的东东：如【新提醒】
     hideRemind:闪烁时隐藏的东东：如【　　　】
     time:闪烁间隔的时间
     */
    function newRemind(pageTitle, showRemind, hideRemind, time) {
        if (newRemindFlag == 1) {
            document.title = showRemind + pageTitle;
            newRemindFlag = 2;
        } else {
            document.title = hideRemind + pageTitle;
            newRemindFlag = 1;
        }
        setTimeout("newRemind('" + pageTitle + "','" + showRemind + "','" + hideRemind + "'," + time + ")", time);
    }
    newRemind('', '音悦是互相欣赏的平台', '快来分享吧~', 1000)