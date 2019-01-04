<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/13
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>头部</title>
<link href="${pageContext.request.contextPath}/czjcss/headcom.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/czjcss/mst.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/czjcss/common-hash.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/czjcss/footer.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/czjcss/index.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/czjcss/sidebar.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/czjcss/bootstrap/js/jquery.js"></script>
<!-- 123导航菜单 -->
<script type="text/javascript">
	/* 菜单下拉JS */
	$(function(){
		//鼠标移至商品分类上
		$(".nav-category").mouseover(function(){
			//2级菜单展开
			$(".cate-menu").css("height","495px");
			$(".cate-menu-item").mouseover(function(){
				$(".cate-menu").css("height","495px");
				$(".cate-pop").show();
				$(".cate-pop").mouseover(function(){
					$(".cate-menu").css("height","495px");
				});
			});
		});
		
		//离开商品分类
		$(".nav-category ").mouseout(function(){
			$(".cate-menu").css("height","0px");
		});
		
		$(".main-nav-atag").mouseover(function(){
			$(".cate-menu").css("height","0");
			$(".cate-pop").hide();
		});
		
		$(".index-content").mouseover(function(){
			$(".cate-menu").css("height","0");
			$(".cate-pop").hide();
		});
		
		$(".head-logo").mouseover(function(){
			$(".cate-menu").css("height","0");
			$(".cate-pop").hide();
		});
		
		
		//移至2级菜单显示3级菜单
		var catemenu = document.getElementsByClassName("cate-menu-item");
		for(var i = 0; i < catemenu.length; i++){
			catemenu[i].index=i;  
			catemenu[i].onmouseover = function(){
				var html = "";
				var id = this.index+1;
				var length=0;
				$.ajax({
					type : "post",
					url : "getcateitem.htm",
					data : {"id":id},
					success : function(data){
						for(var i = 0; i < data.length; i++){
							if(data[i].t_parentID == id){
								html += "<dl class='cate-detail-item cate-detail-item1'>";
								html += "<dt class='cate-detail-tit'><i class='vipFont'></i>";
								html += "<span mars_exposure_module='category_all_expose_323845'>"+data[i].t_Name+"</span></dt>";
								html += "<dd class='cate-detail-con'>";
								for(var j = 0; j < data.length; j++){
									if(data[j].t_parentID == data[i].t_ID){
										html += "<a target='_blank' id='"+data[j].t_ID+"' href='${pageContext.request.contextPath}/hth/Goods.htm?id="+data[j].t_ID+"&name="+data[j].t_Name+"' >"+data[j].t_Name+"</a>";
										$(".typelink").click(function () {
											$(this).attr("href","");
										});
									}
								}
								html += "</dd></dl>";
								$(".cate-detail").html(html);
							}
						}
					}
				});
			};
		}
		
	});
	
</script>

<!-- 购物车标JS -->
<script type="text/javascript">
	$(function(){
		$("#J_head_cart").mouseover(function(){
			$(".tool").css("height","44px").css("background-color","#fff").css("border-bottom","0");
			$(".tool-cn").css("display","block");
			$(".tool-cn").mouseout(function(){
				$(".tool-cn").css("display","none");
			});
		});
		$("#J_head_cart").mouseout(function(){
			$(".tool").css({"background-color":"#f6f7f9","height":"32px","border":"1px solid #ccc"});
			$(".tool-cn").css("display","none");
		});
	});
</script>

<!-- 地址 -->
<script type="text/javascript">
	$(function(){
		$(".c-h-area-header").click(function(){
			$(this).addClass("c-h-area-header");
			$(".c-h-area-body").toggle();
		},function () {
			$(".c-h-area-body").toggle();
		});
		$(".c-h-area-icon-close").click(function(){
			$(".c-h-area-body").hide();
		});
	});
</script>

