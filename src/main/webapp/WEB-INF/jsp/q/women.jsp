<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>暖冬女装</title>
<link href="/css/women.css" rel="stylesheet" type="text/css">
<link href="/css/women1.css" rel="stylesheet" type="text/css">
<style>
.cms-operation {
	width: 1000px;
	margin: 10px auto;
	overflow: hidden;
	display: none
}

.cms-operation-con {
	width: 1020px
}

.cms-operation-item {
	float: left;
	margin: 0 20px 20px 0;
	position: relative;
	overflow: hidden
}

.cms-operation-item img {
	width: 100%
}

.cms-operation-item-col-12 {
	width: 1000px
}

.cms-operation-item-col-6 {
	width: 490px;
	height: 155px
}

.cms-operation-item-col-4 {
	width: 320px;
	height: 156px
}

.cms-operation-item-col-3 {
	width: 230px;
	height: 200px
}

.cms-operation-item-col-22 {
	width: 184px;
	height: 245px
}

.cms-operation-item-col-12::after, .cms-operation-item::before {
	opacity: 0;
	content: "";
	width: 80px;
	height: 100%;
	overflow: hidden;
	-webkit-transform: skewX(-25deg);
	transform: skewX(-25deg);
	position: absolute;
	top: 0;
	left: -150px;
	background: linear-gradient(to right, rgba(255, 255, 255, 0) 0,
		rgba(255, 255, 255, .2) 50%, rgba(255, 255, 255, 0) 100%)
}

.cms-operation-item-col-12::after, .cms-operation-item-col-12::before {
	left: 50%;
	margin-left: -40px
}

.cms-operation-item-col-12:hover::after, .cms-operation-item:hover::before
	{
	-webkit-animation: light 1s ease-out;
	animation: light 1s ease-out
}

.cms-operation-item-col-12:hover::before {
	-webkit-animation-name: light2;
	animation-name: light2
}

@
-webkit-keyframes light { 100%{
	opacity: 1;
	left: 125%
}

}
@
keyframes light { 100%{
	opacity: 1;
	left: 125%
}

}
@
-webkit-keyframes light2 { 100%{
	opacity: 1;
	left: -150px
}

}
@
keyframes light2 { 100%{
	opacity: 1;
	left: -150px
}

}
@media screen and (min-width:1441px) {
	.cms-operation {
		width: 1170px
	}
	.cms-operation-con {
		width: 1200px
	}
	.cms-operation-item {
		margin: 0 30px 30px 0
	}
	.cms-operation-item-col-12 {
		width: 1170px
	}
	.cms-operation-item-col-6 {
		width: 570px;
		height: 180px
	}
	.cms-operation-item-col-4 {
		width: 370px;
		height: 180px
	}
	.cms-operation-item-col-3 {
		width: 270px;
		height: 230px
	}
	.cms-operation-item-col-22 {
		width: 210px;
		height: 280px
	}
}

.blink-img img:hover {
	-webkit-animation: blink 1s;
	animation: blink 1s
}

@
-webkit-keyframes blink { 0%{
	opacity: 1
}

50%{
opacity


:


.7


}
to {
	opacity: 1
}

}
@
keyframes blink { 0%{
	opacity: 1
}

50%{
opacity


:


.7


}
to {
	opacity: 1
}

}
.cms-dress-hot-cate-wrap {
	width: 1000px;
	margin: 0 auto;
	display: none
}

.cms-dress-hot-cate-inner {
	height: 305px;
	border: 1px solid #ff6f8a;
	margin-bottom: 40px;
	overflow: hidden
}

.cms-dress-hot-cate-title {
	text-align: center;
	position: relative;
	margin-bottom: 14px
}

.cms-dress-hot-cate-title-line {
	font-size: 0;
	width: 378px;
	height: 1px;
	background-color: #d9d9d9;
	position: absolute;
	left: 50%;
	top: 14px;
	z-index: 1;
	margin-left: -190px
}

.cms-dress-hot-cate-title-big {
	width: 120px;
	display: inline-block;
	height: 30px;
	padding: 0 20px;
	background: #fff url(/image/title.png) no-repeat center;
	background-size: 120px auto;
	position: relative;
	z-index: 2
}

.cms-dress-hot-cate-title-small {
	font-family: Arial;
	font-size: 12px;
	color: #ccc;
	text-transform: uppercase
}

.cms-dress-hot-cate-left {
	width: 143px;
	height: 100%;
	float: left
}

.cms-dress-hot-cate-right {
	width: 855px;
	height: 100%;
	float: left
}

.cms-dress-hot-cate-tab {
	font-size: 16px;
	color: #fff;
	text-align: center;
	line-height: 50px;
	height: 50px;
	border-top: 1px solid #fff;
	background-color: #ff6f8a;
	cursor: pointer;
	position: relative
}

