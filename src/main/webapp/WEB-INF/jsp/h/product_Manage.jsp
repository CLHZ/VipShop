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
							 		<dt style="color: #FF6868;">${ptype.t_Name}</dt>
							 			<c:forEach items="${ptype.table1}" var="stype">
							     	<dd id="${stype.t_ID}">
							     	<a target="pollmain" href="getShop.htm?id=${stype.t_ID}">
							     	${stype.t_Name}
							     	</a>
							     	</dd>
							   			</c:forEach>
							 		
							 	</dl>
							</c:forEach>
							</li>
						</ul>
			</nav>
	</div>
	
	<!--右侧内容-->
	<iframe name="pollmain" width="1136px" height="1053.5px" id="pollmain" src="getShop.htm" data-href="getShop.htm">
		
	</iframe>
  </div>
  
 </body>
</html>
<script>

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
