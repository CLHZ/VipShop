<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/css/common-hash.css" rel="stylesheet" type="text/css">
<link href="/css/tx1.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/jquery-1.8.3.js"></script>
</head>
<body>
	<div class="g-wrap">
		<!-- 面包屑 -->
		<div class="m-cat-site J_catSite" id="J_catSite">
			<div class="cat-site-cnt J_mq_layout">
				<div class="cat-site-in clearfix J_mq_overflow">
					<div class="f-left J_mq_cnt J_bread_nav">
						<a href="//category.vip.com#J_catSite"
							class="breadcrumb-item J_revokeAll_dom " data-revokeurl="Array"
							title="商品分类" mars_sead="te_onsale_filterlist_cathome_btn">
							商品分类 </a> <i class="breadcrumb-step-icon vipFont"></i> <a
							href="#J_catSite" class="breadcrumb-item  " title="${itemi[0]}"
							mars_sead="te_onsale_filterlist_sort1_btn"> ${itemi[0]} </a> <i
							class="breadcrumb-step-icon vipFont"></i> <a href="#J_catSite"
							class="breadcrumb-item  " title="${itemi[1]}"
							mars_sead="te_onsale_filterlist_sort2_btn"> ${itemi[1]} </a> <i
							class="breadcrumb-step-icon vipFont"></i> <a href="#J_catSite"
							class="breadcrumb-item cat-secluded-current J_cat_secluded "
							title="T恤" mars_sead="te_onsale_filterlist_sort3_btn">${itemi[2]} </a>
					</div>
				</div>
			</div>
		</div>
		<!-- 面包屑 -->
		<!-- 筛选内容显示区 -->
		<script>
			
		
			$(function(){
				var tit;
				$(".multi-option-item").click(function(){
					
					ajax($(this).text(),0);
					/* $("#J_selected").css("display","block");
					$("#J_category_goods_list").children().remove();
					
					tit = $(this).parent().parent().parent().find("dt[class='oper-sec-tit']").text();
					ajax($(this).text());
					$(".miaosu").append("<a href='#' class='f-cat-secluded J_cat_secluded' title="+tit+"："+$(this).text()+" mars_sead=''>	<i class='i-cat-close'>×</i>"+tit+"："+$(this).text()+"</a>");
					$(".i-cat-close").click(function(){
						$(this).parent().remove();
					}); */				
				});
				
				$(".option-item-logo").click(function(){
					ajax("",$(this).children().last().text());
					/* $("#J_selected").css("display","block");
					$("#J_category_goods_list").children().remove();
					
					tit = $(this).find("i[class='oper-fav-inf']").text();
					
					$(".miaosu").append("<a href='#' class='f-cat-secluded J_cat_secluded' title='品牌'："+tit+" mars_sead=''>	<i class='i-cat-close'>×</i>品牌："+$(this).text()+"</a>");
					$(".i-cat-close").click(function(){
						$(this).parent().remove();
					});	 */		
				});
			}); 
			
			function ajax(tit,bid){
				window.location.href = "getGoodsByName.htm?name="+tit+"&logid="+bid;
			}
			
			/* $(".goods-image-link").click(function(){
				$ajax(){
					url : "getGoodsByGid.htm",
					type : "post",
					data : {
						"id",id,
						"b_id":b_id
						},
					success:function(data){
						console.log(data);
					}
				}
			}); */
		</script>
		<div id="J_catOperArea" class="m-cat-wrap">
			<div id="J_catOper" class="m-cat-oper">
				<!-- 默认操作条 end -->
				<!-- 筛选区显示内容 end -->
				<div class="oper-more-cnt">
					<dl class="cat-oper-res f-clearfix" id="J_selected" style="display: none">
						<dt class="oper-sec-tit">已选</dt>
						<dd class="oper-sec-cnt">
							<div class="oper-sec-lit" id="J_qDm">
								<div class="cat-sec-res clearfix">
									<div class="m-cat-site J_catSite f-cat-site-default f-cat-site-left">
										<div class="cat-site-cnt J_mq_layout">
											<div class="cat-site-in clearfix J_mq_overflow">
												<p class="f-lmeft J_mq_cnt miaosu">
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</dd>
					</dl>
					<dl class="cat-oper-sec cat-sec-fav f-clearfix" id="J_search_brand"
						style="height: 223px;">
						<dt class="oper-sec-tit">品牌</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit oper-sec-fav J_ctHeight">
								<div class="oper-lit-cnt J_content">
									<div id="J_row" class="f-clearfix">
										<c:forEach items="${brand}" var="b">
											<a class="option-item-logo J-multi-option-item" href="#"
												data-id="10000408"
												mars_sead="te_onsale_filterlist_brand_img"
												data-ms="te_onsale_filterlist_brand_img|te_onsale_filterlist_x_brand_img"
												title="${b.b_Name}"> <img class="" width="80"
												height="40" alt="${b.b_Name}" src="${b.b_Picture }"
												data-original="${b.b_Picture}"> <i
												class="oper-fav-inf">${b.b_Name}</i> <i
												class="selected-icon"></i><span class="bid" style="display:none">${b.b_ID}</span>
											</a>

										</c:forEach>
									</div>
								</div>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="brandSn"
									mars_sead="te_onsale_filterlist_brand_multiple_cfn_btn">确定</a>
								<!--
                         -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel"
									mars_sead="te_onsale_filterlist_brand_multiple_cln_btn">取消</a>
							</div>
							<div class="cat-sec-fav-pop hidden">
								<p class="sec-fav-pop-inner">
									<i class="i-cat-fav vipFont"></i>最多支持选择5个品牌哦~
								</p>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"
								mars_sead="te_onsale_filterlist_brand_more_btn"
								data-ms="te_onsale_filterlist_brand_more_btn|te_onsale_filterlist_x_brand_more_btn">
								更多<i class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add J_moreAdd"
								mars_sead="te_onsale_filterlist_brand_multiple_btn"
								data-ms="te_onsale_filterlist_brand_multiple_btn|te_onsale_filterlist_x_brand_multiple_btn">
								<i class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos" class="cat-oper-sec f-clearfix J_listChoice "
						style="height: 35px;">
						<dt class="oper-sec-tit">衣长</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="短" data-id="18274"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[85]=18274#J_catSite"
									title="短"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18274"
										name="property-item18274"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18274" class="ui-checkbox-simulation"></label></span>短</a><a
									class="multi-option-item" data-title="常规" data-id="18275"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[85]=18275#J_catSite"
									title="常规"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18275"
										name="property-item18275"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18275" class="ui-checkbox-simulation"></label></span>常规</a><a
									class="multi-option-item" data-title="长" data-id="18272"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[85]=18272#J_catSite"
									title="长"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18272"
										name="property-item18272"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18272" class="ui-checkbox-simulation"></label></span>长</a><a
									class="multi-option-item" data-title="中长" data-id="18273"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[85]=18273#J_catSite"
									title="中长"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18273"
										name="property-item18273"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18273" class="ui-checkbox-simulation"></label></span>中长</a><a
									class="multi-option-item" data-title="不对称衣长" data-id="31406"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[85]=31406#J_catSite"
									title="不对称衣长"><span class="ui-checkbox"><input
										type="checkbox" id="property-item31406"
										name="property-item31406"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item31406" class="ui-checkbox-simulation"></label></span>不对称衣长</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[85]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos" class="cat-oper-sec f-clearfix J_listChoice "
						style="height: 35px;">
						<dt class="oper-sec-tit">版型</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="紧身" data-id="18057"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18057#J_catSite"
									title="紧身"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18057"
										name="property-item18057"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18057" class="ui-checkbox-simulation"></label></span>紧身</a><a
									class="multi-option-item" data-title="修身" data-id="18089"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18089#J_catSite"
									title="修身"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18089"
										name="property-item18089"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18089" class="ui-checkbox-simulation"></label></span>修身</a><a
									class="multi-option-item" data-title="常规" data-id="18058"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18058#J_catSite"
									title="常规"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18058"
										name="property-item18058"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18058" class="ui-checkbox-simulation"></label></span>常规</a><a
									class="multi-option-item" data-title="直筒" data-id="18090"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18090#J_catSite"
									title="直筒"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18090"
										name="property-item18090"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18090" class="ui-checkbox-simulation"></label></span>直筒</a><a
									class="multi-option-item" data-title="宽松" data-id="18059"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18059#J_catSite"
									title="宽松"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18059"
										name="property-item18059"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18059" class="ui-checkbox-simulation"></label></span>宽松</a><a
									class="multi-option-item" data-title="收腰" data-id="18091"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[69]=18091#J_catSite"
									title="收腰"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18091"
										name="property-item18091"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18091" class="ui-checkbox-simulation"></label></span>收腰</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[69]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos" class="cat-oper-sec f-clearfix J_listChoice "
						style="height: 35px;">
						<dt class="oper-sec-tit">袖长</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="无袖" data-id="1388"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=1388#J_catSite"
									title="无袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1388"
										name="property-item1388"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1388" class="ui-checkbox-simulation"></label></span>无袖</a><a
									class="multi-option-item" data-title="短袖" data-id="599"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=599#J_catSite"
									title="短袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item599" name="property-item599"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item599" class="ui-checkbox-simulation"></label></span>短袖</a><a
									class="multi-option-item" data-title="七分袖" data-id="601"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=601#J_catSite"
									title="七分袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item601" name="property-item601"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item601" class="ui-checkbox-simulation"></label></span>七分袖</a><a
									class="multi-option-item" data-title="九分袖" data-id="602"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=602#J_catSite"
									title="九分袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item602" name="property-item602"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item602" class="ui-checkbox-simulation"></label></span>九分袖</a><a
									class="multi-option-item" data-title="长袖" data-id="603"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=603#J_catSite"
									title="长袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item603" name="property-item603"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item603" class="ui-checkbox-simulation"></label></span>长袖</a><a
									class="multi-option-item" data-title="五分袖" data-id="20997"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[83]=20997#J_catSite"
									title="五分袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20997"
										name="property-item20997"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20997" class="ui-checkbox-simulation"></label></span>五分袖</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[83]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos" class="cat-oper-sec f-clearfix J_listChoice "
						style="height: 35px;">
						<dt class="oper-sec-tit">领型</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="V领" data-id="479"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=479#J_catSite"
									title="V领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item479" name="property-item479"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item479" class="ui-checkbox-simulation"></label></span>V领</a><a
									class="multi-option-item" data-title="衬衫领" data-id="481"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=481#J_catSite"
									title="衬衫领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item481" name="property-item481"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item481" class="ui-checkbox-simulation"></label></span>衬衫领</a><a
									class="multi-option-item" data-title="堆堆领" data-id="487"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=487#J_catSite"
									title="堆堆领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item487" name="property-item487"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item487" class="ui-checkbox-simulation"></label></span>堆堆领</a><a
									class="multi-option-item" data-title="翻领" data-id="488"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=488#J_catSite"
									title="翻领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item488" name="property-item488"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item488" class="ui-checkbox-simulation"></label></span>翻领</a><a
									class="multi-option-item" data-title="方领" data-id="489"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=489#J_catSite"
									title="方领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item489" name="property-item489"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item489" class="ui-checkbox-simulation"></label></span>方领</a><a
									class="multi-option-item" data-title="高领" data-id="491"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=491#J_catSite"
									title="高领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item491" name="property-item491"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item491" class="ui-checkbox-simulation"></label></span>高领</a><a
									class="multi-option-item" data-title="高圆领" data-id="492"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=492#J_catSite"
									title="高圆领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item492" name="property-item492"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item492" class="ui-checkbox-simulation"></label></span>高圆领</a><a
									class="multi-option-item" data-title="挂脖" data-id="493"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=493#J_catSite"
									title="挂脖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item493" name="property-item493"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item493" class="ui-checkbox-simulation"></label></span>挂脖</a><a
									class="multi-option-item" data-title="海军领" data-id="494"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=494#J_catSite"
									title="海军领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item494" name="property-item494"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item494" class="ui-checkbox-simulation"></label></span>海军领</a><a
									class="multi-option-item" data-title="荷叶领" data-id="495"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=495#J_catSite"
									title="荷叶领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item495" name="property-item495"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item495" class="ui-checkbox-simulation"></label></span>荷叶领</a><a
									class="multi-option-item" data-title="鸡心领" data-id="496"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=496#J_catSite"
									title="鸡心领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item496" name="property-item496"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item496" class="ui-checkbox-simulation"></label></span>鸡心领</a><a
									class="multi-option-item" data-title="立领" data-id="499"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=499#J_catSite"
									title="立领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item499" name="property-item499"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item499" class="ui-checkbox-simulation"></label></span>立领</a><a
									class="multi-option-item" data-title="露肩连袖领" data-id="502"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=502#J_catSite"
									title="露肩连袖领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item502" name="property-item502"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item502" class="ui-checkbox-simulation"></label></span>露肩连袖领</a><a
									class="multi-option-item" data-title="门筒领" data-id="503"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=503#J_catSite"
									title="门筒领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item503" name="property-item503"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item503" class="ui-checkbox-simulation"></label></span>门筒领</a><a
									class="multi-option-item" data-title="平领" data-id="506"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=506#J_catSite"
									title="平领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item506" name="property-item506"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item506" class="ui-checkbox-simulation"></label></span>平领</a><a
									class="multi-option-item" data-title="双层领" data-id="509"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=509#J_catSite"
									title="双层领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item509" name="property-item509"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item509" class="ui-checkbox-simulation"></label></span>双层领</a><a
									class="multi-option-item" data-title="娃娃领" data-id="510"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=510#J_catSite"
									title="娃娃领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item510" name="property-item510"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item510" class="ui-checkbox-simulation"></label></span>娃娃领</a><a
									class="multi-option-item" data-title="无领" data-id="512"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=512#J_catSite"
									title="无领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item512" name="property-item512"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item512" class="ui-checkbox-simulation"></label></span>无领</a><a
									class="multi-option-item" data-title="一字领" data-id="518"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=518#J_catSite"
									title="一字领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item518" name="property-item518"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item518" class="ui-checkbox-simulation"></label></span>一字领</a><a
									class="multi-option-item" data-title="圆领" data-id="519"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=519#J_catSite"
									title="圆领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item519" name="property-item519"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item519" class="ui-checkbox-simulation"></label></span>圆领</a><a
									class="multi-option-item" data-title="针织领" data-id="520"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=520#J_catSite"
									title="针织领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item520" name="property-item520"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item520" class="ui-checkbox-simulation"></label></span>针织领</a><a
									class="multi-option-item" data-title="其他" data-id="18063"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=18063#J_catSite"
									title="其他"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18063"
										name="property-item18063"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18063" class="ui-checkbox-simulation"></label></span>其他</a><a
									class="multi-option-item" data-title="撞色领" data-id="20898"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20898#J_catSite"
									title="撞色领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20898"
										name="property-item20898"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20898" class="ui-checkbox-simulation"></label></span>撞色领</a><a
									class="multi-option-item" data-title="可翻高领" data-id="20908"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20908#J_catSite"
									title="可翻高领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20908"
										name="property-item20908"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20908" class="ui-checkbox-simulation"></label></span>可翻高领</a><a
									class="multi-option-item" data-title="不可翻高领" data-id="20909"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20909#J_catSite"
									title="不可翻高领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20909"
										name="property-item20909"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20909" class="ui-checkbox-simulation"></label></span>不可翻高领</a><a
									class="multi-option-item" data-title="半高领" data-id="20910"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20910#J_catSite"
									title="半高领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20910"
										name="property-item20910"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20910" class="ui-checkbox-simulation"></label></span>半高领</a><a
									class="multi-option-item" data-title="半高拉链" data-id="20911"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20911#J_catSite"
									title="半高拉链"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20911"
										name="property-item20911"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20911" class="ui-checkbox-simulation"></label></span>半高拉链</a><a
									class="multi-option-item" data-title="棒球领" data-id="20912"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20912#J_catSite"
									title="棒球领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20912"
										name="property-item20912"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20912" class="ui-checkbox-simulation"></label></span>棒球领</a><a
									class="multi-option-item" data-title="常规领" data-id="20913"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=20913#J_catSite"
									title="常规领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20913"
										name="property-item20913"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20913" class="ui-checkbox-simulation"></label></span>常规领</a><a
									class="multi-option-item" data-title="假领" data-id="21294"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21294#J_catSite"
									title="假领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21294"
										name="property-item21294"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21294" class="ui-checkbox-simulation"></label></span>假领</a><a
									class="multi-option-item" data-title="拼接领" data-id="21295"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21295#J_catSite"
									title="拼接领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21295"
										name="property-item21295"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21295" class="ui-checkbox-simulation"></label></span>拼接领</a><a
									class="multi-option-item" data-title="低领" data-id="21297"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21297#J_catSite"
									title="低领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21297"
										name="property-item21297"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21297" class="ui-checkbox-simulation"></label></span>低领</a><a
									class="multi-option-item" data-title="POLO领" data-id="21299"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21299#J_catSite"
									title="POLO领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21299"
										name="property-item21299"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21299" class="ui-checkbox-simulation"></label></span>POLO领</a><a
									class="multi-option-item" data-title="U型领" data-id="21712"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21712#J_catSite"
									title="U型领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21712"
										name="property-item21712"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21712" class="ui-checkbox-simulation"></label></span>U型领</a><a
									class="multi-option-item" data-title="系带领" data-id="21731"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21731#J_catSite"
									title="系带领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21731"
										name="property-item21731"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21731" class="ui-checkbox-simulation"></label></span>系带领</a><a
									class="multi-option-item" data-title="荡领" data-id="21732"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=21732#J_catSite"
									title="荡领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21732"
										name="property-item21732"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21732" class="ui-checkbox-simulation"></label></span>荡领</a><a
									class="multi-option-item" data-title="船领" data-id="25228"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=25228#J_catSite"
									title="船领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25228"
										name="property-item25228"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25228" class="ui-checkbox-simulation"></label></span>船领</a><a
									class="multi-option-item" data-title="斜肩领" data-id="27520"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[77]=27520#J_catSite"
									title="斜肩领"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27520"
										name="property-item27520"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27520" class="ui-checkbox-simulation"></label></span>斜肩领</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[77]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">肩型</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="露肩" data-id="1492"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1492#J_catSite"
									title="露肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1492"
										name="property-item1492"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1492" class="ui-checkbox-simulation"></label></span>露肩</a><a
									class="multi-option-item" data-title="垫肩" data-id="1493"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1493#J_catSite"
									title="垫肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1493"
										name="property-item1493"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1493" class="ui-checkbox-simulation"></label></span>垫肩</a><a
									class="multi-option-item" data-title="立体肩" data-id="1494"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1494#J_catSite"
									title="立体肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1494"
										name="property-item1494"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1494" class="ui-checkbox-simulation"></label></span>立体肩</a><a
									class="multi-option-item" data-title="常规肩" data-id="1495"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1495#J_catSite"
									title="常规肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1495"
										name="property-item1495"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1495" class="ui-checkbox-simulation"></label></span>常规肩</a><a
									class="multi-option-item" data-title="一字肩" data-id="1740"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1740#J_catSite"
									title="一字肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1740"
										name="property-item1740"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1740" class="ui-checkbox-simulation"></label></span>一字肩</a><a
									class="multi-option-item" data-title="其他" data-id="1741"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=1741#J_catSite"
									title="其他"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1741"
										name="property-item1741"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1741" class="ui-checkbox-simulation"></label></span>其他</a><a
									class="multi-option-item" data-title="落肩" data-id="21559"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=21559#J_catSite"
									title="落肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21559"
										name="property-item21559"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21559" class="ui-checkbox-simulation"></label></span>落肩</a><a
									class="multi-option-item" data-title="盖肩" data-id="32134"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[159]=32134#J_catSite"
									title="盖肩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32134"
										name="property-item32134"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32134" class="ui-checkbox-simulation"></label></span>盖肩</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[159]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">袖型</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="包袖" data-id="574"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=574#J_catSite"
									title="包袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item574" name="property-item574"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item574" class="ui-checkbox-simulation"></label></span>包袖</a><a
									class="multi-option-item" data-title="蝙蝠袖" data-id="575"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=575#J_catSite"
									title="蝙蝠袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item575" name="property-item575"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item575" class="ui-checkbox-simulation"></label></span>蝙蝠袖</a><a
									class="multi-option-item" data-title="插肩袖" data-id="576"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=576#J_catSite"
									title="插肩袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item576" name="property-item576"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item576" class="ui-checkbox-simulation"></label></span>插肩袖</a><a
									class="multi-option-item" data-title="衬衫袖" data-id="578"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=578#J_catSite"
									title="衬衫袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item578" name="property-item578"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item578" class="ui-checkbox-simulation"></label></span>衬衫袖</a><a
									class="multi-option-item" data-title="灯笼袖" data-id="580"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=580#J_catSite"
									title="灯笼袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item580" name="property-item580"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item580" class="ui-checkbox-simulation"></label></span>灯笼袖</a><a
									class="multi-option-item" data-title="飞飞袖" data-id="581"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=581#J_catSite"
									title="飞飞袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item581" name="property-item581"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item581" class="ui-checkbox-simulation"></label></span>飞飞袖</a><a
									class="multi-option-item" data-title="公主袖" data-id="582"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=582#J_catSite"
									title="公主袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item582" name="property-item582"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item582" class="ui-checkbox-simulation"></label></span>公主袖</a><a
									class="multi-option-item" data-title="荷叶袖" data-id="584"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=584#J_catSite"
									title="荷叶袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item584" name="property-item584"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item584" class="ui-checkbox-simulation"></label></span>荷叶袖</a><a
									class="multi-option-item" data-title="花瓣袖(郁金香袖)" data-id="585"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=585#J_catSite"
									title="花瓣袖(郁金香袖)"><span class="ui-checkbox"><input
										type="checkbox" id="property-item585" name="property-item585"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item585" class="ui-checkbox-simulation"></label></span>花瓣袖(郁金香袖)</a><a
									class="multi-option-item" data-title="喇叭袖" data-id="587"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=587#J_catSite"
									title="喇叭袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item587" name="property-item587"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item587" class="ui-checkbox-simulation"></label></span>喇叭袖</a><a
									class="multi-option-item" data-title="连体袖" data-id="588"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=588#J_catSite"
									title="连体袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item588" name="property-item588"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item588" class="ui-checkbox-simulation"></label></span>连体袖</a><a
									class="multi-option-item" data-title="泡泡袖" data-id="592"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=592#J_catSite"
									title="泡泡袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item592" name="property-item592"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item592" class="ui-checkbox-simulation"></label></span>泡泡袖</a><a
									class="multi-option-item" data-title="无袖" data-id="594"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=594#J_catSite"
									title="无袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item594" name="property-item594"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item594" class="ui-checkbox-simulation"></label></span>无袖</a><a
									class="multi-option-item" data-title="圆袖" data-id="595"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=595#J_catSite"
									title="圆袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item595" name="property-item595"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item595" class="ui-checkbox-simulation"></label></span>圆袖</a><a
									class="multi-option-item" data-title="褶皱袖" data-id="596"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=596#J_catSite"
									title="褶皱袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item596" name="property-item596"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item596" class="ui-checkbox-simulation"></label></span>褶皱袖</a><a
									class="multi-option-item" data-title="其他" data-id="20770"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=20770#J_catSite"
									title="其他"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20770"
										name="property-item20770"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20770" class="ui-checkbox-simulation"></label></span>其他</a><a
									class="multi-option-item" data-title="常规" data-id="20977"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=20977#J_catSite"
									title="常规"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20977"
										name="property-item20977"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20977" class="ui-checkbox-simulation"></label></span>常规</a><a
									class="multi-option-item" data-title="收口袖" data-id="20978"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=20978#J_catSite"
									title="收口袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20978"
										name="property-item20978"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20978" class="ui-checkbox-simulation"></label></span>收口袖</a><a
									class="multi-option-item" data-title="散口袖" data-id="20979"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=20979#J_catSite"
									title="散口袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20979"
										name="property-item20979"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20979" class="ui-checkbox-simulation"></label></span>散口袖</a><a
									class="multi-option-item" data-title="堆堆袖" data-id="21303"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=21303#J_catSite"
									title="堆堆袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21303"
										name="property-item21303"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21303" class="ui-checkbox-simulation"></label></span>堆堆袖</a><a
									class="multi-option-item" data-title="翻边袖" data-id="25226"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[82]=25226#J_catSite"
									title="翻边袖"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25226"
										name="property-item25226"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25226" class="ui-checkbox-simulation"></label></span>翻边袖</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[82]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">图案</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="动物图案" data-id="9235"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9235#J_catSite"
									title="动物图案"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9235"
										name="property-item9235"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9235" class="ui-checkbox-simulation"></label></span>动物图案</a><a
									class="multi-option-item" data-title="卡通动漫" data-id="9236"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9236#J_catSite"
									title="卡通动漫"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9236"
										name="property-item9236"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9236" class="ui-checkbox-simulation"></label></span>卡通动漫</a><a
									class="multi-option-item" data-title="人物" data-id="9237"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9237#J_catSite"
									title="人物"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9237"
										name="property-item9237"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9237" class="ui-checkbox-simulation"></label></span>人物</a><a
									class="multi-option-item" data-title="风景" data-id="9238"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9238#J_catSite"
									title="风景"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9238"
										name="property-item9238"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9238" class="ui-checkbox-simulation"></label></span>风景</a><a
									class="multi-option-item" data-title="植物花卉" data-id="9239"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9239#J_catSite"
									title="植物花卉"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9239"
										name="property-item9239"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9239" class="ui-checkbox-simulation"></label></span>植物花卉</a><a
									class="multi-option-item" data-title="抽象图案" data-id="9241"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9241#J_catSite"
									title="抽象图案"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9241"
										name="property-item9241"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9241" class="ui-checkbox-simulation"></label></span>抽象图案</a><a
									class="multi-option-item" data-title="数字" data-id="9243"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9243#J_catSite"
									title="数字"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9243"
										name="property-item9243"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9243" class="ui-checkbox-simulation"></label></span>数字</a><a
									class="multi-option-item" data-title="字母" data-id="9244"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9244#J_catSite"
									title="字母"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9244"
										name="property-item9244"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9244" class="ui-checkbox-simulation"></label></span>字母</a><a
									class="multi-option-item" data-title="几何图案" data-id="9370"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9370#J_catSite"
									title="几何图案"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9370"
										name="property-item9370"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9370" class="ui-checkbox-simulation"></label></span>几何图案</a><a
									class="multi-option-item" data-title="动物" data-id="9371"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9371#J_catSite"
									title="动物"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9371"
										name="property-item9371"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9371" class="ui-checkbox-simulation"></label></span>动物</a><a
									class="multi-option-item" data-title="文字" data-id="9374"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9374#J_catSite"
									title="文字"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9374"
										name="property-item9374"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9374" class="ui-checkbox-simulation"></label></span>文字</a><a
									class="multi-option-item" data-title="水果" data-id="9375"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9375#J_catSite"
									title="水果"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9375"
										name="property-item9375"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9375" class="ui-checkbox-simulation"></label></span>水果</a><a
									class="multi-option-item" data-title="纯色" data-id="9376"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9376#J_catSite"
									title="纯色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9376"
										name="property-item9376"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9376" class="ui-checkbox-simulation"></label></span>纯色</a><a
									class="multi-option-item" data-title="条纹" data-id="9386"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9386#J_catSite"
									title="条纹"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9386"
										name="property-item9386"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9386" class="ui-checkbox-simulation"></label></span>条纹</a><a
									class="multi-option-item" data-title="心形" data-id="9387"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9387#J_catSite"
									title="心形"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9387"
										name="property-item9387"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9387" class="ui-checkbox-simulation"></label></span>心形</a><a
									class="multi-option-item" data-title="其他" data-id="9388"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=9388#J_catSite"
									title="其他"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9388"
										name="property-item9388"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9388" class="ui-checkbox-simulation"></label></span>其他</a><a
									class="multi-option-item" data-title="格子" data-id="11572"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=11572#J_catSite"
									title="格子"><span class="ui-checkbox"><input
										type="checkbox" id="property-item11572"
										name="property-item11572"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item11572" class="ui-checkbox-simulation"></label></span>格子</a><a
									class="multi-option-item" data-title="日月星辰" data-id="13674"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=13674#J_catSite"
									title="日月星辰"><span class="ui-checkbox"><input
										type="checkbox" id="property-item13674"
										name="property-item13674"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item13674" class="ui-checkbox-simulation"></label></span>日月星辰</a><a
									class="multi-option-item" data-title="印花" data-id="18359"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18359#J_catSite"
									title="印花"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18359"
										name="property-item18359"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18359" class="ui-checkbox-simulation"></label></span>印花</a><a
									class="multi-option-item" data-title="素色" data-id="18371"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18371#J_catSite"
									title="素色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18371"
										name="property-item18371"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18371" class="ui-checkbox-simulation"></label></span>素色</a><a
									class="multi-option-item" data-title="绣花" data-id="18372"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18372#J_catSite"
									title="绣花"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18372"
										name="property-item18372"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18372" class="ui-checkbox-simulation"></label></span>绣花</a><a
									class="multi-option-item" data-title="碎花" data-id="18947"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18947#J_catSite"
									title="碎花"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18947"
										name="property-item18947"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18947" class="ui-checkbox-simulation"></label></span>碎花</a><a
									class="multi-option-item" data-title="波点" data-id="18948"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18948#J_catSite"
									title="波点"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18948"
										name="property-item18948"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18948" class="ui-checkbox-simulation"></label></span>波点</a><a
									class="multi-option-item" data-title="撞色" data-id="18949"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18949#J_catSite"
									title="撞色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18949"
										name="property-item18949"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18949" class="ui-checkbox-simulation"></label></span>撞色</a><a
									class="multi-option-item" data-title="人像" data-id="18952"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18952#J_catSite"
									title="人像"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18952"
										name="property-item18952"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18952" class="ui-checkbox-simulation"></label></span>人像</a><a
									class="multi-option-item" data-title="拼色" data-id="18955"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18955#J_catSite"
									title="拼色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18955"
										name="property-item18955"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18955" class="ui-checkbox-simulation"></label></span>拼色</a><a
									class="multi-option-item" data-title="手绘" data-id="18956"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18956#J_catSite"
									title="手绘"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18956"
										name="property-item18956"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18956" class="ui-checkbox-simulation"></label></span>手绘</a><a
									class="multi-option-item" data-title="涂鸦" data-id="18957"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=18957#J_catSite"
									title="涂鸦"><span class="ui-checkbox"><input
										type="checkbox" id="property-item18957"
										name="property-item18957"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item18957" class="ui-checkbox-simulation"></label></span>涂鸦</a><a
									class="multi-option-item" data-title="千鸟格" data-id="20962"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=20962#J_catSite"
									title="千鸟格"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20962"
										name="property-item20962"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20962" class="ui-checkbox-simulation"></label></span>千鸟格</a><a
									class="multi-option-item" data-title="渐变" data-id="20964"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=20964#J_catSite"
									title="渐变"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20964"
										name="property-item20964"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20964" class="ui-checkbox-simulation"></label></span>渐变</a><a
									class="multi-option-item" data-title="迷彩" data-id="20965"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=20965#J_catSite"
									title="迷彩"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20965"
										name="property-item20965"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20965" class="ui-checkbox-simulation"></label></span>迷彩</a><a
									class="multi-option-item" data-title="色块" data-id="20966"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=20966#J_catSite"
									title="色块"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20966"
										name="property-item20966"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20966" class="ui-checkbox-simulation"></label></span>色块</a><a
									class="multi-option-item" data-title="骷髅" data-id="20968"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=20968#J_catSite"
									title="骷髅"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20968"
										name="property-item20968"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20968" class="ui-checkbox-simulation"></label></span>骷髅</a><a
									class="multi-option-item" data-title="豹纹" data-id="21234"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=21234#J_catSite"
									title="豹纹"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21234"
										name="property-item21234"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21234" class="ui-checkbox-simulation"></label></span>豹纹</a><a
									class="multi-option-item" data-title="LOGO" data-id="21235"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=21235#J_catSite"
									title="LOGO"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21235"
										name="property-item21235"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21235" class="ui-checkbox-simulation"></label></span>LOGO</a><a
									class="multi-option-item" data-title="拼接" data-id="21237"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=21237#J_catSite"
									title="拼接"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21237"
										name="property-item21237"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21237" class="ui-checkbox-simulation"></label></span>拼接</a><a
									class="multi-option-item" data-title="蝴蝶结" data-id="21382"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[727]=21382#J_catSite"
									title="蝴蝶结"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21382"
										name="property-item21382"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21382" class="ui-checkbox-simulation"></label></span>蝴蝶结</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[727]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">弹性</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="无弹" data-id="415"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[71]=415#J_catSite"
									title="无弹"><span class="ui-checkbox"><input
										type="checkbox" id="property-item415" name="property-item415"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item415" class="ui-checkbox-simulation"></label></span>无弹</a><a
									class="multi-option-item" data-title="微弹" data-id="416"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[71]=416#J_catSite"
									title="微弹"><span class="ui-checkbox"><input
										type="checkbox" id="property-item416" name="property-item416"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item416" class="ui-checkbox-simulation"></label></span>微弹</a><a
									class="multi-option-item" data-title="高弹" data-id="28273"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[71]=28273#J_catSite"
									title="高弹"><span class="ui-checkbox"><input
										type="checkbox" id="property-item28273"
										name="property-item28273"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item28273" class="ui-checkbox-simulation"></label></span>高弹</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[71]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">颜色</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="银色" data-id="9911"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=9911#J_catSite"
									title="银色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9911"
										name="property-item9911"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9911" class="ui-checkbox-simulation"></label></span>银色</a><a
									class="multi-option-item" data-title="青色" data-id="3844"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3844#J_catSite"
									title="青色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3844"
										name="property-item3844"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3844" class="ui-checkbox-simulation"></label></span>青色</a><a
									class="multi-option-item" data-title="咖色" data-id="3853"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3853#J_catSite"
									title="咖色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3853"
										name="property-item3853"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3853" class="ui-checkbox-simulation"></label></span>咖色</a><a
									class="multi-option-item" data-title="驼色" data-id="3852"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3852#J_catSite"
									title="驼色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3852"
										name="property-item3852"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3852" class="ui-checkbox-simulation"></label></span>驼色</a><a
									class="multi-option-item" data-title="杏色" data-id="3851"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3851#J_catSite"
									title="杏色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3851"
										name="property-item3851"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3851" class="ui-checkbox-simulation"></label></span>杏色</a><a
									class="multi-option-item" data-title="米色" data-id="3850"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3850#J_catSite"
									title="米色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3850"
										name="property-item3850"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3850" class="ui-checkbox-simulation"></label></span>米色</a><a
									class="multi-option-item" data-title="褐色" data-id="3856"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3856#J_catSite"
									title="褐色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3856"
										name="property-item3856"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3856" class="ui-checkbox-simulation"></label></span>褐色</a><a
									class="multi-option-item" data-title="花色" data-id="3860"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3860#J_catSite"
									title="花色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3860"
										name="property-item3860"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3860" class="ui-checkbox-simulation"></label></span>花色</a><a
									class="multi-option-item" data-title="黄色" data-id="3859"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3859#J_catSite"
									title="黄色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3859"
										name="property-item3859"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3859" class="ui-checkbox-simulation"></label></span>黄色</a><a
									class="multi-option-item" data-title="棕色" data-id="1648"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1648#J_catSite"
									title="棕色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1648"
										name="property-item1648"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1648" class="ui-checkbox-simulation"></label></span>棕色</a><a
									class="multi-option-item" data-title="橙色" data-id="1650"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1650#J_catSite"
									title="橙色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1650"
										name="property-item1650"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1650" class="ui-checkbox-simulation"></label></span>橙色</a><a
									class="multi-option-item" data-title="白色" data-id="1651"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1651#J_catSite"
									title="白色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1651"
										name="property-item1651"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1651" class="ui-checkbox-simulation"></label></span>白色</a><a
									class="multi-option-item" data-title="绿色" data-id="1652"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1652#J_catSite"
									title="绿色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1652"
										name="property-item1652"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1652" class="ui-checkbox-simulation"></label></span>绿色</a><a
									class="multi-option-item" data-title="粉色" data-id="1653"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1653#J_catSite"
									title="粉色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1653"
										name="property-item1653"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1653" class="ui-checkbox-simulation"></label></span>粉色</a><a
									class="multi-option-item" data-title="紫色" data-id="1654"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1654#J_catSite"
									title="紫色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1654"
										name="property-item1654"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1654" class="ui-checkbox-simulation"></label></span>紫色</a><a
									class="multi-option-item" data-title="蓝色" data-id="1656"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1656#J_catSite"
									title="蓝色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1656"
										name="property-item1656"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1656" class="ui-checkbox-simulation"></label></span>蓝色</a><a
									class="multi-option-item" data-title="黑色" data-id="1657"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1657#J_catSite"
									title="黑色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1657"
										name="property-item1657"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1657" class="ui-checkbox-simulation"></label></span>黑色</a><a
									class="multi-option-item" data-title="红色" data-id="1659"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1659#J_catSite"
									title="红色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1659"
										name="property-item1659"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1659" class="ui-checkbox-simulation"></label></span>红色</a><a
									class="multi-option-item" data-title="灰色" data-id="1660"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=1660#J_catSite"
									title="灰色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item1660"
										name="property-item1660"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item1660" class="ui-checkbox-simulation"></label></span>灰色</a><a
									class="multi-option-item" data-title="肤色" data-id="27626"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=27626#J_catSite"
									title="肤色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27626"
										name="property-item27626"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27626" class="ui-checkbox-simulation"></label></span>肤色</a><a
									class="multi-option-item" data-title="卡其" data-id="30687"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=30687#J_catSite"
									title="卡其"><span class="ui-checkbox"><input
										type="checkbox" id="property-item30687"
										name="property-item30687"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item30687" class="ui-checkbox-simulation"></label></span>卡其</a><a
									class="multi-option-item" data-title="其它颜色" data-id="3119"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[134]=3119#J_catSite"
									title="其它颜色"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3119"
										name="property-item3119"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3119" class="ui-checkbox-simulation"></label></span>其它颜色</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[134]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">尺码</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="XXXS" data-id="29100"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=29100#J_catSite"
									title="XXXS"><span class="ui-checkbox"><input
										type="checkbox" id="property-item29100"
										name="property-item29100"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item29100" class="ui-checkbox-simulation"></label></span>XXXS</a><a
									class="multi-option-item" data-title="XXS" data-id="3963"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3963#J_catSite"
									title="XXS"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3963"
										name="property-item3963"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3963" class="ui-checkbox-simulation"></label></span>XXS</a><a
									class="multi-option-item" data-title="XS" data-id="3956"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3956#J_catSite"
									title="XS"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3956"
										name="property-item3956"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3956" class="ui-checkbox-simulation"></label></span>XS</a><a
									class="multi-option-item" data-title="S" data-id="3957"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3957#J_catSite"
									title="S"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3957"
										name="property-item3957"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3957" class="ui-checkbox-simulation"></label></span>S</a><a
									class="multi-option-item" data-title="M" data-id="3958"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3958#J_catSite"
									title="M"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3958"
										name="property-item3958"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3958" class="ui-checkbox-simulation"></label></span>M</a><a
									class="multi-option-item" data-title="L" data-id="3959"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3959#J_catSite"
									title="L"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3959"
										name="property-item3959"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3959" class="ui-checkbox-simulation"></label></span>L</a><a
									class="multi-option-item" data-title="XL" data-id="3960"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=3960#J_catSite"
									title="XL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item3960"
										name="property-item3960"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item3960" class="ui-checkbox-simulation"></label></span>XL</a><a
									class="multi-option-item" data-title="XXL" data-id="4314"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=4314#J_catSite"
									title="XXL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item4314"
										name="property-item4314"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item4314" class="ui-checkbox-simulation"></label></span>XXL</a><a
									class="multi-option-item" data-title="XXXL" data-id="4315"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=4315#J_catSite"
									title="XXXL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item4315"
										name="property-item4315"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item4315" class="ui-checkbox-simulation"></label></span>XXXL</a><a
									class="multi-option-item" data-title="XXXXL" data-id="4316"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=4316#J_catSite"
									title="XXXXL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item4316"
										name="property-item4316"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item4316" class="ui-checkbox-simulation"></label></span>XXXXL</a><a
									class="multi-option-item" data-title="XXXXXL" data-id="4318"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=4318#J_catSite"
									title="XXXXXL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item4318"
										name="property-item4318"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item4318" class="ui-checkbox-simulation"></label></span>XXXXXL</a><a
									class="multi-option-item" data-title="XXXXXXL" data-id="22115"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=22115#J_catSite"
									title="XXXXXXL"><span class="ui-checkbox"><input
										type="checkbox" id="property-item22115"
										name="property-item22115"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item22115" class="ui-checkbox-simulation"></label></span>XXXXXXL</a><a
									class="multi-option-item" data-title="2" data-id="27601"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=27601#J_catSite"
									title="2"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27601"
										name="property-item27601"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27601" class="ui-checkbox-simulation"></label></span>2</a><a
									class="multi-option-item" data-title="4" data-id="27602"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=27602#J_catSite"
									title="4"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27602"
										name="property-item27602"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27602" class="ui-checkbox-simulation"></label></span>4</a><a
									class="multi-option-item" data-title="6" data-id="27603"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=27603#J_catSite"
									title="6"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27603"
										name="property-item27603"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27603" class="ui-checkbox-simulation"></label></span>6</a><a
									class="multi-option-item" data-title="8" data-id="27331"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=27331#J_catSite"
									title="8"><span class="ui-checkbox"><input
										type="checkbox" id="property-item27331"
										name="property-item27331"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item27331" class="ui-checkbox-simulation"></label></span>8</a><a
									class="multi-option-item" data-title="10" data-id="25530"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=25530#J_catSite"
									title="10"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25530"
										name="property-item25530"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25530" class="ui-checkbox-simulation"></label></span>10</a><a
									class="multi-option-item" data-title="12" data-id="25532"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=25532#J_catSite"
									title="12"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25532"
										name="property-item25532"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25532" class="ui-checkbox-simulation"></label></span>12</a><a
									class="multi-option-item" data-title="14" data-id="25534"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=25534#J_catSite"
									title="14"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25534"
										name="property-item25534"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25534" class="ui-checkbox-simulation"></label></span>14</a><a
									class="multi-option-item" data-title="16" data-id="25536"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=25536#J_catSite"
									title="16"><span class="ui-checkbox"><input
										type="checkbox" id="property-item25536"
										name="property-item25536"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item25536" class="ui-checkbox-simulation"></label></span>16</a><a
									class="multi-option-item" data-title="均码" data-id="9246"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[453]=9246#J_catSite"
									title="均码"><span class="ui-checkbox"><input
										type="checkbox" id="property-item9246"
										name="property-item9246"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item9246" class="ui-checkbox-simulation"></label></span>均码</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[453]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">选购热点</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="专柜同款" data-id="30506"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=30506#J_catSite"
									title="专柜同款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item30506"
										name="property-item30506"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item30506" class="ui-checkbox-simulation"></label></span>专柜同款</a><a
									class="multi-option-item" data-title="明星同款" data-id="30507"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=30507#J_catSite"
									title="明星同款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item30507"
										name="property-item30507"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item30507" class="ui-checkbox-simulation"></label></span>明星同款</a><a
									class="multi-option-item" data-title="特价款" data-id="32173"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32173#J_catSite"
									title="特价款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32173"
										name="property-item32173"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32173" class="ui-checkbox-simulation"></label></span>特价款</a><a
									class="multi-option-item" data-title="唯品专供款" data-id="32174"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32174#J_catSite"
									title="唯品专供款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32174"
										name="property-item32174"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32174" class="ui-checkbox-simulation"></label></span>唯品专供款</a><a
									class="multi-option-item" data-title="限量款" data-id="32175"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32175#J_catSite"
									title="限量款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32175"
										name="property-item32175"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32175" class="ui-checkbox-simulation"></label></span>限量款</a><a
									class="multi-option-item" data-title="线上专供款" data-id="32176"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32176#J_catSite"
									title="线上专供款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32176"
										name="property-item32176"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32176" class="ui-checkbox-simulation"></label></span>线上专供款</a><a
									class="multi-option-item" data-title="联名款" data-id="32178"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32178#J_catSite"
									title="联名款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32178"
										name="property-item32178"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32178" class="ui-checkbox-simulation"></label></span>联名款</a><a
									class="multi-option-item" data-title="主推款" data-id="32179"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[578]=32179#J_catSite"
									title="主推款"><span class="ui-checkbox"><input
										type="checkbox" id="property-item32179"
										name="property-item32179"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item32179" class="ui-checkbox-simulation"></label></span>主推款</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[578]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">厚薄</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="薄" data-id="411"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=411#J_catSite"
									title="薄"><span class="ui-checkbox"><input
										type="checkbox" id="property-item411" name="property-item411"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item411" class="ui-checkbox-simulation"></label></span>薄</a><a
									class="multi-option-item" data-title="常规" data-id="412"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=412#J_catSite"
									title="常规"><span class="ui-checkbox"><input
										type="checkbox" id="property-item412" name="property-item412"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item412" class="ui-checkbox-simulation"></label></span>常规</a><a
									class="multi-option-item" data-title="厚" data-id="413"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=413#J_catSite"
									title="厚"><span class="ui-checkbox"><input
										type="checkbox" id="property-item413" name="property-item413"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item413" class="ui-checkbox-simulation"></label></span>厚</a><a
									class="multi-option-item" data-title="加厚" data-id="414"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=414#J_catSite"
									title="加厚"><span class="ui-checkbox"><input
										type="checkbox" id="property-item414" name="property-item414"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item414" class="ui-checkbox-simulation"></label></span>加厚</a><a
									class="multi-option-item" data-title="加绒加厚" data-id="20866"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=20866#J_catSite"
									title="加绒加厚"><span class="ui-checkbox"><input
										type="checkbox" id="property-item20866"
										name="property-item20866"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item20866" class="ui-checkbox-simulation"></label></span>加绒加厚</a><a
									class="multi-option-item" data-title="夹棉加厚" data-id="21223"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[70]=21223#J_catSite"
									title="夹棉加厚"><span class="ui-checkbox"><input
										type="checkbox" id="property-item21223"
										name="property-item21223"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item21223" class="ui-checkbox-simulation"></label></span>夹棉加厚</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[70]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
					<dl id="catPerPos"
						class="cat-oper-sec f-clearfix J_listChoice J_hidden"
						style="height: 35px;">
						<dt class="oper-sec-tit">适用季节</dt>
						<dd class="oper-sec-cnt J_multi_option_cnt">
							<div class="oper-sec-lit f-clearfix J_content J_ctHeight">

								<a class="multi-option-item" data-title="春" data-id="451"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[73]=451#J_catSite"
									title="春"><span class="ui-checkbox"><input
										type="checkbox" id="property-item451" name="property-item451"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item451" class="ui-checkbox-simulation"></label></span>春</a><a
									class="multi-option-item" data-title="夏" data-id="452"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[73]=452#J_catSite"
									title="夏"><span class="ui-checkbox"><input
										type="checkbox" id="property-item452" name="property-item452"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item452" class="ui-checkbox-simulation"></label></span>夏</a><a
									class="multi-option-item" data-title="秋" data-id="453"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[73]=453#J_catSite"
									title="秋"><span class="ui-checkbox"><input
										type="checkbox" id="property-item453" name="property-item453"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item453" class="ui-checkbox-simulation"></label></span>秋</a><a
									class="multi-option-item" data-title="冬" data-id="454"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[73]=454#J_catSite"
									title="冬"><span class="ui-checkbox"><input
										type="checkbox" id="property-item454" name="property-item454"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item454" class="ui-checkbox-simulation"></label></span>冬</a><a
									class="multi-option-item" data-title="四季适用" data-id="19037"
									href="###"
									data-href="search-5-0-1.html?q=3|330971||&amp;rp=30074|323845&amp;props[73]=19037#J_catSite"
									title="四季适用"><span class="ui-checkbox"><input
										type="checkbox" id="property-item19037"
										name="property-item19037"
										class="ui-checkbox-normal J_mulCheckbox"><label
										for="property-item19037" class="ui-checkbox-simulation"></label></span>四季适用</a>
							</div>
							<div class="oper-lit-ft J_submitBtns">
								<a href="#" class="i-cat-btn i-cat-rd J_submit"
									data-type="props[73]">确定</a>
								<!--
                        -->
								<a href="#" class="i-cat-btn i-cat-rg J_cancel">取消</a>
							</div>
						</dd>
						<dd class="oper-sec-more">
							<span class="cat-more-dis hidden J_moreDis"> 更多<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-dwon J_moreDwon"> 收起<i
								class="i-cat-dis vipFont"></i>
							</span> <span class="cat-more-add hidden J_moreAdd"> <i
								class="i-cat-add vipFont"></i>多选
							</span>
						</dd>
					</dl>
				</div>
				<!-- 筛选内容显示区 -->
				<div class="cat-oper-ft" id="J_catOperFt">
					<span class="J_moreDis cat-oper-up"> 更多选项 <i
						class="i-cat-dis vipFont"></i>
					</span> <span class="J_moreDown cat-oper-down"> 收起 <i
						class="i-cat-dis vipFont"></i>
					</span>
				</div>
				
				<!-- 当页面下拉时，添加，cat-oper-topbar作为顶部导航条 -->
				<!-- 默认操作条 -->
				<div class="cat-oper-wrap">
					<div class="cat-oper-hd clearfix">
						<!-- 分页 筛选模块中使用-->

						<div
							style="width: 100%; text-align: right; margin-top: 10px; font-size: 14px;">
							共${pagetool.totalCount}条记录&nbsp;&nbsp;
							${pagetool.currentPageNo}/${pagetool.totalPageCount}页 <a
								href="?id=108&currentPageNo=1&pageSize=${pagetool.pageSize}">首页</a>
							<a
								href="?id=108&currentPageNo=${pagetool.prePage}&pageSize=${pagetool.pageSize}">上一页</a>
							<a
								href="?id=108&currentPageNo=${pagetool.nextPage}&pageSize=${pagetool.pageSize}">下一页</a>
							<a
								href="?id=108&currentPageNo=${pagetool.totalPageCount}&pageSize=${pagetool.pageSize}">最后一页</a>
							<span class="page-go-form"><label>跳转至</label> <input
								type="number" style="width: 40px" name="inputPage"
								id="inputPage" class="page-key">页
								<button type="button" class="page-btn" onclick="pageTo()">GO</button>
							</span> &nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<!-- 分页 -->
						<script type="text/javascript">
							function pageLink(page) {
								location.href = "?currentPageNo=" + page
										+ "&pageSize=${pageTool.pageSize}";
							}

							function pageTo() {
								var page = document.getElementById("inputPage").value;
								var maxPage = $
								{
									pageTool.totalPageCount
								}
								;
								if (isNaN(page)) {
									alert("请输入一个数字.");
								} else {
									if (page == undefined || page == "") {
										page = $
										{
											pageTool.currentPageNo
										}
										;
									}
									var realPage = parseInt(page);
									if (parseInt(page) <= 0) {
										realPage = 1;
									}
									if (parseInt(page) > parseInt(maxPage)) {
										realPage = maxPage;
									}
									location.href = "?currentPageNo="
											+ realPage
											+ "&pageSize=${pageTool.pageSize}";
								}
							}
						</script>
						<!-- 分页 end -->
						<!-- 综合排序 start -->
						<div class="oper-hd-general">
							<div class="oper-select">
								<p class="oper-select-txt z-oper-selected-default"
									id="J_default_sort" data-param="orderId 0"
									mars_sead="te_onsale_filterlist_default"
									data-ms="te_onsale_filterlist_price_btn|te_onsale_filterlist_x_price_btn">综合</p>
							</div>
						</div>
						<!-- 综合排序 end -->
						<div class="oper-hd-price">
							<div class="oper-select">
								<p class="oper-select-txt price-select-txt J_sort_option "
									id="J_price_sort" title="价格从低到高" data-param="orderId 0"
									mars_sead="te_onsale_filterlist_price_btn"
									data-ms="te_onsale_filterlist_price_btn|te_onsale_filterlist_x_price_btn">
									价格 <i class="price-sort-icon price-desc vipFont"></i> <i
										class="price-sort-icon price-asc vipFont"></i>
								</p>

							</div>
						</div>
						<!-- 价格筛选 end -->

						<div class="oper-hd-time">
							<div class="oper-select">
								<p class="oper-select-txt time-select-txt J_sort_option "
									title="折扣从低到高" mars_sead="te_onsale_filterlist_discount_btn"
									id="J_discount_sort" data-param="orderId 0">
									折扣 <i class="time-sort-icon time-desc vipFont"></i> <i
										class="time-sort-icon time-asc vipFont"></i>
								</p>
							</div>
						</div>
						<!-- 折扣排序 end -->
						<div class="oper-hd-select" id="J_inputLayout">
							<div class="oper-select-inner">
								<span class="oper-select-star"> <input type="text"
									placeholder=" ¥" id="J_priceStart"> <em
									class="cat-select-tips J_placeholder"> ¥</em>
								</span> <i class="i-cat-pre"> - </i> <span class="oper-select-end">
									<input type="text" placeholder=" ¥" id="J_priceEnd"> <em
									class="cat-select-tips J_placeholder"> ¥</em>
								</span> <i class="i-cat-btn" title="确定" id="J_sortSubmit_btn"
									mars_sead="te_onsale_filterlist_twprice_btn">确定</i>
							</div>
						</div>

						<!-- 价格范围 end -->
						<span class="price-txt-clear hidden" id="J_priceClear"
							mars_sead="te_onsale_filterlist_twprice_clear_btn">清空</span>

						<!-- 悬浮时筛选 -->
						<div class="oper-hd-topmore" id="J-topmore"></div>
						<!-- 悬浮时筛选 end -->

					</div>
				</div>
			</div>
		</div>
		<!-- 选择品牌模块 -->
		<script type="text/html" id="J-selector-img">
         {#items}
         <a class="option-item-logo J-multi-option-item" href="{$url}#J_catSite" data-id="{$id}" mars_sead="te_onsale_filterlist_brand_img" data-ms="te_onsale_filterlist_brand_img|te_onsale_filterlist_x_brand_img" title="{$text}">
          <img class="{$hidden} lazy" width="80" height="40" alt="{$name}"
             src="//s2.vipstatic.com/img/share/blank.png" data-original="{$brand_store_logo}" />
          <i class="oper-fav-inf {$show}">{$name}</i>
          <i class="selected-icon"></i>
        </a>
        {#/items}
	   </script>
		<!-- 选择品牌模块 -->
		<!-- 筛选 end -->
		<section class="goods-list" id="J_category_goods_list"> <c:forEach
			items="${goodslist}" var="g">
			<div class="goods-list-item c-goods J_pro_items "
				id="J_pro_707404407" data-show-thumb="0" data-id="707404407"
				data-brand="3635857" data-prepayid="707404407_446495990378905600"
				data-load-thumb="0">
				<div class="goods-inner J_item_handle_height">
					<div class="goods-slide">
						<div class="goods-image">
							<a href="getGoodsByGid.htm?id=${g.g_ID}&bid=${g.g_BID}" class="goods-image-link" title="${g.g_Name}"
								mars_sead="te_onsale_filterlist_list_img9" target="_blank"
								rel="noopener"> <img id="J_pic_707404407" src="image/title.png"
								data-img-type="5" data-original="${g.g_Image}"
								class="J_img goods-image-img" width="235" height="297" alt=""
								data-img-back="" data-img-side="" data-img-back-s=""
								data-img-side-s="" data-detail-url="#">
							</a>
							<div class="goods-corner-tag"
								id="J_cornerTag707404407_446495990378905600"></div>
							<div
								class="prepay-item-tag J_catePrepay_tag707404407_446495990378905600 hidden">预定</div>
							<p class="good-title-pms J_pms_3635857 hidden"></p>
						</div>
						<div class="goods-images J_thumbWrap" data-load-thumb="0"></div>
					</div>
					<div class="J_goodsPmsBrand_707404407 goods-special-price hidden">
						<div class="special-price c-exclusive">
							<span class="inner-exclusive"><em class="title-msg"></em>
								¥<span class="title"></span></span>
						</div>
						<div class="goods-vipshop-discount">
							<span class="c-vip-price">唯品价</span><span>¥<span
								class="vipshop-price-number"><fmt:formatNumber
										type="number" value="${g.g_Price/g.g_Discount}"
										maxFractionDigits="0" /></span></span><span class="c-price">¥<span
								class="c-price-number">${g.g_Price}</span></span><span
								class="c-discount">${g.g_Discount}折</span>
						</div>
					</div>
					<div class="J_goods-info_707404407 goods-info goods-price-info">

						<span class="goods-discount hidden${g.g_Discount}折">${g.g_Discount}折</span>
						<div class="goods-price-wrapper">
							<em class="goods-sells-price"><span
								class="u-yen  currency-symbol">¥</span><span class="price"><fmt:formatNumber
										type="number" value="${g.g_Price/g.g_Discount}"
										maxFractionDigits="0" /></span><span class="price-from"></span></em>
						</div>
						<del class="goods-market-price">
							<span class="u-yen  currency-symbol">¥</span>${g.g_Price}
						</del>
					</div>
					<div
						class="goods-info prepay-promo-info  hidden J_catePrepayMsg_container707404407_446495990378905600">
						<span
							class="goods-promo-price J_catePrepayMsg707404407_446495990378905600"></span>
					</div>
					<h4 class="goods-info goods-title-info">
						<a target="_blank" rel="noopener" href="#" title="${g.g_Name}">${g.g_Name}</a>
					</h4>
					<p class="goods-tag">
						<span
							class="goods-global-tag goods_singleCoupon_tag J_singleCoupon_707404407 hidden"></span>
						<span class="goods-global-tag hidden"><i
							class="goods-global-flag hidden"><img src="" height="18"
								alt=""></i><em class="goods-global-txt">唯品国际</em></span> <span
							class="goods-vendor-tag hidden">商家发货</span> <span
							class="goods-vendor-tag goods-presale-tag hidden">预售</span>
					</p>
				</div>
			</div>
		</c:forEach> </section>
	</div>
</body>
</html>