<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/pages.css" rel="stylesheet" type="text/css" />
		<title>个人信息</title>
		<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="js/jquery.cookie.js" type="text/javascript"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/HUpages.js" type="text/javascript"></script>
		
	</head>
	<body id="pagestyle" class="backgrounddd">
		 <div class="bk-con-message message-section" id="iframe_box">
			<div class="box-module height100b margin0">
				<div class="box-title">个人信息</div>
				<div class="box-content padding15">
					<div class="Promp_plate btn-green "><b>提示：</b>由于界面太多此页面就不做详细，可以通过微信查看我的信息！！！！
						<span  class="iconfont PrompClose">&#xe627</span>
					</div>
		
					<div class="clearfix ptb20">
						<div class="col-lg-6 padding15">
						   <div class="box-module boxcolor">
						   <div class="box-title btn-green clickBombbox selected" data-type="arrow">微信扫一扫，立刻查看我的信息 <i class="iconfont icon-35_xiangxiajiantou arrow"></i></div>
						   <div class="box-content padding15 text-center Bombbox">
						   	<img src="images/stencil/wx1.png" width="200px">
                          </div>
						   </div>
						</div>
					</div>	
				</div>
			</div>
	    </div>
	</body>
</html>
<script>
	$(function() {
		$("#pagestyle").Hupage({
			slide: '#breadcrumb',
			scrollbar:function(e){
				e.niceScroll({
					      cursorcolor: "#dddddd",
					      cursoropacitymax: 1,
					      touchbehavior: false,
					      cursorwidth: "3px",
					      cursorborder: "0",
					      cursorborderradius: "3px",
				 });						
			},
			expand: function(thisBox, settings) {
				settings.scrollbar(thisBox);//设置当前页滚动样式
			}
		})
	})
	
 
</script>