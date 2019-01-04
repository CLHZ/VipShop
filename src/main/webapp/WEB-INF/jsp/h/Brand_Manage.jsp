<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

	<head>
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" />
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/pages.css" rel="stylesheet" type="text/css" />
		<title>品牌管理</title>
		<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/HUpages.js" type="text/javascript"></script>
		<script src="js/template.js" type="text/javascript"></script>
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
				<div class="breadcrumb" id="breadcrumb">
					<ul class="clearfix menu-section menulist" id="brandsort">

					</ul>
				</div>
			</div>
			<!---->
			<div class="bk-con-message message-section" id="iframe_box">
				<!--编辑内容-->
				<div class="operation  mb15">
					<button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont">&#xe601</i>&nbsp;批量删除</button>
					<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加品牌</button>
					<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;品牌分类</button>
				</div>
				<div class="page_content clearfix mb15 table-module ">
					<div class="brandlist" id="brandlist">
					</div>
				</div>
			</div>
		</div>
	</body>

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
		//获取数据
		function Brandlist() {
			var loadMore = function(callback) {
				$.ajax({
					url: "json/brand.json",
					type: "GET",
					dataType: 'json',
					success: function(ret) {
						typeof callback == 'function' && callback(ret);
					},
				});
			};
			loadMore(function(listArr) {
				var listhtml = $('#brandlist');
				var sorthtml=$("#brandsort");	
				var html = template('brandhtml', {
					list: listArr.brandlist,
					sort: listArr.brandSort
				});
				var shtml = template('brandsorthtml', {
					sort: listArr.brandSort
				});
				listhtml.append(html);
				sorthtml.append(shtml);
				var status = listhtml.find('.brand-info');
				for(var i = 0; i < status.length; i++) {
					var statusid = listhtml.find('.name_status').eq(i).attr('data-id');
					if(statusid != 1) {
						listhtml.find('.name_status').eq(i).addClass('statusNO');
					}
				}
			});
		}
		Brandlist();
		//启用状态
		function clickstatus(e) {

		};
		//删除
		function deleteBrand(e){
			
			
		}
		//修改
		function modifyBrand(e){
			
		}	
	});
</script>