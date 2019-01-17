<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

	<head>
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" />
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/pages.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<title>品牌管理</title>
		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/HUpages.js" type="text/javascript"></script>
		<script src="js/template.js" type="text/javascript"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style type="text/css">
			td {
				padding: 15px;
			}
			
			/* 模态框的图片 */
			.img{
				height: 140px;
				width: 240px;
			}
			
			.brandimg{
				height: 140px;
				width: 240px;
			}
		</style>
	</head>

	<body id="pagestyle">
		<div class="pages-style">
			<!--左侧菜单栏-->
			<div class="bk-con-menu " id="bk-con-menu">
				<div class="menubtn">
					<span class="close_btn samebtn"><i>隐藏</i></span>
					<span class="show_btn samebtn"><i>显示</i></span>
				</div>
				<div class="title-menu">栏目分类</div>
				<div class="breadcrumb" id="breadcrumb" style="height:640px;width:100%;overflow:auto;">
					<ul class="clearfix menu-section menulist" id="brandsort">
						<script type="text/javascript">
							$(function(){
								var hight = $("#brandlist").height();
								$.ajax({
									type:"post",
									url:"brandmanage.htm",
									success:function(data){
										var html = "";	
										var list = "<table>";
										var dy = 0;
										for (var i = 0; i < data.length; i++) {
											html += "<li><dl><dt>"+data[i].b_Name+"</dt></dl></li>";
											if(i%4==0){
												list += "<tr>";
												dy = i;
											}
											list += "<td><img class='brandimg' src='' data-imgurl='"+data[i].b_Picture+"'><br/><input type='checkbox' value='"+data[i].b_ID+"'/><a href='#'  data-toggle='tooltip' data-placement='top' title='双击修改' ondblclick=\"modifyBrand('"+data[i].b_ID+"','"+data[i].b_Name+"','"+data[i].b_Picture+"','"+data[i].b_Discount+"')\">"+data[i].b_Name+"</a></td>";
											if(i!=0 && i!= dy){
												if(i%4==0){
													list += "</tr>";
												}
											}
										}
										list += "</table>";
										$("#brandsort").append(html);
										$("#brandlist").append(list);
									}
								});
								
								$(".brandkey").click(function(){
									$(this).css({"border":"3px solid #438EB9"})
								});
								
								$(".brandkey").blur(function(){
									$(this).css({"border":""})
								});
								
								$(".brandkey").bind('keydown',function(){
									var brandname = $(this).val();
									if(event.keyCode == "13") {
										$.ajax({
											type:"post",
											url:"searchBrand.htm",
											data:{brandname:brandname},
											success:(data)=>{
												if(data == ""){
													$("#brandlist").html("<h3 style='padding:100px 0 0 150px'>非常抱歉，没有找到与\"<span style='color:red'>"+brandname+"</span>\"相关的品牌</h3>");
												}else{
													var list = "<table>";
													var dy = 0;
													for (var i = 0; i < data.length; i++) {
														
														if(i%4==0){
															list += "<tr>";
															dy = i;
														}
														list += "<td><img class='brandimg' src='"+data[i].b_Picture+"'><br/><input type='checkbox' value='"+data[i].b_ID+"'/><a href='#'  data-toggle='tooltip' data-placement='top' title='双击修改' ondblclick=\"modifyBrand('"+data[i].b_ID+"','"+data[i].b_Name+"','"+data[i].b_Picture+"')\">"+data[i].b_Name+"</a></td>";
														if(i!=0 && i!= dy){
															if(i%4==0){
																list += "</tr>";
															}
														}
													}
													list += "</table>";
													$("#brandlist").empty();
													$("#brandlist").append(list);
												}
											}
										});
								    }
								});
							});
						</script>
					</ul>
				</div>
			</div>
			<!---->
			<div class="bk-con-message message-section" id="iframe_box">
				<!--编辑内容-->
				<div class="operation  mb15">
					<button class="btn button_btn btn-danger" type="button" onclick="deleteBrand()"><i class="iconfont">&#xe601</i>&nbsp;批量删除</button>
					<button class="btn button_btn bg-deep-blue" type="button" data-toggle="modal" data-target="#myModal">添加品牌</button>
					<input type="text" class="brandkey" name="brandkey" placeholder="输入品牌"/>
					<button style="color:yellow;background:red;float:right" class="btn button_btn" type="button" onclick="deleteAll()">删除全部</button>
				</div>
				<div class="page_content clearfix mb15 table-module ">
					<div class="brandlist" id="brandlist" style="height:580px;width:100%;overflow:auto;">
					
					</div>
				</div>
			</div>
		</div>
	</body>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
				</h4>
			</div>
			<div class="modal-body">
				<table>
					<tr>
						<td>品牌名称：</td>
						<td><input class="bname" type="text" name="b_name" placeholder="输入新品牌"/></td>
					</tr>
					<tr>
						<td>折扣：</td>
						<td><input class="discount" type="text" name="discount"></td>
					</tr>
					<tr>
						<td>状态：</td>
						<td>
							<select class="publish" name="publish">
								<option>发布</option>
								<option>下架</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>选择图片：</td>
						<td><div class="showimg">图片预览区</div></td>
					</tr>
					<tr>
						<td colspan='2'><input class="img-rounded" type="file" name="img" multiple/></td>
					</tr>
				</table>
				<p></p>
				<p></p>
