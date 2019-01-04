<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/loaders.css" rel="stylesheet" type="text/css" />
		<link href="skin/black/skin.css" rel="stylesheet" type="text/css" id="skin" />
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<title>系统框架首页</title>
		<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="js/jquery.cookie.js" type="text/javascript"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/BKframe.js" type="text/javascript"></script>
		<script src="js/layer/layer.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="" id="situation">
			<!--顶部样式-->
			<div class="bk-herder relative header-section">
				<div class="bk-herder-logo">后台管理系统</div>
				<div class="operate-header">
					<div class="" id="dropdown_menu">
						<ul class="clearfix">
							<li></li>
						</ul>
					</div>
					<div class="bk-settings-section">
						<div class="headerUser">
							<a class="user-info clickBombbox" href="javascript:void(0)" data-position="bottom" data-type="arrow"> 欢迎你,超级管理员 <i class="iconfont icon-iconfonticontrianglecopy"></i></a>
							<div class="Bombbox">
								<ul class="usercz menulist">
									<li class="column-name">
										<a href="/administrators.htm" title="个人信息" class="menuUl_title" name="administrators.htm" data-id="111"><i class="iconfont icon-guanliyuan"></i>个人信息</a>
									</li>
									<li class="column-name">
										<a href="/system_info.htm" title="系统设置" class="menuUl_title" name="system_info.htm" data-id="46"><i class="iconfont icon-system-copy"></i>系统设置</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="" onclick="dropout()"><i class="iconfont ">&#xe64f</i>退出登录</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="skin-section">
							<a href="javascript:void(0)" class="skin-btn clickBombbox iconfont icon-pifushezhi" id="skin-btn"></a>
							<div class="Bombbox">
								<ul class="skin-list">
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="black" id="default" style="background-color:#222A2D"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="blue" style="background-color:#438EB9;"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="green" style="background-color:#72B63F;"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="gray" style="background-color:#41a2ff;"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="red" style="background-color:#FF6868;"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="purple" style="background-color:#6F036B;"></a>
									</li>
									<li>
										<a class="colorpick-btn" href="javascript:void(0)" data-val="white" style="background-color:#FFFFFF;border: 1px solid #DDDDDD; color: #333333;"></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="notice-section clickBombbox">
							<a href="javascript:void(0)" class="iconfont icon-xiazai41 notice-icon mode" data-id="2"><em class="amount">3</em></a>

							<div class="Bombbox Bombbox-info">
								<ul class="tab_memu box padding10">
									<li class="boxbox-flex2">
										<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox" data-id="0">订单</a>
									</li>
									<li class="boxbox-flex2">
										<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox" data-id="1">通知</a>
									</li>
									<li class="boxbox-flex2">
										<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox" data-id="2">留言</a>
									</li>
								</ul>
								<div class="tab-box">
									<div class="tab-conent prompt_style ">
										<ul>
											<li class="prompt_info clearfix">
												<a href="javascript:void(0)" class="prompt_link"><em class="iconfont icon_prompt label-danger">&#xe745</em><span class="prompt-xinxi">你有订单还没有处理请及时处理，点击查看详细</span></a>
											</li>
											<li class="prompt_info clearfix">
												<a href="javascript:void(0)" class="prompt_link"><em class="iconfont icon_prompt label-danger">&#xe745</em><span class="prompt-xinxi">你有订单还没有处理请及时处理，点击查看详细</span></a>
											</li>
											<li class="prompt_info clearfix">
												<a href="javascript:void(0)" class="prompt_link"><em class="iconfont icon_prompt label-danger">&#xe745</em><span class="prompt-xinxi">你有订单还没有处理请及时处理，点击查看详细</span></a>
											</li>
											<li class="prompt_info clearfix">
												<a href="javascript:void(0)" class="prompt_link"><em class="iconfont icon_prompt label-danger">&#xe745</em><span class="prompt-xinxi">你有订单还没有处理请及时处理，点击查看详细</span></a>
											</li>
											<li class="prompt_info clearfix">
												<a href="javascript:void(0)" class="prompt_link"><em class="iconfont icon_prompt label-danger">&#xe745</em><span class="prompt-xinxi">你有订单还没有处理请及时处理，点击查看详细</span></a>
											</li>
										</ul>
									</div>
									<div class="tab-conent prompt_style ">

									</div>
									<div class="tab-conent prompt_style ">

									</div>
								</div>

							</div>
						</div>
						<a href="javascript:void(0)" class="radius roll-right fullscreen" id="fullscreen"><i class="iconfont icon-msnui-fullscreen"></i></a>
					</div>
				</div>
			</div>
			<!--内容显示区-->
			<div class="bk-contents content-section">
				<!--栏目显示区-->
				<div class="bk-con-menu" id="bk-con-menu">
					<div class="menubtn">
						<span class="close_btn samebtn"><i>隐藏</i></span>
						<span class="show_btn samebtn"><i>显示</i></span>
					</div>
					<a id="js-tabNav-prev" class="radius btn-default left_roll" href="javascript:void(0);"><i class="iconfont icon-zuoshuangjiantou"></i></a>
					<div class="breadcrumb" id="breadcrumb">
						<ul class="clearfix menu-section menulist" id="menu-section">
						
						</ul>
					</div>
					<a id="js-tabNav-next" class="radius btn-default right_roll" href="javascript:void(0);"><i class="iconfont icon-youshuangjiantou"></i></a>
				</div>
				<!--内容显示区-->
				<div class="bk-con-message message-section" id="iframe_box">
                 
				</div>
			</div>
			<!--底部显示区-->
			<div class="bk-footer footer-section">
				<div class="tab-column clearfix" id="tab-column">
					<ul class="tab-navigation " id="tab-navigation">
					<!--菜单地址快捷操作-->
					</ul>
				</div>
				<div class="inte-operation" id="operation">
					<a href="javascript:void(0)" class="dropdown iconfont icon-iconfonticontrianglecopy"></a>
					<div class="dropdown-menu dropdown-menu-right tab-menu-list" >
						<div class="title-name">选项卡操作</div>
						<ul class="tabslist" id="dropdown_menu">
							<li>
								<a class="tabReload" href="javascript:void(0);">刷新当前</a>
							</li>
							<li>
								<a class="tabCloseCurrent" href="javascript:void(0);">关闭当前</a>
							</li>
							<li>
								<a class="tabCloseAll" href="javascript:void(0);">全部关闭(首页)</a>
							</li>
							<li>
								<a class="tabCloseOther" href="javascript:void(0);">除此之外全部关闭</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<script>
	var data = [{
			id: 2,//默认设置显示页时该值必须保持为2,不为2时将出错
			pid: 0,
			url: "index_home.htm", //地址自定义 但需要和homepage保持一致
			icon: 'iconfont icon-home',
			name: '系统首页',
		},
		{
			id: 1,
			pid: 0,
			url: "",
			icon: 'iconfont icon-iconsp2',
			name: '产品管理',
		},
		{
			id: 4,
			pid: 0,
			url: "",
			icon: 'iconfont icon-xiangmuguanli',
			name: '支付管理',
		},
		{
			id: 5,
			pid: 0,
			url: "",
			icon: 'iconfont icon-system-copy',
			name: '系统管理',
		},
		{
			id: 6,
			pid: 0,
			url: "",
			icon: 'iconfont icon-yonghuguanli',
			name: '会员管理',
		},
		{
			id: 8,
			pid: 0,
			url: "",
			icon: 'iconfont icon-xiaoxi1',
			name: '管理员',
		},
		{
			id: 13,
			pid: 1,
			icon: '',
			url: 'getTypesByID.htm',
			name: '商品管理',

		}, {
			id: 14,
			pid: 1,
			icon: '',
			url: 'Brand_Manage.htm',
			name: '品牌管理',

		}, {
			id: 15,
			pid: 1,
			icon: '',
			url: 'order.htm',
			name: '订单管理',

		},
		{
			id: 16,
			pid: 1,
			icon: '',
			url: 'order.htm',
			name: '用户评论',

		},
		{
			id: 17,
			pid: 1,
			icon: '',
			url: 'order.htm',
			name: '库存管理',

		},
		{
			id: 18,
			pid: 4,
			icon: '',
			url: 'order.htm',
			name: '收款',
		},
		{
			id: 19,
			pid: 4,
			icon: '',
			url: 'order.htm',
			name: '退款',
		},
		{
			id: 20,
			pid: 6,
			icon: '',
			url: 'order.htm',
			name: '添加会员',
		},
		{
			id: 21,
			pid: 6,
			icon: '',
			url: 'order.htm',
			name: '删除会员',
		},
		{
			id: 21,
			pid: 6,
			icon: '',
			url: 'order.htm',
			name: '会员列表',
		},
		{
			id: 46,
			pid: 5,
			icon: '',
			url: 'system_info.htm',
			name: '系统设置',

		}, 
		{
			id: 111,
			pid:8,
			icon: '',
			url: 'administrators.htm',
			name: '个人信息',

		}
		, 
		{
			id: 112,
			pid:8,
			icon: '',
			url: 'administrators.htm',
			name: '添加管理员',
		}, 
		{
			id: 113,
			pid:8,
			icon: '',
			url: 'administrators.htm',
			name: '修改管理员',
		}, 
		{
			id: 114,
			pid:8,
			icon: '',
			url: 'administrators.htm',
			name: '删除管理员',
		}, 
		{
			id: 115,
			pid:8,
			icon: '',
			url: 'administrators.htm',
			name: '管理员列表',
		}
		
	]
	$(function() {
		$("#situation").BKframe({
			data: data, //数据,支持API传输但需要保证数据格式一样
			menuopt: 'click', //点击菜单栏显示模式'click'和'hover'
			boxname: '.Bombbox', //弹框模块
			bkposition: "left",//菜单栏显示的方式，现有左侧列表展示和顶部列表展示方式两种
			slide: '#breadcrumb',//设置菜单栏目样式属性
			cookieDate:7,//设置皮肤显示时间（天单位）
			rightclick: false, //是否启用右键功能(为true是右键失效，为false时右键显示)
			minStatue:false,//设置默认是否显示菜单栏（true为隐藏/false为显示）
			homepage:"/index_home.htm", // 设置默认显示页（id值必须为2，否则将出错）
			scrollbar:function(e){
				e.niceScroll({
					    cursorcolor: "#dddddd",
					    cursoropacitymax: 1,
					    touchbehavior: false,
					    cursorwidth: "3px",
					    cursorborder: "0",
					    cursorborderradius: "3px",
				 });						
			},//自定义滚动样式(可以自己写也可以用第三方插件)
			expand:function(thisBox,settings){						
			    settings.scrollbar($(settings.slide));	//设置显示弹框模块是否需要滚动（自定义）
                settings.loading=('<div class="loader-inner ball-spin-fade-loader"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>'); //定义加载动画   	
			}//自定义方法
		});
	});
//退出系统
function dropout(){
    layer.confirm('是否确定退出系统？', {
     btn: ['是','否'] ,//按钮
	 icon:1,
    }, 
	function(){
	  location.href="/login.htm";  
   });
}
</script>