<!-- 滚动监听 -->
<script type="text/javascript">
window.onscroll= function(){
	//变量t是滚动条滚动时，距离顶部的距离
    var t = document.documentElement.scrollTop||document.body.scrollTop;
    var header = document.getElementById("J_main_nav");
    if(t<200){//恢复正常
    	header.style.position = "absolute";
    	header.style.width = "100%";
    	$(header).css("box-shadow","");
    }else{          
    	header.style.position = "fixed";
    	header.style.top = "0";
    	header.style.width = "100%";
    	header.style.height = "43px";
    	$(header).css("box-shadow","0 1px 3px 0 #a7a7a7").css("z-index","1");
    }
	
	
	
    var scrollup = document.getElementById("J-index-nav-sort");
    //当滚动到距离顶部200px时，返回顶部的锚点显示
    if(t<1140){//恢复正常
        scrollup.style.position="absolute";
        scrollup.style.top="1120px";
    }else{          
        scrollup.style.position="fixed";
        scrollup.style.top="112px";
    }
}
</script>
</head>
<body>
	<!-- 头部 -->
	<header id="vip-common-header"
		class="header vip-common-header clearfix adapt-open">
		<nav class="top-nav">
			<div id="J_top_nav" class="head-inner">
				<div id="J_header_address_container" class="c-h-area">
					<div class="c-h-area-header" id="" mars_sead="home_header_location">
						<div class="c-h-area-title" id="J_header_selected_html"
							data-flag="province" data-id="0">长沙市</div>
						<div class="c-h-area-triangle"></div>
					</div>
					<div class="c-h-area-body" id="J_header_area_content">
						<p class="c-h-area-explain">请选择你所在的收货地区</p>
						<div class="c-h-area-tab">
							<div class="c-h-area-tab-header">
								<ul class="c-h-area-tab-title">
									<li id="J_header_tab_province"
										class="J_header_address_tab c-h-area-tab-title-item"
										data-flag="province">省份</li>
									<li id="J_header_tab_city"
										class="J_header_address_tab c-h-area-tab-title-item f-hide"
										data-flag="city">城市</li>
									<li id="J_header_tab_country"
										class="J_header_address_tab c-h-area-tab-title-item f-hide"
										data-flag="country">县区</li>
									<li id="J_header_tab_street"
										class="J_header_address_tab c-h-area-tab-title-item f-hide"
										data-flag="country">街道</li>
								</ul>
							</div>
							<div class="c-h-area-tab-body">
								<ul id="J_header_province_container"
									class="c-h-area-list c-h-area-list-province"
									mars_sead="home_top_zone_link"></ul>
								<ul id="J_header_city_container"
									class="c-h-area-list c-h-area-list-city f-hide"
									mars_sead="home_top_zone_link"></ul>
								<ul id="J_header_country_container"
									class="c-h-area-list c-h-area-list-city f-hide"
									mars_sead="home_top_zone_link"></ul>
								<ul id="J_header_street_container"
									class="c-h-area-list c-h-area-list-city f-hide"
									mars_sead="home_top_zone_link"></ul>
							</div>
						</div>
						<a id="J_header_area_close" href="JavaScript:;"
							class="vipFont  c-h-area-icon-close" role="button"></a>
					</div>
				</div>
				<ul class="top-nav-tool" id="J-topNavTool">
					<li class="wp-my">
						<ul id="J_head_log"
							class="login-before login_before user-no-cookies">
							<li class="wp-user" data-hover="wp-user-hover" id="J-wp-user">
								<span class="user-in" id="J_user_logined" style="display: none;">
									<a id="J_viplevel"
									href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
									class="user-in-vip"><i></i></a> <a
									href="//myi.vip.com/index.html" target="_blank"
									class="user-in-name">{$J_header_account} </a> <i
									class="ico-dis"></i>
							</span>
								<p class="hidden top-nav-inf" id="J_user_unLogin">
									<span class="top-nav-inf-pc"> <a href="#"
										mars_sead="home_top_nav2_login" class="J_header_lnkLogin"
										rel="nofollow"> <em class="name">{$J_header_account}</em><span
											class="u-name-slash">/</span> 请登录
									</a> <i class="ico-dis"></i>
									</span>
								</p> <span class="user-noid" id="J_user_noId"> <a
									href="https://passport.vip.com/login"
									mars_sead="home_top_nav2_login" class="J_header_lnkLogin"
									rel="nofollow">请登录</a>
							</span>

								<div class="top-nav-dis user-infor" id="J_userInfo">
									<i class="ico-arw-bodder" id="J-ico-arw-bodder"
										style="width: 71px;"></i>
									<div class="top-nav-inf clearfix">
										<span class="top-nav-pic-avater"></span>
										<div class="top-nav-pic-infs">
											<p id="J_uInfo_name">
												<a href="login.html" mars_sead="home_top_nav2_login" class="J_header_lnkLogin" rel="nofollow"> 
													<span id="J_uInfo_welcom">您好！</span> 
													<span class="top-nav-login">[请登录]</span>
												</a>
											</p>
										</div>
									</div>
									<div class="top-nav-pic clearfix">
										<a class="top-nav-pic-avater" mars_sead="top_nav2_log_my2"
											id="J_topNavUserAvatar" href="//myi.vip.com/index.html"
											target="_blank"></a>
										<div class="top-nav-pic-infs">
											<a href="//myi.vip.com/index.html" target="_blank"
												id="J_nPic_name" class="top-nav-nickname"
												mars_sead="top_nav2_log_my">{$J_header_account}</a> <a
												href="#" class="top-nav-logout" id="J_header_lnkLogOut"
												mars_sead="home_top_nav2_log_logout">[退出]</a>
										</div>
									</div>
									<p class="top-nav-list">
										<span> <a href="//fav.vip.com/index.php?r=/fav/brand"
											mars_sead="home_top_nav2_log_collect" target="_blank">我的收藏</a>
										</span> <span> <a href="//order.vip.com/order/orderlist"
											mars_sead="home_top_nav2_log_order" target="_blank">我的订单
												<i id="J-header-myOrder" class="top-nav-order-num"></i>
										</a>
										</span> <span> <a href="//myvpal.vip.com/pc/wallet"
											target="_blank">零钱</a>
										</span> <span> <a href="//myi.vip.com/coupons.html"
											target="_blank">我的优惠券</a>
										</span> <span> <a href="//myi.vip.com/vipmoney.html"
											target="_blank">我的唯品币</a>
										</span> <span id="J_user_msg" style="display: none;"> <a
											href="//myi.vip.com/messageCenter.html"
											mars_sead="home_top_nav2_log_message" target="_blank">最新消息</a>
											<i id="J_user_msgIcon" class="ico-myinfor" title="查看我的信息"></i>
										</span> <span> <a href="//lc.vip.com/?ep=pshouyexiala0115lc"
											mars_sead="home_top_nav2_log_jinrong" target="_blank">唯品金融</a>
										</span>
									</p>
								</div>
							</li>
							<li id="J_Register_hasnoname" class="register_hasnoname"><a
								href="https://passport.vip.com/register"
								mars_sead="home_top_nav2_reg"
								class="i-link J_header_lnkRegister" rel="nofollow">注册</a></li>
						</ul>
					</li>
					<li id="J_signin_wrap" class="wp-sign" data-hover="wp-order-hover"
						style="display: list-item;"><span> <i
							id="J_signin_icon" class="wp-sign-icon"></i><span
							id="J_signin_text">签到有礼</span>
					</span>
						<div id="J_signin_container"></div>
						<div id="J_signin_error_container"></div></li>
					<li class="wp-order" data-hover="wp-order-hover"><span
						class="order-in"> <a href="//order.vip.com/order/orderlist"
							mars_sead="home_top_nav2_order" target="_blank" rel="nofollow">我的订单</a>
					</span></li>
					<li class="wp-service wp-fav-nav" data-hover="wp-fav-nav-hover"
						id="J-favs"><span class="service-in"> <a
							href="//fav.vip.com/brand" target="_blank"
							mars_sead="home_top_nav2_collect" rel="nofollow">我的特卖</a> <i
							class="ico-dis"></i>
					</span>
						<div class="top-nav-dis service-infor fav-nav-drop">
							<i class="ico-arw-bodder"></i>
							<p class="top-nav-list">
								<span><a href="//fav.vip.com/brand" target="_blank"
									mars_sead="home_top_nav2_brand" rel="nofollow">品牌收藏(<i
										id="J_favBrand_count">0</i>)
								</a></span> <span><a href="//fav.vip.com/goods" target="_blank"
									mars_sead="home_top_nav2_product" rel="nofollow">商品收藏(<i
										id="J_favCommodity_count">0</i>)
								</a></span> <span><a href="//fav.vip.com/browse" target="_blank"
									mars_sead="home_top_nav2_footprint" rel="nofollow">我的足迹(<i
										id="J_footprint_count">0</i>)
								</a></span>
							</p>
						</div></li>
					<li class="wp-service wp-member" data-hover="wp-service-hover">
						<span class="service-in"> <a href="//iclub.vip.com/"
							target="_blank" mars_sead="home_top_nav2_club"> 会员俱乐部 </a> <i
							class="ico-dis" style="margin-top: 13px"></i>
					</span>
						<div class="top-nav-dis service-infor">
							<i class="ico-arw-bodder"></i>
							<p class="top-nav-list">
								<span> <a href="//iclub.vip.com/"
									mars_sead="home_top_nav2_jf" target="_blank" rel="nofollow">俱乐部首页</a>
								</span> <span> <a href="//iclub.vip.com/"
									mars_sead="home_top_nav2_jf" target="_blank" rel="nofollow">唯品币兑换</a>
								</span>
							</p>
						</div>
					</li>
					<li class="wp-service" data-hover="wp-service-hover"><span
						class="service-in"> 客户服务 <i class="ico-dis"></i>
					</span>
						<div class="top-nav-dis service-infor">
							<i class="ico-arw-bodder"></i>
							<p class="top-nav-list">
								<span> <a href="//acs.vip.com/"
									mars_sead="home_top_nav2_kefu" target="_blank" rel="nofollow">联系客服</a>
								</span> <span> <a href="//help.vip.com/"
									mars_sead="home_top_nav2_help" target="_blank" rel="nofollow">帮助中心</a>
								</span> <span> <a href="//acs.vip.com/index.html"
									mars_sead="home_top_nav2_feedback" target="_blank"
									rel="nofollow">服务中心</a>
								</span> <span> <a href="//survey.vip.com/932697?lang=zh-Hans"
									mars_sead="home_top_nav2_feedback" target="_blank"
									rel="nofollow">知识产权投诉</a>
								</span>
							</p>
						</div></li>
					<li class="wp-phone" data-j-hover="wp-phone-hover" id="J_phone_tip">
						<span class="phone-in"><a href="//m.vip.com/app"
							target="_blank" mars_sead="top_nav2_m" rel="nofollow"><i
								class="ico-mob"></i> 手机版</a></span>
						<div class="top-nav-dis phone-infor" id="J_phoneTip_con">
							<i class="ico-arw-bodder"></i> <span class="phone-close hidden"
								id="J_phone_close"></span>
							<div class="tc" id="J_phoneTips_wrap">
								<a href="//m.vip.com/app/?f=nav" target="_blank"> <img
									mars_sead="top_nav2_m_pic" class="J_qrcode_img"
									data-original="//b.appsimg.com/2016/06/17/863/1466134037230.jpg"
									src="//s2.vipstatic.com/img/share/blank.png" width="161"
									height="161" alt="二维码">
								</a>
								<p>
									<a href="#" target="_blank">随时逛 及时抢</a>
								</p>
							</div>
						</div>
					</li>
					<li class="wp-service wp-business" data-hover="wp-service-hover">
						<span class="service-in"> <a href="###">更多</a> <i
							class="ico-dis"></i>
					</span>
						<div class="top-nav-dis service-infor-more">
							<i class="ico-arw-bodder"></i>
							<h5 class="service-more-hd clearfix">合作专区</h5>
							<p class="top-nav-list clearfix">
								<a
									href="//mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
									target="_blank" mars_sead="home_top_nav1_ncard" rel="nofollow">联名卡申请</a>
								<a href="//vipcard.vip.com/" target="_blank"
									mars_sead="home_top_nav1_vipcard" rel="nofollow">唯品卡</a> <a
									href="//mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
									target="_blank" mars_sead="home_top_nav1_pay" rel="nofollow">支付专区</a>
							</p>
							<h5 class="service-more-hd clearfix service-more-hd2">关于我们</h5>
							<p class="top-nav-list clearfix service-more-p">
								<a
									href="//viva.vip.com/act/supportInvestment-pc?wapid=vivac_812&amp;lang=en"
									target="_blank">Sell on vip</a> <a
									href="//viva.vip.com/act/supportInvestment-pc?wapid=vivac_812"
									target="_blank" rel="nofollow">品牌招商</a> <a
									href="//blog.vip.com/" target="_blank">官方博客</a>
							</p>
						</div>
					</li>

				</ul>
			</div>
		</nav>
		<div class="head-logo">
			<div class="head-inner  clearfix" id="J-head-inner-def">
				<div id="J_head_cart" class="head-cart head-bag-car J_cart_ico"
					data-hover="head-cart-hover">
					<div class="tool" id="J_shortTime">
						<a href="//cart.vip.com/te2/" mars_sead="home_top_bag_button"
							target="_blank" rel="nofollow"> <span class="ico-bag"></span>
							<span class="mycarttext-default" id="J-mycartText">购物袋</span> <span
							class="mycarttext-countdown  J_cart_countDowncart"
							id="J-mycartText-countdown"></span> <span
							id="J_skuCount_container" class="counti-cons-bg"> <span
								id="J_skuCount">-</span>
						</span>
						</a>
					</div>
					<div class="tool-cn" id="J_headCartList_wrap">
						<div class="tool-cn-inner">
							<div class="tool-cn-in">
								<p>
									好像还未登录！<a href="https://passport.vip.com/login"
										mars_sead="home_top_nav2_login">马上登录</a> 查看购物袋吧！
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="c-search  c-category-search" id="J-search">
					<div class="c-search-form">
						<input class="c-search-input  J-search-input" type="text"
							mars_sead="search_entrance_click" placeholder="试试搜索商品、分类和品牌"
							autocomplete="off" max-length="100"> <a
							class="c-search-button  J-search-button  J_fake_a" href="###"
							mars_sead="search_button"> <span class="c-search-icon"></span>
						</a>
					</div>
					<div class="c-search-helper  J-search-helper">
					<div class="c-search-history">
        <div class="c-search-history-title">搜索历史</div>
                <a class="vipFont  c-search-history-button-clear  f-hide  J-search-history-button-clear" href="###" title="清除搜索历史" mars_sead="search_historyclear_button"></a>
        <div class="J-search-history-content"></div>
    </div>
					</div>
				</div>

				<div class="c-logo">
					<div class="header-logo-dop">
						<a target="_blank" href="/getHead"
							mars_sead="home_header_vip_logo"> <img
							src="//b.appsimg.com/2017/08/31/540/1504164551874.png"
							data-original="//b.appsimg.com/2017/08/31/540/1504164551874.png"
							alt="全球精选_正品特卖" id="J-vipLogo" height="100">
						</a>
					</div>
				</div>

				<div
					class="c-service  header-vip  has-service-operation is-service-on-left">
					<!--
 -->
					<img class="c-service-img  J-service-img  "
						src="//b.appsimg.com/2017/08/31/104/1504179372347.png" width="304"
						height="100"
						data-original="//b.appsimg.com/2017/08/31/104/1504179372347.png">
				</div>
			</div>
		</div>
		<nav class="main-nav">
			<div class="main-nav" id="J_main_nav">
				<div class="head-inner">
					<ul class="main-nav-link clearfix" id="J_main_nav_link">
						<li id="J_main_nav_category" class="nav-category"><a href="#"
							target="_blank" class="main-nav-atag"> <img
								class="link-front-icon J-link-front-icon"
								src="//b.appsimg.com/upload/momin/2018/09/10/150/1536548648745.png"
								data-original="//b.appsimg.com/upload/momin/2018/09/10/150/1536548648745.png">商品分类
						</a></li>
						<li><a href="/getHead" target="_blank"
							class="main-nav-atag nav_current"
							mars_sead="home_header_channel_homepage">首页</a></li>
						<li><a
							href="https://mst.vip.com/-lddtqQhPHscDADo0h4nDQ.php?client=vipcms&amp;mst_page_type=guide&amp;mst_cdi=1&amp;wapid=mst_7415993&amp;extra_type=1&amp;extra_from_tab=1"
							target="_blank" class="main-nav-atag "
							mars_sead="home_header_channel_lastchance">最后疯抢</a></li>
						<li><a href="//lady.vip.com/" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_dresses">女装</a></li>
						<li><a href="//kid.vip.com" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_kids">母婴</a></li>
						<li><a href="https://3C.vip.com/" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_household">家电</a></li>
						<li><a href="//global.vip.com" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_oversea">国际</a></li>
						<li><a href="//beauty.vip.com" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_beauty">美妆</a></li>
						<li><a href="//shoes-bags.vip.com/" target="_blank"
							class="main-nav-atag "
							mars_sead="home_header_channel_shoes&amp;bags">鞋包</a></li>
						<li><a href="//man.vip.com/" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_men">男装</a></li>
						<li><a href="//sport.vip.com/" target="_blank"
							class="main-nav-atag " mars_sead="home_header_channel_sports">运动</a></li>
						<li><a href="https://www.vip.com/brand_date.php?f=button"
							target="_blank" class="main-nav-atag "
							mars_sead="home_header_channel_comingsoon">预告</a></li>
						<li class="more-wrap J_Navmore_wrap" data-hover="more-wrap-hover">
							<a class="main-nav-atag ">更多<i class="vipFont"></i>
						</a>
							<div class="channel-item-group" id="J-channel-item-group">
								<a class="main-nav-atag "> </a>
								<div class="channel-item">
									<a class="main-nav-atag "> </a><a href="//home.vip.com"
										target="_blank" class="channel-more-itemlink"
										mars_sead="home_header_channel_household"> 家居 </a>
								</div>
								<div class="channel-item">
									<a
										href="//mst.vip.com/3z0xj8i3Xa2KVWdMREkYrw.php?client=vipcms&amp;mst_page_type=guide&amp;mst_cdi=1&amp;wapid=mst_1775178&amp;extra_type=1&amp;extra_from_tab=1"
										target="_blank" class="channel-more-itemlink"
										mars_sead="home_header_channel_life"> 生活 </a>
								</div>
								<div class="channel-item">
									<a href="//acce.vip.com/" target="_blank"
										class="channel-more-itemlink"
										mars_sead="home_header_channel_watch"> 配饰 </a>
								</div>
								<div class="channel-item">
									<a href="https://jinrong.vip.com/?ep=ppingdaoye0115lc"
										target="_blank" class="channel-more-itemlink"
										mars_sead="home_header_channel_finance"> 金融 </a>
								</div>
								<div class="channel-item">
									<a href="//fupin.vip.com" target="_blank"
										class="channel-more-itemlink"
										mars_sead="home_header_channel_dianshangfupin"> 扶贫 </a>
								</div>
							</div>
						</li>

					</ul>
					<div class="nav-category-data" id="J_main_nav_category_data">
						<ul class="cate-menu" id="J_main_nav_category_menu">
							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30074"
								data-cateid="30074"><span class="menu-item-tit">女装/男装/内衣</span>
							</li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_324442"
								data-cateid="324442"><span class="menu-item-tit">女鞋/男鞋/箱包</span>
							</li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30071"
								data-cateid="30071"><span class="menu-item-tit">护肤彩妆/个护</span>
							</li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30066"
								data-cateid="30066"><span class="menu-item-tit">运动户外</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30068"
								data-cateid="30068"><span class="menu-item-tit">家电数码</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30070"
								data-cateid="30070"><span class="menu-item-tit">母婴童装</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_29751"
								data-cateid="29751"><span class="menu-item-tit">手表配饰</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_30069"
								data-cateid="30069"><span class="menu-item-tit">居家用品</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_71958"
								data-cateid="71958"><span class="menu-item-tit">唯品生活</span></li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_44285"
								data-cateid="44285"><span class="menu-item-tit">唯品国际/唯品奢</span>
							</li>

							<li class="cate-menu-item J_main_nav_category_menu_item"
								mars_exposure_module="category_all_expose_331849"
								data-cateid="331849"><span class="menu-item-tit">唯品医药</span>
							</li>
						</ul>
						<!-- 详情页 -->
						<div class="cate-pop">
							<div id="J_main_nav_category_pop">
								<div class="cate-part">
									<div class="cate-part-col1">
										<div class="cate-detail">
											<!-- <dl class="cate-detail-item cate-detail-item1">
												<dt class="cate-detail-tit">
													<i class="vipFont"></i><span mars_exposure_module="category_all_expose_323845">人气美衣</span>
												</dt>
												<dd class="cate-detail-con">

													<a target="_blank"
														mars_exposure_module="category_all_expose_330971"
														mars_sead="category_all_click_330971"
														href="//category.vip.com/search-5-0-1.html?q=3|330971||&amp;rp=30074|323845">T恤</a>
												</dd>
											</dl> -->
										</div>
									</div>

									<div class="cate-part-col2">
										<div class="cate-brand">
											<a target="_blank"
												mars_exposure_module="category_all_brand_expose"
												mars_sead="category_all_brand_click"
												href="https://category.vip.com/?act=brand"> 
												<img src="//a.vpimg3.com/upload/goadmin/2018/09/12/176/15367386433248.png">
											</a>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- 详情页END -->
					</div>
				</div>
			</div>
		</nav>
	</header>
	<!-- 头部end -->


	<!-- 主体Start -->
	<div class="index-content s_bg_top"
		style="background-image: url('${pageContext.request.contextPath}/czjimg/body.jpg')">
		<!-- 轮播 -->
		<div class="main" id="main">
			<div class="banner" id="banner">
				<a href="#">
					<div class="banner-slide slide1"></div>
				</a> <a href="#">
					<div class="banner-slide slide2"></div>
				</a> <a href="#">
					<div class="banner-slide slide3"></div>
				</a>
			</div>
			<script type="text/javascript" src="${pageContext.request.contextPath}/czjcss/bootstrap/js/script.js"></script>
		</div>
		<!-- 轮播结束 -->

		<!-- 商品列表 -->
		<div class="index-cms" data-from-cmsid="teRankings-pc">
			<link href="${pageContext.request.contextPath}/czjcss/everyday.css" rel="stylesheet" type="text/css">
			<div class="column-operation" id="columnOperation"
				style="display: block;">
				<div class="column-operation-title">
					<div class="column-operation-title">
						<img class=""
							data-original="//a.vpimg2.com/upload/flow/2018/08/17/154/15344789862278.jpg"
							src="//a.vpimg2.com/upload/flow/2018/08/17/154/15344789862278.jpg">
					</div> 
				</div>
				<div class="column-operation-con">
					<a
						href="//rank.vip.com/pages/pc/index.html?rankCode=1107498103&amp;wapid=rank_pc_common_ranking_1_1107498103&amp;adidx=1&amp;f=ad&amp;adp=131975&amp;adid=648454&amp;ff=column-item-0"
						target="_blank"
						class="column-operation-item column-operation-item-0"
						mars_sead="column_operation_item_0"
						mars-exposure-module="column_operation_item_expo_0"><img
						class=""
						data-original="//a.vpimg2.com/upload/flow/2018/08/17/20/15344779654591.jpg"
						src="//a.vpimg2.com/upload/flow/2018/08/17/20/15344779654591.jpg">
					</a> <a
						href="https://mst.vip.com/xfXMueeBCy758az382j_yw.php?client=mp&amp;mst_page_type=guide&amp;mst_cdi=1&amp;wapid=mst_7053153&amp;extra_type=1&amp;adidx=2&amp;f=ad&amp;adp=131975&amp;adid=648464&amp;ff=column-item-1"
						target="_blank"
						class="column-operation-item column-operation-item-1"
						mars_sead="column_operation_item_1"
						mars-exposure-module="column_operation_item_expo_1"><img
						class=""
						data-original="//a.vpimg3.com/upload/flow/2018/08/20/58/15347564520917.jpg"
						src="//a.vpimg3.com/upload/flow/2018/08/20/58/15347564520917.jpg">
					</a> <a
						href="https://list.vip.com/3559751.html?adidx=3&amp;f=ad&amp;adp=131975&amp;adid=685116&amp;ff=column-item-2"
						target="_blank"
						class="column-operation-item column-operation-item-2"
						mars_sead="column_operation_item_2"
						mars-exposure-module="column_operation_item_expo_2"><img
						class=""
						data-original="//a.vpimg3.com/upload/flow/2018/09/21/66/15375243822817.jpg"
						src="//a.vpimg3.com/upload/flow/2018/09/21/66/15375243822817.jpg">
					</a> <a
						href="https://lux.vip.com/?adidx=4&amp;f=ad&amp;adp=131975&amp;adid=648469&amp;ff=column-item-3"
						target="_blank"
						class="column-operation-item column-operation-item-3"
						mars_sead="column_operation_item_3"
						mars-exposure-module="column_operation_item_expo_3"><img
						class=""
						data-original="//a.vpimg2.com/upload/flow/2018/08/17/35/15344789267226.jpg"
						src="//a.vpimg2.com/upload/flow/2018/08/17/35/15344789267226.jpg">
					</a> <a
						href="https://mst.vip.com/6mCKgATA2rTN60B0tdc39Q.php?client=vipcms&amp;mst_page_type=guide&amp;mst_cdi=1&amp;wapid=mst_7310222&amp;extra_type=1&amp;adidx=5&amp;f=ad&amp;adp=131975&amp;adid=722987&amp;ff=column-item-4"
						target="_blank"
						class="column-operation-item column-operation-item-4"
						mars_sead="column_operation_item_4"
						mars-exposure-module="column_operation_item_expo_4"><img
						class=""
						data-original="//a.vpimg2.com/upload/flow/2018/11/16/47/15423378561576.jpg"
						src="//a.vpimg2.com/upload/flow/2018/11/16/47/15423378561576.jpg">
					</a> <a
						href="https://fengqiang.vip.com/?adidx=6&amp;f=ad&amp;adp=131975&amp;adid=714520&amp;ff=column-item-5"
						target="_blank"
						class="column-operation-item column-operation-item-5"
						mars_sead="column_operation_item_5"
						mars-exposure-module="column_operation_item_expo_5"><img
						class=""
						data-original="//a.vpimg4.com/upload/flow/2018/11/05/30/15414077847005.jpg"
						src="//a.vpimg4.com/upload/flow/2018/11/05/30/15414077847005.jpg">
					</a>
				</div>
			</div>
		</div>
		<!-- 商品列表End -->

		<!-- 新特卖Start -->
		<div class="wrap clearfix">
		
			<div class="today-new shop-sort ">
				<div class="shop-title hidden" id="J-shop-title-coundown">
					<img id="J-coundown-img" class="coundown-img" alt=""
						src="//shop.vipstatic.com/img/share/blank.png"
						data-original="//a.vpimg4.com/upload/dop/2016/03/17/177/clock1.png">
					<div id="J-coundown-banner"></div>
				</div>
				<div class="shop-title ">
					<img class="coundown-img" alt="开售标题"
						src="//a.vpimg2.com/upload/dop/2016/03/17/166/today_DDp.png">
				</div>
				<div class="shop-title shop-countdown-end hidden"
					id="J-shop-title-cdEnd">
					<img class="coundown-img" alt="开售标题"
						src="//shop.vipstatic.com/img/share/blank.png"
						data-original="//a.vpimg2.com/upload/dop/2016/03/17/63/clock2.png">
					<a href="/" role="button"
						class="ui-btn-small ui-btn-primary refresh-btn">马上刷新 <i
						class="refresh-icon"></i></a>
				</div>
			</div>
		
			<!--  -->
			<div class="shop-sort J-index-floor J-brand-wrap" id="J-index-floor1" data-flag="floor1">
				<div class="shop-sort-title">
					<img class="" alt="女装" src="//a.vpimg3.com/upload/dop/2016/03/17/121/woman_2ad.png" data-original="//a.vpimg3.com/upload/dop/2016/03/17/121/woman_2ad.png">
					<a class="shop-all-btn" href="//lady.vip.com" target="_blank" mars_sead="pc|operates|allwoman|0.1">全部女装品牌&nbsp;<i class="vipFont"></i></a>
				</div>
				<div class="J_indexFloorInner_cms J_page_cms floors-operation-h-auto" id="J_page_cmsteLadyFloor-pc" data-id="teLadyFloor-pc" data-height="160,131" style="height: 160px;">
					<style>
