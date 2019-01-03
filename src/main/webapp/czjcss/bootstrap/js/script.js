var timer = null,
    index = 0,
    pics = document.getElementsByClassName("banner-slide");
 
 
//封装一个代替getElementById()的方法
function byId(id){
    return typeof(id) === "string"?document.getElementById(id):id;
}
 
function slideImg() {
    var main = byId("main");
    var banner = byId("banner");
    main.onmouseover = function(){
        stopAutoPlay();
    }
    main.onmouseout = function(){
        startAutoPlay();
    }
    main.onmouseout();

}
//开始播放轮播图
function startAutoPlay(){
    timer = setInterval(function(){
        index++;
        if(index>2){
            index = 0;
        }
        changeImg();
    },3000);
}
//暂停播放
function stopAutoPlay(){
    if (timer) {
        clearInterval(timer);
    }
}

function changeImg(){
    for(var i=0;i<pics.length;i++){
        pics[i].style.display = "none";
    }
    pics[index].style.display = "block";
}


slideImg();