<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/13
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>头部</title>
    <link href="/czjcss/headcom.css" rel="stylesheet" type="text/css">
    <link href="/czjcss/mst.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet"
          href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script
            src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script
            src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<header id="vip-common-header"
        class="header vip-common-header clearfix adapt-open"> <nav
        class="top-nav">
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
                <a id="J_header_area_close" href="###"
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
                                class="user-in-name">{$J_header_account} </a> <i class="ico-dis"></i>
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
                                        <a href="https://passport.vip.com/login"
                                           mars_sead="home_top_nav2_login" class="J_header_lnkLogin"
                                           rel="nofollow"> <span id="J_uInfo_welcom">您好！</span> <span
                                                class="top-nav-login">[请登录]</span>
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
                                                  mars_sead="home_top_nav2_log_order" target="_blank">我的订单 <i
                                    id="J-header-myOrder" class="top-nav-order-num"></i>
								</a>
								</span> <span> <a href="//myvpal.vip.com/pc/wallet"
                                                  mars_sead="home_top_nav2_log_wallet" target="_blank">零钱</a>
								</span> <span> <a href="//myi.vip.com/coupons.html"
                                                  mars_sead="home_top_nav2_log_coupon" target="_blank">我的优惠券</a>
								</span> <span> <a href="//myi.vip.com/vipmoney.html"
                                                  mars_sead="home_top_nav2_log_vipmoney" target="_blank">我的唯品币</a>
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
                            mars_sead="home_top_nav2_reg" class="i-link J_header_lnkRegister"
                            rel="nofollow">注册</a></li>
                </ul>
            </li>
            <li id="J_signin_wrap" class="wp-sign" data-hover="wp-order-hover"
                style="display: list-item;"><span> <i id="J_signin_icon"
                                                      class="wp-sign-icon"></i><span id="J_signin_text">签到有礼</span>
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
                        class="ico-dis"></i>
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
                                          mars_sead="home_top_nav2_feedback" target="_blank" rel="nofollow">服务中心</a>
						</span> <span> <a href="//survey.vip.com/932697?lang=zh-Hans"
                                          mars_sead="home_top_nav2_feedback" target="_blank" rel="nofollow">知识产权投诉</a>
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
                            <a href="//m.vip.com/app/?f=nav" target="_blank">随时逛 及时抢</a>
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
                            target="_blank" rel="nofollow">品牌招商</a> <a href="//blog.vip.com/"
                                                                       target="_blank">官方博客</a>
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
                <div class="c-search-helper  J-search-helper"></div>
            </div>

            <script type="text/html" id="J-tmpl-search-helper">
                <div class="c-search-history">
                    <div class="c-search-history-title">搜索历史</div>
                    <a class="vipFont  c-search-history-button-clear  f-hide  J-search-history-button-clear"
                       href="###" title="清除搜索历史" mars_sead="search_historyclear_button"></a>
                    <div class="J-search-history-content"></div>
                </div><!--
 --><div class="c-search-recommend">
                    <div class="c-search-recommend-title">精选推荐</div>
                    <div class="J-search-recommend-content"></div>
                </div>
            </script>

            <script type="text/html" id="J-tmpl-search-history">
                <ul class="c-search-history-list">
                    {{each list as item i}}
                    <li>
                        <a href="{{item.url}}" data-index="{{i}}" mars_sead="history_search_keyword">{{item.name}}</a>
                    </li>
                    {{/each}}
                </ul>
            </script>

            <script type="text/html" id="J-tmpl-search-recommend">
                <ul class="c-search-recommend-list">
                    {{each list as item}}
                    <li>
                        <a href="{{item.url}}" mars_sead="cat_search_keyword" class="J_recommend_key_word" data-word="{{item.word}}">{{item.word}}</a>
                    </li>
                    {{/each}}
                </ul>
            </script>

            <script type="text/html" id="J-tmpl-search-suggestions">
                <ul class="c-search-suggestions J_search_suggestions_list">
                    {{each list as item i}}
                    <li {{if item.status != ''}}class="{{item.status}}">
                    <a class="J_fake_a J_go_search" index="{{i}}" data-word="{{item.word}}" href="###" data-href="{{item.url}}">{{#item.name}}</a>
                    </li>
                    {{/each}}
                </ul>
            </script>

            <script type="text/javascript">
                $.Var
                    .set(
                        'searchPlaceholderSuggestWord',
                        {
                            "type" : 99,
                            "show_word" : "\u8bd5\u8bd5\u641c\u7d22\u5546\u54c1\u3001\u5206\u7c7b\u548c\u54c1\u724c",
                            "real_word" : ""
                        });
            </script>
            <div class="c-logo">
                <div class="header-logo-dop">
                    <a target="_blank" href="//www.vip.com/"
                       mars_sead="home_header_vip_logo"> <img
                            src="//b.appsimg.com/upload/momin/2018/12/11/179/1544510175660.gif"
                            data-original="//b.appsimg.com/upload/momin/2018/12/11/179/1544510175660.gif"
                            alt="全球精选_正品特卖" id="J-vipLogo" height="100">
                    </a>
                </div>
            </div>
            <script type="text/javascript">
                $.Var.set('corporateLogoFlag', 0);
            </script>

            <div
                    class="c-service  header-vip  has-service-operation is-service-on-left">
                <a class="c-service-link"
                   href="//viva.vip.com/act/supportInsurance?wapid=vivac_767"
                   mars_sead="home_header_vip1" target="_blank"></a>
                <!--
 -->
                <a class="c-service-link" href="//help.vip.com/commitment.php"
                   mars_sead="home_header_vip2" target="_blank"></a>
                <!--
 -->
                <a class="c-service-link" href="//help.vip.com/commitment.php"
                   mars_sead="home_header_vip3" target="_blank"></a> <img
                    class="c-service-img  J-service-img  "
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
                    <li id="J_main_nav_category" class="nav-category"><a
                            href="//category.vip.com/" target="_blank" class="main-nav-atag "
                            mars_sead="home_header_channel_category"><img
                            class="link-front-icon J-link-front-icon"
                            src="//b.appsimg.com/upload/momin/2018/09/10/150/1536548648745.png"
                            data-original="//b.appsimg.com/upload/momin/2018/09/10/150/1536548648745.png">商品分类</a></li>
                    <li><a href="//www.vip.com"
                           class="main-nav-atag  menu-item-isbold"
                           mars_sead="home_header_channel_homepage"><img
                            class="link-front-icon J-link-front-icon"
                            src="//b.appsimg.com/upload/momin/2018/11/22/139/1542896193724.gif"
                            data-original="//b.appsimg.com/upload/momin/2018/11/22/139/1542896193724.gif">狂欢12.12</a></li>
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
                    <div class="cate-pop">
                        <div class="nav-cate-data-loading">
                            <span class="ii-loading-pink-32x32"></span>
                        </div>
                        <div class="nav-cate-data-error">
                            <span>抢购的人太多了，小主您等会再来吧</span>
                        </div>
                        <div id="J_main_nav_category_pop"></div>
                    </div>
                </div>
            </div>
        </div>
    </nav> </header>
</body>
</html>