.cms-dress-hot-cate-tab-0 {
	border-top: 0
}

.cms-dress-hot-cate-tab-arrow {
	opacity: 0;
	filter: alpha(opacity = 0);
	color: #ff6f8a;
	font-size: 16px;
	position: absolute;
	right: 40px;
	top: 0
}

.cms-dress-hot-cate-tab.current {
	opacity: 1;
	filter: alpha(opacity = 100);
	color: #ff6f8a;
	background-color: #fff
}

.cms-dress-hot-cate-tab.current .cms-dress-hot-cate-tab-arrow {
	opacity: 1;
	filter: alpha(opacity = 100);
	right: 10px
}

.cms-dress-hot-cate-tab.current:hover {
	background-color: #fff
}

.cms-dress-hot-cate-tab.current:hover .cms-dress-hot-cate-tab-arrow {
	right: 10px
}

.cms-dress-hot-cate-tab:hover {
	color: #ff6f8a;
	background-color: #fafafa
}

.cms-dress-hot-cate-tab:hover .cms-dress-hot-cate-tab-arrow {
	transition: right .2s ease;
	right: 10px;
	opacity: 1;
	filter: alpha(opacity = 100)
}

.cms-dress-hot-cate-con-wrap {
	height: 100%
}

.cms-dress-hot-cate-item {
	text-align: center;
	width: 20%;
	height: 152px;
	float: left
}

.cms-dress-hot-cate-item-link {
	display: block;
	padding-top: 13px
}

.cms-dress-hot-cate-item-img img {
	width: 100px
}

.cms-dress-hot-cate-item-name {
	padding: 5px 10px 0;
	font-size: 14px;
	color: #ff6f8a;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis
}

.cms-dress-hot-cate-title-line {
	_display: none
}

@media screen and (min-width:1441px) {
	.cms-dress-hot-cate-wrap {
		width: 1170px
	}
	.cms-dress-hot-cate-left {
		width: 193px
	}
	.cms-dress-hot-cate-right {
		width: 975px
	}
}

@media only screen and (min-device-pixel-ratio:1.5) {
	.cms-dress-hot-cate-title-big {
		background-image: url(image/title_2x.png);
		background-size: 120px auto
	}
}
</style>
</head>
<body>
	<div id="J_slideBanner_wrap" class="focus-banner">
		<div class="focus-banner-con">
			<ul class="fbc-list" id="J_slideBanner_panel">
				<li class="fbc-list-item" data-id="742104"><a
					href="https://list.vip.com/3754522.html?adidx=1&amp;f=ad&amp;adp=3474&amp;adid=742104"
					target="_blank" mars_sead="lady_ads_top0"> <img
						src="/image/15445967294368.jpg"
						data-original="//a.vpimg3.com/upload/flow/2018/12/12/21/15445967294368.jpg"
						class="fbc-list-img" alt="">
				</a></li>
			</ul>
		</div>
	</div>
	<!-- <script type="text/javascript">
		window.VIPSUBCHANNEL = window.VIPSUBCHANNEL || {};
		VIPSUBCHANNEL.slideBannerId = 'ADS5QB2Q';
		$.Var.set('slideBannerMarsSead', 'lady_ads_top');
	</script> -->
	<div>
		<div class="c-active-cms">
			<div class="c-active-cms-container" data-from-cmsid="ladyOperation-pc"></div>
		</div>
	</div>

	<div class="cms-operation" id="cmsOperation"></div>
	<script type="text/html" id="tplCmsOperationItem">
<div class="cms-operation-con clearfix">{{each $data as val i}} <a href="{{val.link}}" target="_blank" class="cms-operation-item cms-operation-item-{{val.name}}" mars_sead="act_operation_{{val.name}}" mars-exposure-module="act_operation_exposure_{{val.name}}"><img src="{{val.img | webp}}"></a>{{/each}}</div></script>
	<div class="cms-dress-hot-cate-wrap" id="cmsDressHotCateWrap"
		style="display: block;">
		<div class="cms-dress-hot-cate-title">
			<div class="cms-dress-hot-cate-title-line"></div>
			<div class="cms-dress-hot-cate-title-big"></div>
			<div class="cms-dress-hot-cate-title-small">Hot category</div>
		</div>
		<div class="cms-dress-hot-cate-inner clearfix">
			<div class="cms-dress-hot-cate-left">
				<ul class="cms-dress-hot-cate-tab-list" id="cmsDressHotCateTabList">
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-0 current">裙装/套装
						<span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-1">女上
						装 <span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-2">女下
						装 <span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-3">女式外套
						<span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-4">内衣/家居服
						<span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
					<li class="cms-dress-hot-cate-tab cms-dress-hot-cate-tab-5">服装配件
						<span class="vipFont cms-dress-hot-cate-tab-arrow"></span>
					</li>
				</ul>
			</div>
		</div>

	</div>
</body>
</html>