<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/pages.css" rel="stylesheet" type="text/css" />
		<title>商品管理</title>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/HUpages.js" type="text/javascript"></script>
		<script src="js/common.js" type="text/javascript"></script>
		<link href="css/style.css" rel="stylesheet"/>
<script>
 $(function(){   
	$(".nav dt").toggle(
	  function(){$(this).siblings().slideDown("slow");},
	  function(){$(this).siblings().slideUp("slow");}
	)
 });
</script>
	</head>

<body id="situation">
<div class="pages-style" >
	<!--左侧菜单栏-->
	<div class="bk-con-menu " id="bk-con-menu">
			<nav class="nav">
				<header>栏目分类</header>
						<ul>
							 <li>
							<c:forEach items="${typesByID}" var="ptype">
							 
							 	<dl>
							 		<dt id="${ptype.t_ID}">${ptype.t_Name}</dt>
							 			<c:forEach items="${ptype.table1}" var="stype">
							     	<dd class="a" id="${stype.t_ID}"><a>${stype.t_Name}</a></dd>
							   			</c:forEach>
							 		
							 	</dl>
							</c:forEach>
							</li>
						</ul>
			</nav>
	</div>
	
	<!--右侧内容-->
	<div class="bk-con-message message-section" id="iframe_box">
           <!--编辑内容-->
           <div class="operation  mb15">
           	<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;批量删除</button>
           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加商品</button>
           	<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>
           </div>
           <!--列表内容-->
           <div class="page_content clearfix mb15 table-module ">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           		<thead>
		        <tr>
				<th ><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th >分类</th>
				<th width="130">图片</th>
				<th >尺寸（大小）</th>
				<th >链接地址</th>
				<th >加入时间</th>
				<th >状态</th>                
				<th >操作</th>
		       </tr>
		       </thead>
		       <tbody>
           		<tr>
           		<%-- <c:forEach items="shop" var="s"> --%>
           		<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
           		<td>${s.t_Name}</td>
           		<td><a href="images/ad/ad.jpg" class="zoomimg"><img src="images/ad/ad.jpg"  width="100%" height="100%"/></a></td>
           		<td>1920*680</td>
           		<td></td>
           		<td></td>
           		<td></td>
           		<td></td>
           		<%-- </c:forEach> --%>
           		</tr>
           		<tr>
           		<td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
           		<td>幻灯片</td>
           		<td><a href="images/ad/ad1.jpg" class="zoomimg"><img src="images/ad/ad1.jpg"  width="100%" height="100%"/></a></td>
           		<td>1920*680</td>
           		<td></td>
           		<td></td>
           		<td></td>
           		<td></td>
           	
           		</tr>
		       </tbody>
           	</table>
           </div>
    </div>
  </div>
 </body>
</html>
<script>
$(".a").click(function(){
	   var id = document.getElementById("${stype.t_ID}");
	   console.log(id);
	});
$(function() {
	
	//内页框架结构编辑
	$("#situation").Hupage({
		slide: '#breadcrumb',
		padding:15,
		menuModule:'#bk-con-menu', //菜单模块
		pagecontent:'.page_content',//自定义属性
		operation:'.operation',//自定义属性
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
		expand:function(thisBox,settings){	
			var pc="";
			$(settings.pagecontent).css("margin-bottom")!=null? pc=parseInt($(settings.pagecontent).css("margin-bottom").replace("px","")):'';
		    $(settings.pagecontent).css({height:$(window).height()-$(settings.operation).outerHeight()-pc-(settings.padding*2)})
		    settings.scrollbar($(settings.slide) && $(settings.pagecontent));		    
		}//自定义方法
	});
 });
 
</script>