.floors-operation {
	width: 1000px;
	margin: 0 auto;
	overflow: hidden;
	display: none
}

.floors-operation img {
	max-width: 100%
}

.floors-operation-group-wrap {
	position: relative;
	margin-bottom: 20px;
	overflow: hidden
}

.floors-operation-group {
	position: absolute;
	left: 0;
	top: 0;
	width: 1020px
}

.floors-operation-item {
	float: left;
	margin: 0 0 0 10px;
	position: relative;
	overflow: hidden
}

.floors-operation-item img {
	width: 100%
}

.floors-operation-item-col-12, .floors-operation-item-col-title {
	width: 1000px
}

.floors-operation-item.floors-operation-item-col-12,
	.floors-operation-item.floors-operation-item-col-title {
	margin: 0
}

.floors-operation-item-col-6 {
	width: 485px
}

.floors-operation-item-col-4 {
	width: 320px
}

.floors-operation-item-col-3 {
	width: 235px;
	margin-left: 12px
}

.floors-operation-item-col-22 {
	width: 188px
}

.floors-operation-item-col-2 {
	width: 155px
}

#J_page_cmsteLadyFloor-pc.floors-operation-h-auto {
	height: auto !important
}

@media screen and (min-width:1441px) {
	.floors-operation {
		width: 1170px
	}
	.floors-operation-group-wrap {
		margin-bottom: 30px
	}
	.floors-operation-group {
		width: 1200px
	}
	.floors-operation-item {
		margin: 0 0 18px 18px
	}
	.floors-operation-item-col-12, .floors-operation-item-col-title {
		width: 1170px
	}
	.floors-operation-item-col-6 {
		width: 558px
	}
	.floors-operation-item-col-4 {
		width: 366px
	}
	.floors-operation-item-col-3 {
		width: 270px
	}
	.floors-operation-item-col-22 {
		width: 214px;
		margin: 0 0 0 16px
	}
	.floors-operation-item-col-2 {
		width: 174px
	}
}
</style>
					<div class="floors-operation" id="floorsOperation"></div>
				</div>
				<div id="J-floorBrandList-1" data-patch-mars="index_navilink_woman" data-patch-img="//a.vpimg4.com/upload/dop/2017/11/16/94/1女装.jpg" data-patch-url="//lady.vip.com" class="brand-wrap  clearfix  J-floorBrandList" data-flag="1" data-len="80" style="height: auto;">
					
					<div class="J-brand-item-data J-brand-item-data1">
						<div class="J-brand-item-page brand-item-page clearfix" data-page="2">
							<div class="brand-item">
								<a href="//list.vip.com/3666695.html?ff=6|11|2|1|13" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3666695|1.13"> <img src="//d.vpimg1.com/upcb/2018/12/04/58/ias_154390346013974_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/04/58/ias_154390346013974_570x273_90.jpg" alt="【元旦盛典】子陌ZIMO女装专场">

									<div class="pms-info  hidden  " id="J_pms_3666695" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10020640" title="【元旦盛典】子陌ZIMO女装专场">【元旦盛典】子陌ZIMO女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3666695 btn_myfav_none10020640 " role="button" mars_sead="m_shop_s_like_button" data-mars="10020640" data-hover="btn_myfav_hadlike_hover" data-sn="10020640" data-brand-id="3666695"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3461288.html?ff=6|11|2|1|14" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3461288|1.14"> <img src="//c.vpimg1.com/upcb/2018/11/10/123/ias_154183204825925_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/11/10/123/ias_154183204825925_570x273_90.jpg" alt="裂帛集团女装特卖旗舰店">

									<div class="pms-info  hidden  " id="J_pms_3461288" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10004555" title="裂帛集团女装特卖旗舰店">裂帛集团女装特卖旗舰店</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1554048000">剩93天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3461288 btn_myfav_none10004555 " role="button" mars_sead="m_shop_s_like_button" data-mars="10004555" data-hover="btn_myfav_hadlike_hover" data-sn="10004555" data-brand-id="3461288"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3660298.html?ff=6|11|2|1|15" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3660298|1.15"> <img src="//c.vpimg1.com/upcb/2018/12/01/20/ias_154363625399052_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/01/20/ias_154363625399052_570x273_90.jpg" alt="#新年美衣速递#艾欧唯女装专场">

									<div class="pms-info  hidden  " id="J_pms_3660298" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.8</span>折起</span>

										<span class="brand-name" id="J_brandName_10011214" title="#新年美衣速递#艾欧唯女装专场">#新年美衣速递#艾欧唯女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3660298 btn_myfav_none10011214 " role="button" mars_sead="m_shop_s_like_button" data-mars="10011214" data-hover="btn_myfav_hadlike_hover" data-sn="10011214" data-brand-id="3660298"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3666694.html?ff=6|11|2|1|16" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3666694|1.16"> <img src="//d.vpimg1.com/upcb/2018/12/27/190/ias_154588312268740_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/27/190/ias_154588312268740_570x273_90.jpg" alt="#新年人气王#乔伊思女装专场">

									<div class="pms-info  hidden  " id="J_pms_3666694" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10014872" title="#新年人气王#乔伊思女装专场">#新年人气王#乔伊思女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3666694 btn_myfav_none10014872 " role="button" mars_sead="m_shop_s_like_button" data-mars="10014872" data-hover="btn_myfav_hadlike_hover" data-sn="10014872" data-brand-id="3666694"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3749676.html?ff=6|11|2|1|17" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3749676|1.17"> <img src="//d.vpimg1.com/upcb/2018/12/17/121/ias_154502812926921_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/17/121/ias_154502812926921_570x273_90.jpg" alt="放肆玩美—七格格旗下品牌女装专场">

									<div class="pms-info  hidden  " id="J_pms_3749676" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.4</span>折起</span>

										<span class="brand-name" id="J_brandName_10001310" title="放肆玩美—七格格旗下品牌女装专场">放肆玩美—七格格旗下品牌女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3749676 btn_myfav_none10001310 " role="button" mars_sead="m_shop_s_like_button" data-mars="10001310" data-hover="btn_myfav_hadlike_hover" data-sn="10001310" data-brand-id="3749676"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3682909.html?ff=6|11|2|1|18" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3682909|1.18"> <img src="//c.vpimg1.com/upcb/2018/12/19/67/ias_154518475780420_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/19/67/ias_154518475780420_570x273_90.jpg" alt="大衣&amp;羊绒衫&amp;羽绒服-索贝斯女装">

									<div class="pms-info  hidden  " id="J_pms_3682909" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.2</span>折起</span>

										<span class="brand-name" id="J_brandName_10031608" title="大衣&amp;羊绒衫&amp;羽绒服-索贝斯女装">大衣&amp;羊绒衫&amp;羽绒服-索贝斯女装</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3682909 btn_myfav_none10031608 " role="button" mars_sead="m_shop_s_like_button" data-mars="10031608" data-hover="btn_myfav_hadlike_hover" data-sn="10031608" data-brand-id="3682909"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3665019.html?ff=6|11|2|1|19" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3665019|1.19"> <img src="//d.vpimg1.com/upcb/2018/12/28/15/ias_154597672965066_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/28/15/ias_154597672965066_570x273_90.jpg" alt="年末狂欢X爆款直降-村上春女装专场">

									<div class="pms-info  hidden  " id="J_pms_3665019" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10011638" title="年末狂欢X爆款直降-村上春女装专场">年末狂欢X爆款直降-村上春女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3665019 btn_myfav_none10011638 " role="button" mars_sead="m_shop_s_like_button" data-mars="10011638" data-hover="btn_myfav_hadlike_hover" data-sn="10011638" data-brand-id="3665019"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3681104.html?ff=6|11|2|1|20" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3681104|1.20"> <img src="//c.vpimg1.com/upcb/2018/11/29/151/ias_154345806031144_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/11/29/151/ias_154345806031144_570x273_90.jpg" alt="丹慕妮尔Danmunier女装专场">

									<div class="pms-info  hidden  " id="J_pms_3681104" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10028202" title="丹慕妮尔Danmunier女装专场">丹慕妮尔Danmunier女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085599">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3681104 btn_myfav_none10028202 " role="button" mars_sead="m_shop_s_like_button" data-mars="10028202" data-hover="btn_myfav_hadlike_hover" data-sn="10028202" data-brand-id="3681104"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3726796.html?ff=6|11|2|1|21" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3726796|1.21"> <img src="//d.vpimg1.com/upcb/2018/11/16/84/ias_154234856079466_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/11/16/84/ias_154234856079466_570x273_90.jpg" alt="yaloo雅鹿秋冬羽绒服爆款精选专场">

									<div class="pms-info  hidden  " id="J_pms_3726796" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10004312" title="yaloo雅鹿秋冬羽绒服爆款精选专场">yaloo雅鹿秋冬羽绒服爆款精选专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1548900000">剩33天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3726796 btn_myfav_none10004312 " role="button" mars_sead="m_shop_s_like_button" data-mars="10004312" data-hover="btn_myfav_hadlike_hover" data-sn="10004312" data-brand-id="3726796"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3677446.html?ff=6|11|2|1|22" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3677446|1.22"> <img src="//d.vpimg1.com/upcb/2018/11/19/68/ias_154260605116354_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/11/19/68/ias_154260605116354_570x273_90.jpg" alt="芭欧BOOL皮草保暖专场">

									<div class="pms-info  hidden  " id="J_pms_3677446" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.4</span>折起</span>

										<span class="brand-name" id="J_brandName_10023167" title="芭欧BOOL皮草保暖专场">芭欧BOOL皮草保暖专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1551319199">剩61天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3677446 btn_myfav_none10023167 " role="button" mars_sead="m_shop_s_like_button" data-mars="10023167" data-hover="btn_myfav_hadlike_hover" data-sn="10023167" data-brand-id="3677446"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3722876.html?ff=6|11|2|1|23" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3722876|1.23"> <img src="//d.vpimg1.com/upcb/2018/12/07/181/ias_154414341322011_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/07/181/ias_154414341322011_570x273_90.jpg" alt="不惧严寒-恒源祥男女装特卖专场">

									<div class="pms-info  hidden  " id="J_pms_3722876" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.3</span>折起</span>

										<span class="brand-name" id="J_brandName_10004371" title="不惧严寒-恒源祥男女装特卖专场">不惧严寒-恒源祥男女装特卖专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546135199">剩19时</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3722876 btn_myfav_none10004371 " role="button" mars_sead="m_shop_s_like_button" data-mars="10004371" data-hover="btn_myfav_hadlike_hover" data-sn="10004371" data-brand-id="3722876"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3696912.html?ff=6|11|2|1|24" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3696912|1.24"> <img src="//d.vpimg1.com/upcb/2018/12/14/123/ias_154478442016800_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/14/123/ias_154478442016800_570x273_90.jpg" alt="CORONACOLOUR皮衣皮草女装专场">

									<div class="pms-info  hidden  " id="J_pms_3696912" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.7</span>折起</span>

										<span class="brand-name" id="J_brandName_10016005" title="CORONACOLOUR皮衣皮草女装专场">CORONACOLOUR皮衣皮草女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3696912 btn_myfav_none10016005 " role="button" mars_sead="m_shop_s_like_button" data-mars="10016005" data-hover="btn_myfav_hadlike_hover" data-sn="10016005" data-brand-id="3696912"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
						</div>
						<div class="J-brand-item-page brand-item-page clearfix" data-page="3">
							<div class="brand-item">
								<a href="//list.vip.com/3665608.html?ff=6|11|2|1|25" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3665608|1.25"> <img src="//d.vpimg1.com/upcb/2018/12/13/53/ias_154469016853160_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/13/53/ias_154469016853160_570x273_90.jpg" alt="丝柏舍女装专场">

									<div class="pms-info  hidden  " id="J_pms_3665608" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.7</span>折起</span>

										<span class="brand-name" id="J_brandName_10012320" title="丝柏舍女装专场">丝柏舍女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3665608 btn_myfav_none10012320 " role="button" mars_sead="m_shop_s_like_button" data-mars="10012320" data-hover="btn_myfav_hadlike_hover" data-sn="10012320" data-brand-id="3665608"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3724284.html?ff=6|11|2|1|26" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3724284|1.26"> <img src="//d.vpimg1.com/upcb/2018/12/20/3/ias_154529213468151_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/20/3/ias_154529213468151_570x273_90.jpg" alt="千仞岗chericom羽绒服专场">

									<div class="pms-info  hidden  " id="J_pms_3724284" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.7</span>折起</span>

										<span class="brand-name" id="J_brandName_10011057" title="千仞岗chericom羽绒服专场">千仞岗chericom羽绒服专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546999140">剩11天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3724284 btn_myfav_none10011057 " role="button" mars_sead="m_shop_s_like_button" data-mars="10011057" data-hover="btn_myfav_hadlike_hover" data-sn="10011057" data-brand-id="3724284"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3685110.html?ff=6|11|2|1|27" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3685110|1.27"> <img src="//c.vpimg1.com/upcb/2018/12/17/160/ias_154501082689706_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/17/160/ias_154501082689706_570x273_90.jpg" alt="冬日优享-优衣美女装·”玩裤“秘笈">

									<div class="pms-info  hidden  " id="J_pms_3685110" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">2.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10015182" title="冬日优享-优衣美女装·”玩裤“秘笈">冬日优享-优衣美女装·”玩裤“秘笈</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547344799">剩15天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3685110 btn_myfav_none10015182 " role="button" mars_sead="m_shop_s_like_button" data-mars="10015182" data-hover="btn_myfav_hadlike_hover" data-sn="10015182" data-brand-id="3685110"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3662808.html?ff=6|11|2|1|28" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3662808|1.28"> <img src="//d.vpimg1.com/upcb/2018/12/13/182/ias_154466422115592_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/13/182/ias_154466422115592_570x273_90.jpg" alt="韩都衣舍Hstyle 暖冬好货女装专场">

									<div class="pms-info  hidden  " id="J_pms_3662808" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.3</span>折起</span>

										<span class="brand-name" id="J_brandName_10005367" title="韩都衣舍Hstyle 暖冬好货女装专场">韩都衣舍Hstyle 暖冬好货女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085599">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3662808 btn_myfav_none10005367 " role="button" mars_sead="m_shop_s_like_button" data-mars="10005367" data-hover="btn_myfav_hadlike_hover" data-sn="10005367" data-brand-id="3662808"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3665005.html?ff=6|11|2|1|29" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3665005|1.29"> <img src="//d.vpimg1.com/upcb/2018/12/28/156/ias_154596209980949_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/28/156/ias_154596209980949_570x273_90.jpg" alt=" 钜惠来袭 火力全开-福玛玛女装专场">

									<div class="pms-info  hidden  " id="J_pms_3665005" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10020913" title=" 钜惠来袭 火力全开-福玛玛女装专场"> 钜惠来袭 火力全开-福玛玛女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1548899940">剩33天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3665005 btn_myfav_none10020913 " role="button" mars_sead="m_shop_s_like_button" data-mars="10020913" data-hover="btn_myfav_hadlike_hover" data-sn="10020913" data-brand-id="3665005"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3696772.html?ff=6|11|2|1|30" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3696772|1.30"> <img src="//d.vpimg1.com/upcb/2018/12/13/132/ias_154466247355682_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/13/132/ias_154466247355682_570x273_90.jpg" alt="TAU她图时尚生活女装专场">

									<div class="pms-info  hidden  " id="J_pms_3696772" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.2</span>折起</span>

										<span class="brand-name" id="J_brandName_10012639" title="TAU她图时尚生活女装专场">TAU她图时尚生活女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546653599">剩7天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3696772 btn_myfav_none10012639 " role="button" mars_sead="m_shop_s_like_button" data-mars="10012639" data-hover="btn_myfav_hadlike_hover" data-sn="10012639" data-brand-id="3696772"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3751576.html?ff=6|11|2|1|31" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3751576|1.31"> <img src="//d.vpimg1.com/upcb/2018/12/20/43/ias_154528975868299_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/20/43/ias_154528975868299_570x273_90.jpg" alt="圣诞狂欢购*茵曼女装暖冬热卖专场">

									<div class="pms-info  hidden  " id="J_pms_3751576" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10001211" title="圣诞狂欢购*茵曼女装暖冬热卖专场">圣诞狂欢购*茵曼女装暖冬热卖专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546221540">剩2天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3751576 btn_myfav_none10001211 " role="button" mars_sead="m_shop_s_like_button" data-mars="10001211" data-hover="btn_myfav_hadlike_hover" data-sn="10001211" data-brand-id="3751576"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3749628.html?ff=6|11|2|1|32" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3749628|1.32"> <img src="//c.vpimg1.com/upcb/2018/12/26/35/ias_154579035484130_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/26/35/ias_154579035484130_570x273_90.jpg" alt="嬉皮少女时髦冬日专场">

									<div class="pms-info  hidden  " id="J_pms_3749628" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10032051" title="嬉皮少女时髦冬日专场">嬉皮少女时髦冬日专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3749628 btn_myfav_none10032051 " role="button" mars_sead="m_shop_s_like_button" data-mars="10032051" data-hover="btn_myfav_hadlike_hover" data-sn="10032051" data-brand-id="3749628"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3728318.html?ff=6|11|2|1|33" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3728318|1.33"> <img src="//c.vpimg1.com/upcb/2018/11/05/43/ias_154138595768028_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/11/05/43/ias_154138595768028_570x273_90.jpg" alt="COCO LIMITED时尚皮草专场">

									<div class="pms-info  hidden  " id="J_pms_3728318" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">2.3</span>折起</span>

										<span class="brand-name" id="J_brandName_10032376" title="COCO LIMITED时尚皮草专场">COCO LIMITED时尚皮草专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547517599">剩17天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3728318 btn_myfav_none10032376 " role="button" mars_sead="m_shop_s_like_button" data-mars="10032376" data-hover="btn_myfav_hadlike_hover" data-sn="10032376" data-brand-id="3728318"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3712767.html?ff=6|11|2|1|34" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3712767|1.34"> <img src="//c.vpimg1.com/upcb/2018/12/27/182/ias_154589928331720_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/27/182/ias_154589928331720_570x273_90.jpg" alt="生活在左-东方美学新设计女装专场">

									<div class="pms-info  hidden  " id="J_pms_3712767" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.2</span>折起</span>

										<span class="brand-name" id="J_brandName_10013879" title="生活在左-东方美学新设计女装专场">生活在左-东方美学新设计女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3712767 btn_myfav_none10013879 " role="button" mars_sead="m_shop_s_like_button" data-mars="10013879" data-hover="btn_myfav_hadlike_hover" data-sn="10013879" data-brand-id="3712767"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3769053.html?ff=6|11|2|1|35" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3769053|1.35"> <img src="//d.vpimg1.com/upcb/2018/12/26/57/ias_154580773883396_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/26/57/ias_154580773883396_570x273_90.jpg" alt="#新年心愿清单#尚静女装专场">

									<div class="pms-info  hidden  " id="J_pms_3769053" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10021212" title="#新年心愿清单#尚静女装专场">#新年心愿清单#尚静女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3769053 btn_myfav_none10021212 " role="button" mars_sead="m_shop_s_like_button" data-mars="10021212" data-hover="btn_myfav_hadlike_hover" data-sn="10021212" data-brand-id="3769053"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3678459.html?ff=6|11|2|1|36" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3678459|1.36"> <img src="//d.vpimg1.com/upcb/2018/12/13/162/ias_154467007640951_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/13/162/ias_154467007640951_570x273_90.jpg" alt="爆款集结 缪佳女装保暖裤装专场">

									<div class="pms-info  hidden  " id="J_pms_3678459" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.1</span>折起</span>

										<span class="brand-name" id="J_brandName_10021664" title="爆款集结 缪佳女装保暖裤装专场">爆款集结 缪佳女装保暖裤装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3678459 btn_myfav_none10021664 " role="button" mars_sead="m_shop_s_like_button" data-mars="10021664" data-hover="btn_myfav_hadlike_hover" data-sn="10021664" data-brand-id="3678459"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
						</div>
						<div class="J-brand-item-page brand-item-page clearfix" data-page="4">
							<div class="brand-item">
								<a href="//list.vip.com/3685186.html?ff=6|11|2|1|37" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3685186|1.37"> <img src="//d.vpimg1.com/upcb/2018/12/29/107/ias_154606822636257_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/29/107/ias_154606822636257_570x273_90.jpg" alt="皮草*大衣*羊毛衫 恒然精品专场">

									<div class="pms-info  hidden  " id="J_pms_3685186" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10029562" title="皮草*大衣*羊毛衫 恒然精品专场">皮草*大衣*羊毛衫 恒然精品专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1548122399">剩24天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3685186 btn_myfav_none10029562 " role="button" mars_sead="m_shop_s_like_button" data-mars="10029562" data-hover="btn_myfav_hadlike_hover" data-sn="10029562" data-brand-id="3685186"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3682910.html?ff=6|11|2|1|38" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3682910|1.38"> <img src="//c.vpimg1.com/upcb/2018/12/11/0/ias_154449031197174_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/12/11/0/ias_154449031197174_570x273_90.jpg" alt="*新年新衣*薇姿曼皮草热卖女装专场">

									<div class="pms-info  hidden  " id="J_pms_3682910" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10032221" title="*新年新衣*薇姿曼皮草热卖女装专场">*新年新衣*薇姿曼皮草热卖女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3682910 btn_myfav_none10032221 " role="button" mars_sead="m_shop_s_like_button" data-mars="10032221" data-hover="btn_myfav_hadlike_hover" data-sn="10032221" data-brand-id="3682910"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3693183.html?ff=6|11|2|1|39" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3693183|1.39"> <img src="//d.vpimg1.com/upcb/2018/11/20/150/ias_154271568627988_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/11/20/150/ias_154271568627988_570x273_90.jpg" alt="鹿皇羊女装专场">

									<div class="pms-info  hidden  " id="J_pms_3693183" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.5</span>折起</span>

										<span class="brand-name" id="J_brandName_10026550" title="鹿皇羊女装专场">鹿皇羊女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085540">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3693183 btn_myfav_none10026550 " role="button" mars_sead="m_shop_s_like_button" data-mars="10026550" data-hover="btn_myfav_hadlike_hover" data-sn="10026550" data-brand-id="3693183"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3685170.html?ff=6|11|2|1|40" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3685170|1.40"> <img src="//c.vpimg1.com/upcb/2018/11/29/173/ias_154347935591208_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/11/29/173/ias_154347935591208_570x273_90.jpg" alt="美衣锦促 华然绽放丨UE.LUX女装">

									<div class="pms-info  hidden  " id="J_pms_3685170" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10014206" title="美衣锦促 华然绽放丨UE.LUX女装">美衣锦促 华然绽放丨UE.LUX女装</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085599">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3685170 btn_myfav_none10014206 " role="button" mars_sead="m_shop_s_like_button" data-mars="10014206" data-hover="btn_myfav_hadlike_hover" data-sn="10014206" data-brand-id="3685170"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3758423.html?ff=6|11|2|1|41" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3758423|1.41"> <img src="//d.vpimg1.com/upcb/2018/12/25/193/ias_154572577637608_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/25/193/ias_154572577637608_570x273_90.jpg" alt="HAVVA全球同步春上新 冬爆款 限时24小时">

									<div class="pms-info  hidden  " id="J_pms_3758423" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10029139" title="HAVVA全球同步春上新 冬爆款 限时24小时">HAVVA全球同步春上新 冬爆款
											限时24小时</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547517599">剩17天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3758423 btn_myfav_none10029139 " role="button" mars_sead="m_shop_s_like_button" data-mars="10029139" data-hover="btn_myfav_hadlike_hover" data-sn="10029139" data-brand-id="3758423"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3669327.html?ff=6|11|2|1|42" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3669327|1.42"> <img src="//c.vpimg1.com/upcb/2018/11/29/170/ias_154345661994981_570x273_90.jpg" class="brand-img" data-original="//c.vpimg1.com/upcb/2018/11/29/170/ias_154345661994981_570x273_90.jpg" alt="优雅过冬—KRSEED冬季新品专场">

									<div class="pms-info  hidden  " id="J_pms_3669327" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1</span>折起</span>

										<span class="brand-name" id="J_brandName_10026364" title="优雅过冬—KRSEED冬季新品专场">优雅过冬—KRSEED冬季新品专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085599">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3669327 btn_myfav_none10026364 " role="button" mars_sead="m_shop_s_like_button" data-mars="10026364" data-hover="btn_myfav_hadlike_hover" data-sn="10026364" data-brand-id="3669327"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3671581.html?ff=6|11|2|1|43" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3671581|1.43"> <img src="//d.vpimg1.com/upcb/2018/12/17/140/ias_154503043144802_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/17/140/ias_154503043144802_570x273_90.jpg" alt=" 盛”惠“持续  秋水伊人女装专场">

									<div class="pms-info  hidden  " id="J_pms_3671581" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">1.3</span>折起</span>

										<span class="brand-name" id="J_brandName_10001351" title=" 盛”惠“持续  秋水伊人女装专场"> 盛”惠“持续 秋水伊人女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1548900000">剩33天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3671581 btn_myfav_none10001351 " role="button" mars_sead="m_shop_s_like_button" data-mars="10001351" data-hover="btn_myfav_hadlike_hover" data-sn="10001351" data-brand-id="3671581"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3750290.html?ff=6|11|2|1|44" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3750290|1.44"> <img src="//d.vpimg1.com/upcb/2018/12/28/36/ias_154596154516886_570x273_90.jpg" class="brand-img" data-original="//d.vpimg1.com/upcb/2018/12/28/36/ias_154596154516886_570x273_90.jpg" alt="Lily丽丽冬季热销专场">

									<div class="pms-info  hidden  " id="J_pms_3750290" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">2.5</span>折起</span>

										<span class="brand-name" id="J_brandName_10000547" title="Lily丽丽冬季热销专场">Lily丽丽冬季热销专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546653599">剩7天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3750290 btn_myfav_none10000547 " role="button" mars_sead="m_shop_s_like_button" data-mars="10000547" data-hover="btn_myfav_hadlike_hover" data-sn="10000547" data-brand-id="3750290"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3769409.html?ff=6|11|2|1|45" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3769409|1.45"> <img src="//shop.vipstatic.com/img/share/blank.png" class="lazy  brand-img" data-original="//d.vpimg1.com/upcb/2018/12/02/43/ias_154372166835288_570x273_90.jpg" alt="ochirly欧时力秋冬大减价专场">

									<div class="pms-info  hidden  " id="J_pms_3769409" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">2.7</span>折起</span>

										<span class="brand-name" id="J_brandName_10000646" title="ochirly欧时力秋冬大减价专场">ochirly欧时力秋冬大减价专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546480740">剩5天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3769409 btn_myfav_none10000646 " role="button" mars_sead="m_shop_s_like_button" data-mars="10000646" data-hover="btn_myfav_hadlike_hover" data-sn="10000646" data-brand-id="3769409"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3751338.html?ff=6|11|2|1|46" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3751338|1.46"> <img src="//shop.vipstatic.com/img/share/blank.png" class="lazy  brand-img" data-original="//d.vpimg1.com/upcb/2018/12/14/171/ias_154476036666432_570x273_90.jpg" alt="Five Plus女装暖冬专场">

									<div class="pms-info  hidden  " id="J_pms_3751338" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">2.6</span>折起</span>

										<span class="brand-name" id="J_brandName_10011895" title="Five Plus女装暖冬专场">Five Plus女装暖冬专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3751338 btn_myfav_none10011895 " role="button" mars_sead="m_shop_s_like_button" data-mars="10011895" data-hover="btn_myfav_hadlike_hover" data-sn="10011895" data-brand-id="3751338"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3669329.html?ff=6|11|2|1|47" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3669329|1.47"> <img src="//shop.vipstatic.com/img/share/blank.png" class="lazy  brand-img" data-original="//c.vpimg1.com/upcb/2018/12/18/159/ias_154512003328390_570x273_90.jpg" alt=" 日着rizhuo原创设计师私服推荐">

									<div class="pms-info  hidden  " id="J_pms_3669329" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">3.2</span>折起</span>

										<span class="brand-name" id="J_brandName_10026545" title=" 日着rizhuo原创设计师私服推荐"> 日着rizhuo原创设计师私服推荐</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1547085599">剩12天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3669329 btn_myfav_none10026545 " role="button" mars_sead="m_shop_s_like_button" data-mars="10026545" data-hover="btn_myfav_hadlike_hover" data-sn="10026545" data-brand-id="3669329"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
							<div class="brand-item">
								<a href="//list.vip.com/3769055.html?ff=6|11|2|1|48" target="_blank" class="brand-item-hover" mars_exposure_module="pc|brands|3769055|1.48"> <img src="//shop.vipstatic.com/img/share/blank.png" class="lazy  brand-img" data-original="//c.vpimg1.com/upcb/2018/12/28/153/ias_154596413194096_570x273_90.jpg" alt="#温暖过冬#欧昵雪女装专场">

									<div class="pms-info  hidden  " id="J_pms_3769055" title="">

									</div>

									<div class="brand-info">

										<span class="brand-discount"><span class="salebg2">0.9</span>折起</span>

										<span class="brand-name" id="J_brandName_10028114" title="#温暖过冬#欧昵雪女装专场">#温暖过冬#欧昵雪女装专场</span>

										<p class="brand-time">
											<i class="time-icon"></i><span class="J_time_icon J_wrap_pro_1546272000">剩3天</span>
										</p>

									</div>

								</a> <span class="ui-btn-fav J_myFav_tag J_myFavBrand_3769055 btn_myfav_none10028114 " role="button" mars_sead="m_shop_s_like_button" data-mars="10028114" data-hover="btn_myfav_hadlike_hover" data-sn="10028114" data-brand-id="3769055"> <span class="ui-btn-fav-like" role="button"> <i class="vipFont"></i> <span class="fav-hidden">收藏品牌</span>
								</span> <span class="ui-btn-fav-cancel" role="button"> <span class="liked"><i class="vipFont"></i></span> <span class="cancel"><i class="vipFont"></i> <span class="fav-cancel">取消收藏</span></span> <span class="liked-fail">收藏失败</span>
										<span class="cancel-fail">取消收藏失败</span>
								</span>
								</span>

							</div>
						</div>
					</div>
				</div>
				<div class="shop-sort-ft">
					<a id="J_show_more_btn_1" href="//lady.vip.com" target="_blank" class="shop-more-btn" mars_sead="home_more_woman">逛更多女装品牌</a>
				</div>
			</div>
			<!-- 品牌展示end -->
		
		</div>
		<!-- 新特卖End -->
		<!-- 左侧导航栏 -->
			<div class="index-nav-sort" id="J-index-nav-sort">
				<div class="index-nav-wrap">
					<div class="index-nav-list" id="J-index-nav-list">
						<a href="javascript:void(0)" id="J-index-nav-floor1"
							data-flag="floor1" class="index-nav-item curr"
							mars_sead="index_navi_woman"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">女装</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor2"
							data-flag="floor2" class="index-nav-item"
							mars_sead="index_navi_shoes"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">鞋包</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor3"
							data-flag="floor3" class="index-nav-item"
							mars_sead="index_navi_man"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">男装</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor4"
							data-flag="floor4" class="index-nav-item"
							mars_sead="index_navi_sport"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">运动</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor5"
							data-flag="floor5" class="index-nav-item"
							mars_sead="index_navi_jewelry"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">饰品</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor6"
							data-flag="floor6" class="index-nav-item"
							mars_sead="index_navi_beauty"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">美妆</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor7"
							data-flag="floor7" class="index-nav-item"
							mars_sead="index_navi_kid"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">母婴</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor8"
							data-flag="floor8" class="index-nav-item"
							mars_sead="index_navi_home"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">居家</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor9"
							data-flag="floor9" class="index-nav-item"
							mars_sead="index_navi_global"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">国际</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-floor10"
							data-flag="floor10" class="index-nav-item"
							mars_sead="index_navi_life"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">生活</span>
						</a> <a href="javascript:void(0)" id="J-index-nav-coming"
							class="index-nav-item index-nav-tmrrw" data-flag="coming"
							mars_sead="index_navi_forcast"> <span
							class="nav-icon vipIndexFont"></span><span class="nav-title">预告</span>
						</a>
					</div>
					<div class="index-nav-tips hidden" id="J-index-nav-tips"
						style="display: none;">
						<div class="index-nav-tips-bg"></div>
						<div class="vipFont  index-nav-tips-close"
							id="J-index-nav-tips-close"></div>
					</div>
				</div>
				<div class="index-nav-image" id="J-index-nav-image"
					style="display: none;">
					<a
						href="https://mst.vip.com/cwYWByMb_gMl1IL-nkZd_Q.php?client=vipcms&amp;mst_page_type=guide&amp;mst_cdi=1&amp;wapid=mst_7448786&amp;extra_type=1&amp;adidx=1&amp;f=ad&amp;adp=2104&amp;adid=742744"
						target="_blank"> <img class="lazy"
						src="//a.vpimg2.com/upload/flow/2018/12/20/60/15452834675597.jpg"
						height="168" width="108"></a>
				</div>
			</div>
			<!-- 左侧导航栏end -->
	</div>
	<!-- 主体end -->

	<!-- 底部 -->
	<footer id="footer" class="footer">
		<div class="footer-inner">
			<ul class="footer-vip">
				<li><i class="footer-vip-ico01">中国第三</i></li>
				<li><i class="footer-vip-ico02">全球直采</i></li>
				<li><i class="footer-vip-ico03">一手货源</i></li>
				<li><i class="footer-vip-ico04">入仓全检</i></li>
				<li><i class="footer-vip-ico05">自营物流</i></li>
				<li><i class="footer-vip-ico06">线下验真</i></li>
				<li><i class="footer-vip-ico07">假货必赔</i></li>
				<li><i class="footer-vip-ico08">任意退货</i></li>
				<li><i class="footer-vip-ico09">万千信赖</i></li>
				<li><i class="footer-vip-ico10">权威荣誉</i></li>
			</ul>
			<div class="footer-list">
				<dl class="link-anim">
					<dt>服务保障</dt>
					<dd>
						<a href="#" target="_blank" rel="nofollow">正品保证</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">7天无理由放心退</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">退货返运费</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">7x15小时客户服务</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">7天无理由随心换</a>
					</dd>
				</dl>
				<dl class="link-anim">
					<dt>购物指南</dt>
					<dd>
						<a href="#" target="_blank" rel="nofollow">导购演示</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">订单操作</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">会员注册</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">账户管理</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">收货样品</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">会员等级</a>
					</dd>
				</dl>
				<dl class="link-anim">
					<dt>支付方式</dt>
					<dd>
						<a href="#" target="_blank" rel="nofollow">快捷支付</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">23家主流网银支付</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">货到付款</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">支付宝、银联等支付</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">信用卡支付</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">零钱支付</a>
					</dd>
				</dl>
				<dl class="link-anim">
					<dt>配送方式</dt>
					<dd>
						<a href="#" target="_blank" rel="nofollow">全场满288元免运费</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">配送范围及运费</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">验货与签收</a>
					</dd>
				</dl>
				<dl class="link-anim">
					<dt>售后服务</dt>
					<dd>
						<a href="#" target="_blank" rel="nofollow">退货政策</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">退货流程</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">退款方式和时效</a>
					</dd>
					<dd>
						<a href="#" target="_blank" rel="nofollow">换货服务</a>
					</dd>
				</dl>
				<dl class="tc last">
					<dt>唯品会APP二维码</dt>
					<dd>
						<img class="lazy"
							src="//a.vpimg4.com/upload/actpics/xuangou_daily/help/page_bottom_dl_n.png"
							width="100" height="100" alt="唯品会APP二维码">
					</dd>
					<dd>下载唯品会移动APP</dd>
				</dl>
			</div>
			<div class="footer-infor">
				<p class="footer-infor-link">
					<a target="_blank" rel="nofollow" href="#" title="关于我们">关于我们</a>| <a
						target="_blank" rel="nofollow" href="#" title="About us">About
						us</a>| <a target="_blank" rel="nofollow" href="#"
						title="Investor Relations">Investor Relations</a>| <a
						target="_blank" rel="nofollow" href="#" title="媒体报道">媒体报道</a>| <a
						target="_blank" rel="nofollow" href="#" title="品牌招商">品牌招商</a>| <a
						target="_blank" rel="nofollow" href="#" title="隐私条款">隐私条款</a>| <a
						target="_blank" rel="nofollow" href="#" title="唯品诚聘">唯品诚聘</a>| <a
						target="_blank" rel="nofollow" href="//vipcard.vip.com"
						title="唯品卡">唯品卡</a>| <a target="_blank" href="#" title="联系我们">联系我们</a>
				</p>
				<p class="footer-infor-txt">
					Copyright © 2008-2018 vip.com，All Rights
					Reserved&nbsp;&nbsp;使用本网站即表示接受<a rel="nofollow" href="#">唯品会用户协议</a>。版权所有
					<a rel="nofollow" href="#">广州唯品会电子商务有限公司</a><br> <a href="#"
						target="_blank"><img
						src="//a.vpimg4.com/upload/actpics/act/sp/police_icon.png"
						width="14" height="14" style="margin: 2px 3px 0 0;">粤公网安备
						44010302111111号</a>&nbsp;&nbsp;<a rel="nofollow" href="#">粤ICP备08114786号</a>
					<a rel="nofollow" target="_blank" href="#">增值业务经营许可证：粤B2-20170777
					</a><a rel="nofollow" href="#">网络文化经营许可证：粤网文〔2018〕5030-1743号</a><br>
					<a rel="nofollow" href="#">自营主体经营证照</a>&nbsp;&nbsp;<a href="#"
						target="_blank" rel="nofollow">风险监测信息</a>&nbsp;&nbsp;<a
						rel="nofollow" href="#">互联网药品交易服务资格证（粤C20140002）</a>
				</p>
			</div>
		</div>
		<div class="footer-ft">
			<p class="footer-pic">
				<a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico01" title="银联特约商户"></i>
				</a> <a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico04" title="消费维权服务站"></i>
				</a> <a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico05" title="红盾电子链接标识"></i>
				</a> <a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico06" title="网络警察报警平台"></i>
				</a> <a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico07" title="公安局网络警察支队"></i>
				</a> <a rel="nofollow" target="_blank" href="#" id="___szfw_logo___">
					<i class="footer-pic-ico09" title="诚信网站"></i>
				</a> <a rel="nofollow" target="_blank" href="#"> <i
					class="footer-pic-ico10" title="可信网站"></i>
				</a>
			</p>
		</div>
	</footer>
	<!-- 底部end -->

	<!-- 右栏 -->
	<div id="J_sidebar" class="m-sidebarcom">
		<div class="sidebarcom-nav">
			<div id="J_sidebar_cnt" class="sidebarcom-nav-cnt">
				<div class="sidebar-act" id="J_sidebar_act"></div>
				<ul class="sidebarcom-oper">
					<!-- 个人信息 start -->
					<li class="sidebarcom-my" mars_sead="rightnav_my">
						<div id="J_my" class="sidebarcom-my-con">
							<i class="i-sidebarcom-my vipSidebarFont"><i
								class="sidebarcom-my-name">账号</i></i>
							<p class="sidebarcom-hover">个人中心</p>
						</div> <!-- 尾款支付弹窗-->
						<div id="J-prepay-last-tip" class="sidebarcom-pop-tips J_all_tip"
							style="display: none;">
							<i class="cart-pop-arrow"></i> <span id="J-prepay-last-tip-close"
								class="sidebarcom-pop-tips-close"
								mars_sead="rightnav_presale_close"></span>
							<div class="sidebarcom-pop-prepay-tips J_tip_cnt"
								style="display: none;">
								<p class="sidebarcom-pop-prepay-p">
									<i class="sidebarcom-pop-prepay-icons"></i> <strong>您有预付订单</strong><br>可以支付尾款了！
								</p>
								<a id="J-prepay-last-tip-go" href="#" target="_blank"
									class="i-sidebarcom-btn" mars_sead="rightnav_presale_finalpay">支付尾款</a>
							</div>
						</div> <!-- 预支付 end -->
					</li>
					<!-- 个人信息 end -->
					<!-- 购物袋 start -->
					<!-- rightBarCartApi:购物袋开关删除，如果开关被设置则显示可点击跳转的购物袋 -->
					<li class="sidebarcom-cart is-cart-highlight"
						mars_sead="rightnav_bag">
						<div id="J_cart">
							<div class="sidebarcom-cart-bar">
								<i class="i-sidebarcom-cart vipSidebarFont"></i>
								<p class="sidebarcom-cart-text">购物袋</p>
								<i id="J_cart_num" class="J_sbar_cart_count i-sidebarcom-nub">0</i>
							</div>
						</div>
						<p id="J_sbar_hover_cd" class="sidebarcom-countdown-tips"
							style="display: none;">
							<span>20分00秒</span><i class="cart-pop-arrow"></i>
						</p> <!-- 购物车文字提示 start -->
						<div id="J_cart_all_tip"
							class="J_all_tip cart_pop_tips sidebarcom-pop-tips"
							style="display: none;">
							<i class="cart-pop-arrow"></i> <span
								class="J_cart_tip_close sidebarcom-pop-tips-close"></span>
							<div class="sidebarcom-cart-pop-tips">
								<!-- 3分钟后 -->
								<p id="J_cart_last3mins" class="J_tip_cnt hidden"
									style="display: none;">
									<i class="i-sidebarcom-warn"></i> 3分钟后购物袋就要被清空了要尽快结算哦~ <a
										href="//cart.vip.com/te2/?ff=99999|3|5|5" target="_blank"
										class="J_cart_tip_close pop-font-btn">去购物袋结算&gt;&gt;</a>
								</p>
								<!-- 3分钟后 end -->
								<!-- 清空tips -->
								<p id="J_cart_timeout" class="J_tip_cnt hidden"
									style="display: none;">
									<i class="i-sidebarcom-warn"></i> 购物袋的商品超时了，可能还有库存，要尽快结算哦~ <a
										href="#" target="_blank" class="J_cart_tip_close pop-font-btn">去购物袋结算&gt;&gt;</a>
								</p>
								<!-- 清空tips end -->
							</div>
						</div> <!-- 购物车文字提示 end -->
					</li>
					<!-- 购物袋 end -->
					<!-- 个人资产 start -->
					<li class="sidebarcom-asset" mars_sead="rightnav_coupon">
						<div id="J_asset">
							<i class="i-sidebarcom-asset vipSidebarFont"></i>
							<p class="sidebarcom-hover">我的优惠券</p>
						</div> <!-- 优惠券提示 start -->
						<div id="J_asset_all_tip"
							class="J_all_tip cart-pop-tips sidebarcom-pop-tips"
							style="display: none;">
							<span id="J_asset_tip_close"
								class="hidden sidebarcom-pop-tips-close"></span> <i
								class="cart-pop-arrow"></i>
							<div id="J_asset_tip_have"
								class="J_tip_cnt sidebarcom-pop-tips-cnt hidden"
								style="display: none;">你有优惠券可以用哦~快来看看~</div>
						</div> <!-- 优惠券提示 end -->
					</li>
					<!-- 个人资产 end -->
					<!-- 收藏品牌 start -->
					<li class="sidebarcom-brand " mars_sead="rightnav_brand">
						<div id="J_brand">
							<i id="J_sbar_brand_point" class="i-sidebarcom-brand-tips hidden"></i>
							<i class="i-sidebarcom-brand vipSidebarFont"></i>
							<p class="sidebarcom-hover">品牌收藏</p>
						</div> <!-- 收藏品牌文字提示 start -->
						<div id="J_brand_all_tip" class="J_all_tip sidebarcom-pop-tips"
							style="display: none;">
							<i class="cart-pop-arrow"></i> <span id="J_brand_tip_close"
								class="hidden sidebarcom-pop-tips-close"></span>
							<!-- 收藏提示 start -->
							<div id="J_brand_tip_have"
								class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
								<p>
									有<span id="J_brand_tip_have_num" class="pop-font-tp"></span>个你收藏的品牌已经开售咯
								</p>
							</div>
							<div id="J_brand_tip_success"
								class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
								<i class="i-sidebarcom-pass"></i>品牌收藏成功
								<p class="sidebarcom-pop-tips-txt">这里可以查看品牌的最新动态</p>
							</div>
							<div id="J_brand_tip_phone"
								class="J_sbar_brand_tips sidebarcom-pop-tips-cnt">
								<i class="i-sidebarcom-pass"></i>品牌收藏成功
								<p class="sidebarcom-pop-tips-ft">
									不想错过？<a href="//m.vip.com/app/" target="_blank">手机版</a>随时会随地提醒你
								</p>
							</div>
							<!-- 收藏提示 end -->
						</div> <!-- 收藏品牌文字提示 end --> <!-- 收藏品牌动画弹窗提示,添加外框样式.sidebracom-pop-sty -->
						<div id="J-sidebarcom-pop-brand" class="J_all_tip"
							style="display: none;"></div> <!-- 收藏品牌动画弹窗提示 end -->
					</li>
					<!-- 收藏品牌 end -->
					<!-- 收藏商品 start -->
					<li class="sidebarcom-fav " mars_sead="rightnav_product">
						<div id="J_fav">
							<i id="J_fav_point" class="i-sidebarcom-brand-tips hidden"></i> <i
								class="i-sidebarcom-fav vipSidebarFont"></i>
							<p class="sidebarcom-hover">商品收藏</p>
						</div> <!-- 收藏商品文字提示 start -->
						<div id="J_fav_all_tip"
							class="J_all_tip sidebarcom-pop-tips fav-goods-tips"
							style="display: none;">
							<i class="cart-pop-arrow"></i> <i
								class="i-sidebarcom-dm sidebarcom-pop-tips-close hidden"
								id="J_fav_tip_close"></i>
							<!-- 收藏有机会商品提示 -->
							<div class="sidebarcom-pop-tips-cnt">
								<i class="i-sidebarcom-pass"></i> 收藏成功，有货提醒你
								<p class="sidebarcom-pop-tips-ft">
									不想错过？<a href="//m.vip.com/app/" target="_blank">手机版</a>随时会随地提醒你
								</p>
							</div>
							<!-- 收藏有机会商品提示 end -->
							<!-- 成功收藏提示 -->
							<div class="J_fav_goods_success sidebarcom-pop-tips-cnt">
								<i class="i-sidebarcom-pass"></i> 收藏成功，你可以在这里找到收藏的商品。
							</div>
							<!-- 成功收藏提示 end -->
							<!-- 收藏提示 end -->
						</div> <!-- 收藏商品文字提示 end -->
						<div id="J-sidebarcom-pop-goods" class="J_all_tip"
							style="display: none;"></div>
					</li>
					<!-- 收藏商品 end -->
					<!-- 足迹 start -->
					<li class="sidebarcom-footprint " mars_sead="">
						<div id="J_footprint" mars_seed="rightnav_footprint_click_out">
							<i id="J_sbar_footprint_point"
								class="i-sidebarcom-brand-tips hidden"></i> <i
								class="i-sidebarcom-footprint vipSidebarFont"></i>
							<p class="sidebarcom-hover">我的足迹</p>
						</div>
					</li>
					<!-- 足迹 end -->
				</ul>
			</div>
			<div id="J_sidebar_ft" class="sidebarcom-nav-ft"
				style="display: none;">
				<div class="sidebarcom-survey" mars_sead="rightnav_feedback">
					<div id="J_sbar_survey">
						<a href="//feedback.vip.com/feedback!hotFeedback.do"
							target="_blank"> <i
							class="i-sidebarcom-survey vipSidebarFont"></i>
						</a>
						<p class="sidebarcom-hover">会员反馈</p>
					</div>
				</div>
				<div class="sidebarcom-top" mars_sead="rightnav_backtotop">
					<div id="J_sbar_top">
						<a href="#top"> <i class="i-sidebarcom-top vipSidebarFont"></i>
						</a>
						<p class="sidebarcom-hover">返回顶部</p>
					</div>
				</div>
			</div>
		</div>

		<div id="J_wrap" class="sidebarcom-pop"></div>
		<div id="J_login_wrap" class="sidebarcom-pop" style="top: 164.5px;">
			<i id="J_my_close" class="i-sidebarcom-dm"></i> <a id="J_my_cnt_link"
				href="#" target="_blank" mars_sead="rightnav_my_headphoto"> <img
				id="J_my_pic" class="sidebarcom-my-pic"
				src="//shop.vipstatic.com/img/common/sidebar/my_cnt_pic.jpg"
				width="66" height="66">
			</a>
			<p id="J_my_cnt_no_name" class="sidebarcom-my-inf">
				你好！请<a href="javascript:;" id="J_to_login"
					mars_sead="rightnav_my_login_log">登录</a>|<a href="javascript:;"
					id="J_to_reg" mars_sead="rightnav_my_login_reg">注册</a>
			</p>
			<p id="J_my_cnt_have_name" class="sidebarcom-my-inf hidden">
				你好！<span id="J_my_cnt_user_name"></span>, 请<a href="javascript:;"
					id="J_to_login" mars_sead="rightnav_my_login_log">登录</a>
			</p>
			<p id="J_sbar_logon_inf" class="sidebarcom-logon-inf">
				<span class="fav-font-tp"><a id="J_user_name" href="#"
					target="_blank" mars_sead="rightnav_my_username"></a></span>，<span
					id="J_my_hello">上午好</span>！ <a class="J_viplevel_name" href="#"
					target="_blank" mars_sead="rightnav_my_honor" title=""> <em
					class="J_viplevel"></em>
				</a>
			</p>
			<!-- 安全等级 <span class="pop-font-tp">中</span> -->
			<div id="J_sbar_my_shortcut" class="sidebarcom-my-oper">
				<p class="sidebarcom-my-order">
					<i id="J_unpay_num" class="i-sidebarcom-mynub">0</i> <a
						id="J_my_order_link" href="#" target="_blank"
						mars_sead="rightnav_my_login_order"> <i
						class="i-sidebarcom-order"></i> 我的订单
					</a>
				</p>
				<p class="sidebarcom-my-message">
					<i id="J_my_msg_num" class="i-sidebarcom-mynub">0</i> <a
						id="J_my_msg_link" href="#" target="_blank"
						mars_sead="rightnav_my_login_news"> <i
						class="i-sidebarcom-message"></i> 我的消息
					</a>
				</p>
			</div>
			<div id="J_sbar_vipclub" class="sidebarcom-my-ft"
				style="visibility: visible;">
				<a href="//iclub.vip.com/?ff=99999|3|1|6" target="_blank"
					mars_sead="rightnav_my_login_club">会员俱乐部</a>
			</div>
			<div id="J_sbar_privilege" class="sidebarcom-logon-ft">
				<p>
					<span>特权：</span> <a href="//iclub.vip.com/user_info/vmarkinfo_list"
						target="_blank" mars_sead="rightnav_my_privilege" title="唯品币超值兑">
						<i class="sidebarcom-vicon sidebar-light-vicon1"></i>
					</a> <a href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="生日祝福"> <i
						class="sidebarcom-vicon sidebar-light-vicon2"></i>
					</a> <a href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="购物送唯品币"> <i
						class="sidebarcom-vicon sidebar-light-vicon3"></i>

					</a> <a class="icon-ruai-light"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="会员专享价"> <i
						class="sidebarcom-vicon sidebar-light-vicon4"></i>

					</a> <a class="icon-mi-light"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="皇钻专场"> <i
						class="sidebarcom-vicon sidebar-light-vicon6"></i>

					</a> <a class="icon-fa-light"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="生日豪礼"> <i
						class="sidebarcom-vicon sidebar-light-vicon9"></i>

					</a> <a class="icon-ruai-dark"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="会员专享价-升级至银牌会员可获得"> <i
						class="sidebarcom-vicon sidebar-dark-vicon4"></i>
					</a> <a class="icon-mi-dark"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="皇钻专场-升级至钻石会员可获得"> <i
						class="sidebarcom-vicon sidebar-dark-vicon6"></i>
					</a> <a class="icon-fa-dark"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank"
						mars_sead="rightnav_my_privilege" title="生日豪礼-升级至皇冠会员可获得"> <i
						class="sidebarcom-vicon sidebar-dark-vicon9"></i>
					</a> <a id="J_sbar_privilege_more"
						href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank">
						更多&gt; </a>
				</p>
			</div>
		</div>
		<!-- 唯小宝提示 -->
		<div id="J_bao" class="sidebarcom-bao sprite hidden">
			<div id="J_bao_dialog" class="sidebarcom-bao-pop hidden">
				收藏成功！<br> 你收藏的品牌都在这里哦！
			</div>
		</div>
		<!-- 唯小宝提示 end -->
		<!-- 个人头像 start -->
		<script type="text/html" id="J_my_logo">
        <img width="28" height="28" class="i-sidebarcom-mypic" src="{$my_logo}">
    </script>
		<!-- 个人头像 end -->

		<!-- 个人信息内容层 start -->
		<script type="text/html" id="J_my_cnt">
        <i id="J_my_close" class="i-sidebarcom-dm"></i>
        <a id="J_my_cnt_link" href="//myi.vip.com/index.html" target="_blank" mars_sead="rightnav_my_headphoto">
            <img id="J_my_pic" class="sidebarcom-my-pic" src="//shop.vipstatic.com/img/common/sidebar/my_cnt_pic.jpg" width="66" height="66"/>
        </a>
        <p id="J_my_cnt_no_name" class="sidebarcom-my-inf">
            你好！请<a href="javascript:;" id="J_to_login" mars_sead="rightnav_my_login_log">登录</a>|<a href="javascript:;" id="J_to_reg" mars_sead="rightnav_my_login_reg">注册</a>
        </p>
        <p id="J_my_cnt_have_name" class="sidebarcom-my-inf hidden">
            你好！<span id="J_my_cnt_user_name"></span>, 请<a href="javascript:;" id="J_to_login" mars_sead="rightnav_my_login_log">登录</a>
        </p>
        <p id="J_sbar_logon_inf" class="sidebarcom-logon-inf">
            <span class="fav-font-tp"><a id="J_user_name" href="//myi.vip.com/index.html" target="_blank" mars_sead="rightnav_my_username"></a></span>，<span id="J_my_hello">上午好</span>！
            <a class="J_viplevel_name" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_honor" title="">
                <em class="J_viplevel"></em>
            </a>
        </p>
        <!-- 安全等级 <span class="pop-font-tp">中</span> -->
        <div id="J_sbar_my_shortcut" class="sidebarcom-my-oper">
            <p class="sidebarcom-my-order">
                <i id="J_unpay_num" class="i-sidebarcom-mynub">0</i>
                <a id="J_my_order_link" href="//order.vip.com/order/orderlist?ff=99999|3|1|4" target="_blank" mars_sead="rightnav_my_login_order">
                    <i class="i-sidebarcom-order"></i>
                    我的订单
                </a>
            </p>
            <p class="sidebarcom-my-message">
                <i id="J_my_msg_num" class="i-sidebarcom-mynub">0</i>
                <a id="J_my_msg_link" href="//myi.vip.com/messageCenter.html?ff=99999|3|1|5" target="_blank" mars_sead="rightnav_my_login_news">
                    <i class="i-sidebarcom-message"></i>
                    我的消息
                </a>
            </p>
        </div>
        <div id="J_sbar_vipclub" class="sidebarcom-my-ft">
            <a href="//iclub.vip.com/?ff=99999|3|1|6" target="_blank" mars_sead="rightnav_my_login_club">会员俱乐部</a>
        </div>
        <div id="J_sbar_privilege" class="sidebarcom-logon-ft">
            <p>
                <span>特权：</span>
                <a href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="唯品币超值兑">
                    <i class="sidebarcom-vicon sidebar-light-vicon1"></i>
                </a>
                <a href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="生日祝福">
                    <i class="sidebarcom-vicon sidebar-light-vicon2"></i>
                </a>
                <a href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="购物送唯品币">
                    <i class="sidebarcom-vicon sidebar-light-vicon3"></i>

                </a>
                <a class="icon-ruai-light" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="会员专享价">
                    <i class="sidebarcom-vicon sidebar-light-vicon4"></i>

                </a>
                <a class="icon-mi-light" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="皇钻专场">
                    <i class="sidebarcom-vicon sidebar-light-vicon6"></i>

                </a>
                <a class="icon-fa-light" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="生日豪礼">
                    <i class="sidebarcom-vicon sidebar-light-vicon9"></i>

                </a>
                <a class="icon-ruai-dark" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="会员专享价-升级至银牌会员可获得">

                    <i class="sidebarcom-vicon sidebar-dark-vicon4"></i>
                </a>
                <a class="icon-mi-dark" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="皇钻专场-升级至钻石会员可获得">
                    <i class="sidebarcom-vicon sidebar-dark-vicon6"></i>
                </a>
                <a class="icon-fa-dark" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank" mars_sead="rightnav_my_privilege" title="生日豪礼-升级至皇冠会员可获得">
                    <i class="sidebarcom-vicon sidebar-dark-vicon9"></i>
                </a>
                <a id="J_sbar_privilege_more" href="//iclub.vip.com/user_info/vmarkinfo_list" target="_blank">
                    更多>
                </a>
            </p>
        </div>
    </script>
		<!-- 个人信息内容层 end -->

		<!-- 个人资产内容层 start -->
		<script type="text/html" id="J_asset_cnt">
        <div class="sidebarcom-pop-hd">
            <i id="J_asset_close" class="i-sidebarcom-dm"></i>
            <span><a id="J_asset_title" mars_sead="rightnav_coupon_more1" href="//myi.vip.com/coupons.html" target="_blank">我的优惠券</a></span>
        </div>
        <div class="J_pop_bd sidebarcom-pop-bd"></div>
    </script>
		<!-- 个人资产内容层 end -->
		<!-- 还没有优惠券 start-->
		<script type="text/html" id="J_asset_null_tpl">
        <div id="J_asset_null" class="sidebarcom-pop-cnt sidebarcom-asset-null">
            <div class="sidebarcom-asset-tips">
                <img src="//shop.vipstatic.com/img/common/sidebar/sbar_asset_pic.jpg" width="141" height="180" alt="还没有优惠券" />
                <p>你还没有可用的优惠券哦~</p>
            </div>
        </div>
    </script>
		<!-- 还没有优惠券 end -->
		<!-- 有优惠券 start-->
		<script type="text/html" id="J_asset_have_tpl">
        <div id="J_asset_have" class="sidebarcom-pop-cnt sidebarcom-asset-have">
            <div id="J_asset_list" class="m-asset-list"></div>
        </div>
    </script>
		<!-- 有优惠券 end -->
		<!--

        优惠券.asset-cpn-disc
        未上线券 .asset-cpn-feature
    -->
		<script type="text/html" id="J_coupon_tpl">
        <div class="asset-list-cnt">
            {#data}
            <!--
            //优惠券.asset-cpn-disc、免邮券.asset-cpn-free 未上线券 .asset-cpn-feature -->
            <div class="J_asset_cpn asset-cpn {$coupon_display}">
                <div class="asset-cpn-cnt">
                    <a class="J_coupon_link" target="_blank">
                        {#is_expire_desc}
                        <!--
                        // 有效期文案输出：过期时间为5天以内的显示“x天后过期” -->
                        <p class="asset-cpn-time"> {$expire_desc} </p>
                        {#/is_expire_desc}

                        {#is_not_free}
                        <!--
                        // 优惠信息文案输出：满200元减100元/满100元减50元 -->
                        <p class="asset-cpn-nub"><em>&yen;</em><span class="asset-cpn-nub-big">{$usemoney}</span>[满{$uselimit}减{$usemoney}]</p>
                        {#/is_not_free}

                        {#is_free}
                        <!--
                        // $coupon_type值为4：免邮 ****-->
                        <p class="asset-cpn-free-hd">免运费</p>
                        {#/is_free}

                        {#is_time}
                        <!--
                        // 有效期文案输出：格式2015.01.08-2016.01.09 -->
                        <p class="asset-cpn-date">
                            {$start_time}
                            <em>~ {$stop_time}</em>
                        </p>
                        {#/is_time}
                    </a>
                </div>
                <div class="asset-cpn-name">
                    {#is_brands}
                    <p class="acn-p acn-p-brand">
                        <a class="J_coupon_name_link acn-p-link"
                           mars_sead="rightnav_coupon_brand{$num}"
                           href="//list.vip.com/{$id}.html?ff=99999|3|2|5"
                           target="_blank" rel="noopener">{$name}</a>
                    </p>
                    {#/is_brands}

                    {#is_singles}
                    <p class="acn-p  acn-p-brand">
                        <a class="acn-p-link"
                           mars_sead="rightnav_single_{$id}"
                           href="//list.vip.com/buymore.php?couponNos={$id}&spe_name={$couponFavDesc}"
                           target="_blank" rel="noopener">{$name}</a>
                    </p>
                    {#/is_singles}

                    {#is_coupon}
                    <p class="acn-p acn-p-range">{$couponRange}</p>
                    {#/is_coupon}

                    {#is_mobile}
                    <p class="acn-p acn-p-mobile">
                        移动客户端专享，马上
                        <a href="//m.vip.com/app/"
                           target="_blank" rel="noopener">
                            <em style="color:#2098ca">下载APP</em>
                        </a>
                    </p>
                    {#/is_mobile}

                    {#is_cate}
                    <p class="acn-p-coupons">
                        <a href="//viva.vip.com/act/cartCollage-pc?wapid=vivac_1007?category_id={$cateId}"
                           target="_blank" rel="noopener">{$cateName}</a>
                    </p>
                    {#/is_cate}

                    {#is_onlinePay}

                    <p class="acn-p acn-p-pay">{$text}</p>
                    {#/is_onlinePay}
                </div>
            </div>
            {#/data}
            <a mars_sead="rightnav_coupon_more3" href="//myi.vip.com/coupons.html" target="_blank" class="u-btn-fav-more">
                共{$total}张优惠券未使用 查看更多<i class="i-sidebarcom-arr"></i>
            </a>
        </div>
    </script>


		<!-- 收藏商品列表 end -->
		<script type="text/html" id="J_add_cart_success">
        <img id="J_fav_add_cart_{$sizeId}" src="{$img}" width="113" height="142"/>
    </script>
		<!-- 收藏商品加入购物车成功 end -->
		<!-- 有货提醒加入购物车成功 start -->
		<script type="text/html" id="J_wait_add_cart_success">
        <img id="J_wait_add_cart_{$sizeId}" src="{$img}" width="49" height="61"/>
    </script>
		<!-- 有货提醒加入购物车成功 end -->



		<script type="text/html" id="J_waitlist_top_tips_tpl">
        <p id="J_wait_list_tips" class="wait-list-tips hidden">新增<span id="J_wait_list_num">1</span>件有货提醒商品</p>
    </script>

		<!-- 购物车 start -->
		<script type="text/html" id="J_cart_cnt">
        <div class="sidebarcom-pop-hd">
            <i id="J_cart_close" class="i-sidebarcom-dm"></i>
            <span><a href="//cart.vip.com/te2/?ff=99999|3|5|5" target="_blank" id="J_cart_title"></a></span>
        </div>
        <div class="J_pop_bd sidebarcom-pop-bd"></div>
    </script>
		<!-- 购物车 end -->

		<!-- 购物车倒计时头部 -->
		<script type="text/html" id="J_cart_countdown_cnt">
        <i class="i-sidebarcom-countdown"></i>商品将保留<em id="J_cart_title_countdown" class="sidebarcom-pop-hd-tips">{$txt}</em>
    </script>
		<!-- 购物车倒计时头部end -->

		<!-- 购物车超时头部 -->
		<script type="text/html" id="J_cart_timeout_cnt">
        <em class="sidebarcom-cs-time">逛超时了，请尽快结算。</em>
    </script>
		<!-- 购物车超时头部end -->

		<!-- 购物车有商品 start -->
		<script type="text/html" id="J_cart_have_tpl">
        <div class="sidebarcom-pop-cnt">
            <!-- 购物车有商品 -->
            <div class="sidebarcom-cart-list">
                <div id="J_cart_first_add" class="sidebarcom-cart-tips">
                    <i class="i-sidebarcom-cart-tips"></i>
                    <div class="sidebarcom-cart-tips-txt">
                        <p>告诉你个秘密哦</p>
                        <ul>
                            <li>• 购物袋最多同时添加10款商品</li>
                            <li>• {$lifetime}分钟后 购物袋将被清空</li>
                        </ul>
                    </div>
                </div>
                <div class="m-cart-list">
                    {#items}
                    <dl class="sidebarcom-cart-list">
                        <dt class="sidebarcom-cart-list-inf">
                            <a class="J_cart_goods_link" href="//detail.vip.com/detail-{$brand_id}-{$merchandise_id}.html?ff=99999|3|5|4" target="_blank" title="{$merchandise_name}">
                                <img src="{$small_img}" width="49" height="61" alt="{$merchandise_name}" />
                            </a>
                        <p class="sidebarcom-cart-list-name" title="{$merchandise_name}"><a class="J_cart_goods_link" href="//detail.vip.com/detail-{$brand_id}-{$merchandise_id}.html?ff=99999|3|5|4" target="_blank" title="{$merchandise_name}">{$merchandise_name}</a></p>
                        <span class="sidebarcom-cart-list-size">{$size_name}</span>
                        </dt>
                        <dd class="sidebarcom-cart-list-nub">{$number}</dd>
                        <dd><span class="salebg2">&yen;{$sell_price}</span></dd>
                    </dl>
                    {#/items}
                    {#isUnAvailable}
                    <div class="unbuy-cart-tips-box {$sidebarUnbuy}">
                        <span class="unbuy-cart-tips">因收货地区切换，以下商品状态已改变</span><!--
                        --><div class="unbuy-cart-tips-icon J_sideBarCart_tooltips">
                            <i class="vipFont">&#xe62f;</i>
                            <div class="ui-tooltips ui-tooltips-top-right-arrow ">
                                <div class="ui-tooltips-arrow">
                                    <i class="arrow arrow-out">&#9670;</i>
                                    <i class="arrow">&#9670;</i>
                                </div>
                                <div class="ui-tooltips-content">
                                    <p>由于地区切换而导致的商品无货，我们依然会为你在原配送区域保留库存，保留时间为{$lifetime}分钟。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    {#/isUnAvailable}
                    {#unAvailableItems}
                    <dl class="sidebarcom-unbuy-cart-list">
                        <dt class="sidebarcom-unbuy-cart-list-inf">
                            <a class="J_cart_goods_link" href="//detail.vip.com/detail-{$brand_id}-{$merchandise_id}.html?ff=99999|3|5|4" target="_blank" title="{$merchandise_name}">
                                <img src="{$small_img}" width="49" height="61" alt="{$merchandise_name}" />
                                <div class="sidebarcom-product-cover"><span class="sidebarcom-product-cover-txt"><span title="{$province_name}">{$sb_noStock_province_name}</span><br>无货</span></div>
                            </a>
                            <p class="sidebarcom-unbuy-cart-list-name" title="{$merchandise_name}"><a class="J_cart_goods_link" href="//detail.vip.com/detail-{$brand_id}-{$merchandise_id}.html?ff=99999|3|5|4" target="_blank" title="{$merchandise_name}">{$merchandise_name}</a></p>
                            <span class="sidebarcom-unbuy-cart-list-size">{$size_name}</span>
                        </dt>
                        <dd class="sidebarcom-unbuy-cart-list-nub">{$number}</dd>
                        <dd><span class="salebg2">&yen;{$sell_price}</span></dd>
                    </dl>
                    {#/unAvailableItems}
                </div><!-- m-cart-list end -->
                <div class="m-cart-oper">
                    <p class="sidebarcom-cart-oper-inf {$itemsHide}">
                        <span class="sidebarcom-cart-count">{$available_sku_count}</span>件商品<span title="{$province_name}">{$sb_delivery_province_name}</span><span class="salebg2">&yen;{$total}</span>
                    </p>
                    <a href="//cart.vip.com/te2/?ff=99999|3|5|5" target="_blank" class="u-sidebarcom-btn i-sidebarcom-btn">去购物袋结算</a>
                    <div class="sidebarcom-cart-yao hidden" id="J-sidebarcom-cart-yao">
                        <a href="http://cart.vipshopyao.com/cart" target="_blank" class="sidebarcom-cart-yao-link">
                            <span class="sidebarcom-cart-yao-golist">去医药清单<i class="vipFont">&#xe632;</i></span><span class="sidebarcom-cart-yao-name">医药商品<i class="sidebarcom-cart-yao-num">{$cartYaoNum}</i></span>
                        </a>
                    </div>
                </div><!-- m-cart-oper end -->
            </div>
            <!-- 购物车有商品 end -->
        </div>
    </script>
		<!-- 购物车有商品 end -->

	</div>
	<!-- 右栏end -->
</body>
</html>