<script>
	//模态框处理品牌添加
	$(document).ready(function () {
		var oSubmit = document.getElementById("submit");
		var fil;  
		$(".bg-deep-blue").click(function(){
			$(".bname").val("");
			$(".discount").val("");
			
			$(".modal-title").text("品牌添加");
			$('.showimg').text("图片预览区");
			$("#submit").text("添加");
		});
		
		$(".img-rounded").change(function () {
			$('.showimg').empty();
			fil = this.files;
			for (var i = 0; i < fil.length; i++) {
				reads(fil[i]);
			}
		});
		
		function reads(fil){
			var reader = new FileReader();
			reader.readAsDataURL(fil);
			reader.onload = function(){
				// document.getElementById("dd").innerHTML += "<img src='"+reader.result+"'>";
				$('.showimg').append("<img class='img' src='"+reader.result+"' alt='图片显示区' title='图片显示区'/>");
			};
		}
		
		 
		oSubmit.onclick=function(){ 
	        if(fil == undefined){    
	            return alert("需要先上传图片");    
			} else {
				$.ajax({    
		            url : "addBrand.htm",    
		            type : "post", 
		            data : {fil:fil},    
		            //processData: false,   用FormData传fd时需有这两项    
		            //contentType: false,    
		            success : ()=>{    
		            	$(".bname").text("");
		                	alert("品牌添加成功！");
		          }
		        });  
			}    
	    }
	});
	
	
</script>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="submit"></button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</html>
<script>
	$(function() {
		//内页框架结构编辑
		$("#pagestyle").Hupage({
			slide: '#breadcrumb',
			padding: 15,
			menuModule: '#bk-con-menu', //菜单模块
			pagecontent: '.page_content', //自定义属性
			operation: '.operation', //自定义属性
			scrollbar: function(e) {
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
				var pc = "";
				$(settings.pagecontent).css("margin-bottom") != null ? pc = parseInt($(settings.pagecontent).css("margin-bottom").replace("px", "")) : '';
				$(settings.pagecontent).css({
					height: $(window).height() - $(settings.operation).outerHeight() - pc - (settings.padding * 2)
				})
				settings.scrollbar($(settings.slide) && $(settings.pagecontent));
			} //自定义方法
		});
	});
	
	//删除全部
	function deleteAll(){
		var choose = document.getElementsByTagName("input");
		var id = new Array();
		var index = 0;
		let xuanze = confirm("警告：此操作删除所有品牌信息，行为不可恢复，是否继续！");
		if(xuanze){
			for (var i = 0; i < choose.length; i++) {
				$(choose[i]).is(':checked');
				id[index] = $(choose[i]).val();
				index++;
			}
			if(index != 0){
				$.ajax({
					type:"post",
					url:"deleteBrand.htm",
					data:{id:"deleteAll"},
					traditional: true,
					success:()=>{
						alert("删除成功！");
						window.location.reload();
					}
				});
			} else {
				alert("请先添加数据！");
			}
		}
	}
	
	//批量删除
	function deleteBrand(){
		var choose = document.getElementsByTagName("input");
		var id = new Array();
		var index = 0;
		let xuanze = confirm("确定删除？");
		if(xuanze){
			for (var i = 0; i < choose.length; i++) {
				if($(choose[i]).is(':checked')){
					id[index] = $(choose[i]).val();
					index++;
				}
			}
			if(index != 0){
				$.ajax({
					type:"post",
					url:"deleteBrand.htm",
					data:{id:id},
					traditional: true,
					success:()=>{
						alert("删除成功！");
						window.location.reload();
					}
				});
			} else {
				alert("请先勾选需要删除的数据！");
			}
		}
	}
	
	//修改品牌内容
	function modifyBrand(id,dataname,pic,dis){
		$("#myModal").modal();
		$('.showimg').empty();
		$(".modal-title").text("品牌修改");
		$("#submit").text("修改");
		$(".bname").val(dataname);
		$(".discount").val(dis);
		$('.showimg').append("<img class='img' src='"+pic+"' alt='图片显示区' title='图片显示区'/>");
		/* $(".bname").attr("disabled",true); */
		$("#submit").click(function(){
			$.ajax({
				
			});
		});
	}
</script>



<script type="text/javascript">
  var aImages = $(".brandimg"); //获取id为SB的文档内所有的图片
  loadImg(aImages);
  window.onscroll = function() { //滚动条滚动触发
  	loadImg(aImages);
  };
  //getBoundingClientRect 是图片懒加载的核心
  function loadImg(arr) {
  for(var i = 0, len = arr.length; i < len; i++) {
   if(arr[i].getBoundingClientRect().top < document.documentElement.clientHeight && !arr[i].isLoad) {
   arr[i].isLoad = true; //图片显示标志位
   //arr[i].style.cssText = "opacity: 0;"; 
   (function(i) {
    setTimeout(function() {
    if(arr[i].dataset) { //兼容不支持data的浏览器
     aftLoadImg(arr[i], arr[i].dataset.imgurl);
    } else {
     aftLoadImg(arr[i], arr[i].getAttribute("data-imgurl"));
    }
    arr[i].style.cssText = "transition: 1s; opacity: 1;" //相当于fadein
    }, 500)
   })(i);
   }
  }
  }
 
  function aftLoadImg(obj, url) {
  var oImg = new Image();
  oImg.onload = function() {
   obj.src = oImg.src; //下载完成后将该图片赋给目标obj目标对象
  }
  oImg.src = url; //oImg对象先下载该图像
  }
 </script>