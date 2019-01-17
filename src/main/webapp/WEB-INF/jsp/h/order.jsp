<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单管理</title>
<script type="text/javascript" src="/bootstrap/js/jquery.min.js"></script>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.css"
	type="text/css"></link>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/calendar/WdatePicker.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/bootstrap/js/common.js"></script>
<style type="text/css">
body {
	padding-bottom: 30px;
}

h4 {
	margin: 10px 0 0 85%;
}

#birthday {
	width: 200px;
	margin: 10px 0 20px 0;
}

table {
	margin-top: 10px;
}

.pagination {
	float: right;
	margin-bottom: 20px;
}

.input-group-addon {
	padding: 6px 12px;
	font-size: 14px;
	font-weight: normal;
	color: #555555;
	text-align: center;
	background-color: #eeeeee;
	border: 1px solid #cccccc;
	border-radius: 4px;
}

.input-group>.form-control, .input-group>.custom-select, .input-group>.custom-file
	{
	position: relative;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	width: 1%;
	margin-bottom: 0;
}

.right {
	float: right;
	margin: -10px 80px 10px 0;
}

.main {
	margin-top: -120px;
}

.container {
	width: 1270px;
}
</style>

<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "getOrdersdetails.htm",
			type : "post",
			success : function(data) {
				/* console.log(data); */
				let msg = "";
				let caozuo;
				let money = 0;
				for (var i = 0; i < data.length; i++) {
					msg += "<tr><td>" + data[i].o_ID + "</td>";
					if (data[i].d_Status == 1) {
						msg += "<td style='color:green'>已发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary' disabled>已发货</button>&nbsp;&nbsp;<button class='btn-del btn btn-sm btn-warning'>删除</button></td>";
					} else {
						msg += "<td style='color:red'>未发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary'>发货</button>&nbsp;&nbsp;<button class='btn-del btn btn-sm btn-warning'>删除</button></td>";
					}
					/* msg += "<td>" + data[i].o_status + "</td>"; */
					msg += "<td>" + data[i].u_Name + "</td>";
					msg += "<td>" + data[i].a_address + "</td>";
					msg += "<td>" + data[i].g_Name + "</td>";
					msg += "<td>" + data[i].d_Number + "(个)</td>";
					msg += "<td>" + data[i].d_Price + "</td>";
					msg += "<td>" + data[i].o_Date + "</td>";
					money += data[i].d_Price;
					if (data[i].o_Status == 0) {
						msg += "<td style='color:red'>未收货</td>";
					} else if (data[i].o_Status == 1){
						msg += "<td style='color:green'>已收货</td>";
					} else {
						msg += "<td style='color:blue'>退货</td>";
					}
					msg += (caozuo + "<button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>");
					$(".money").empty();
					$(".money").append(money);
				}
				$(".tbody").append(msg);

				//发货
				$(".btn-ok").click(function() {
					let that = $(this).parent().parent();
					let flag = confirm("是否发货?");
					if (flag) {
						let chipments = $(that).children().eq(1).text("已发货").css("color","green");
						$(this).attr("disabled", "disabled");
						$.ajax({
							url : "getUpdateOrdersdetails.htm",
							type : "post",
							data : {state : 0,id : $(that).children().eq(0).text()},
							success : function(data) {
								alert(data);
								alert("发货成功！");
							}
						});
					}
				});

				//删除
				$(".btn-del").click(function() {
					let flag = confirm("是否删除？");
					let that = $(this).parent().parent();
					if (flag) {
						$(this).parent().parent().remove();
						$.ajax({
							url : "getUpdateOrdersdetails.htm",
							type : "post",
							data : {state : 1,id : $(that).children().eq(0).text()},
							success : function(data) {
								alert("删除成功！");
								let money = $(that).children().eq(8).text();
								let sum = $(".money").text();
								$(".money").empty();
								$(".money").append(parseInt(sum) - parseInt(money));
							}
						});
					}
				});
			}
		});
		
		/* 分页按钮 */
		var ye = 1;
		var ye2 = 1;
		$(".btn-light").click(function() {
			var range = $('#dateTimeRange').val();
			if (range == "") {
				if ($(this).text() == "首页") {
					ye = 1;
					limit(ye);
				} else if ($(this).text() == "上一页") {
					ye--;
					limit(ye);
					if (ye < 1) {
						alert("当前为第一页");
						ye = 1;
						limit(ye);
					}
				} else if ($(this).text() == "下一页") {
					ye++;
					limit(ye);
				} else if ($(this).text() == "末页") {

				}
			} else {
				if ($(this).text() == "首页") {
					ye2 = 1;
					dateLimit(range, ye2);
				} else if ($(this).text() == "上一页") {
					ye2--;
					dateLimit(range, ye2);
					if (ye < 1) {
						alert("当前为第一页");
						ye2 = 1;
						dateLimit(range, ye2);
					}
				} else if ($(this).text() == "下一页") {

					ye2++;
					dateLimit(range, ye2);
				} else if ($(this).text() == "末页") {

				}
			}
		});
		
		//查看已发货订单
		$(".btn-yfh").click(function(){
			var d_State = $(".btn-yfh").text();
			$(".tbody").empty();
			$(".money").text(0);
			$.ajax({
				url:"getOrdersdetailsStatus.htm",
				type:"post",
				data : {d_State : d_State},
				success : function(data){
					console.log(data);
					let msg = "";
					let yfhMoney = 0;
					for (var i = 0; i < data.length; i++) {
							msg += "<tr><td>" + data[i].o_ID + "</td>";
							msg += "<td>" + d_State + "</td>";
							msg += "<td>" + data[i].u_Name + "</td>";
							msg += "<td>" + data[i].a_address + "</td>";
							msg += "<td>" + data[i].g_Name + "</td>";
							msg += "<td>" + data[i].d_Number + "(个)</td>";
							msg += "<td>" + data[i].d_Price + "</td>";
							msg += "<td>" + data[i].o_Date + "</td>";
							yfhMoney += data[i].d_Price;
							if (data[i].o_Status == 0) {
								msg += "<td style='color:red'>未收货</td>";
							} else if (data[i].o_Status == 1){
								msg += "<td style='color:green'>已收货</td>";
							} else {
								msg += "<td style='color:blue'>退货</td>";
							}
							msg += "<td><button class='btn-ok btn btn-sm btn-primary' disabled>发货</button><button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>";
					}
					$(".money").empty();
					$(".money").append(yfhMoney);
					$(".tbody").append(msg);
					
					$(".btn-del").click(function(){
						let flag = confirm("是否删除？");
						let that = $(this).parent().parent();
						if (flag) {
							$(this).parent().parent().remove();
							$.ajax({
								url : "getUpdateOrdersdetails.htm",
								type : "post",
								data : {state : 1,id : $(that).children().eq(0).text()},
								success : function(data) {
									alert("删除成功！");
									let money = $(that).children().eq(8).text();
									let sum = $(".money").text();
									$(".money").empty();
									$(".money").append(parseInt(sum) - parseInt(money));
								}
							});
						}
					});
				}
			});
		});
		
		
		//查看未发货
		$(".btn-wfh").click(function(){
			$(".tbody").empty();
			$(".money").text(0);
			var d_State = $(".btn-wfh").text();
			$.ajax({
				url:"getOrdersdetailsStatus.htm",
				type:"post",
				data : {d_State:d_State},
				success : function(data){
					console.log(data);
					var msg = "";
					var yfhMoney = 0;
					for (var i = 0; i < data.length; i++) {
							msg += "<tr><td>" + data[i].o_ID + "</td>";
							msg += "<td style='color:red'>" + d_State + "</td>";
							msg += "<td>" + data[i].u_Name + "</td>";
							msg += "<td>" + data[i].a_address + "</td>";
							msg += "<td>" + data[i].g_Name + "</td>";
							msg += "<td>" + data[i].d_Number + "(个)</td>";
							msg += "<td>" + data[i].d_Price + "</td>";
							msg += "<td>" + data[i].o_Date + "</td>";
							yfhMoney += data[i].d_Price;
							if (data[i].o_Status == 0) {
								msg += "<td style='color:red'>未收货</td>";
							} else if (data[i].o_Status == 1){
								msg += "<td style='color:green'>已收货</td>";
							} else {
								msg += "<td style='color:blue'>退货</td>";
							}
							
							msg += "<td><button class='btn-ok btn btn-sm btn-primary' disabled>发货</button><button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>";	
						
					}
					$(".money").empty();
					$(".money").append(yfhMoney);
					$(".tbody").append(msg);
					
					//发货
					$(".btn-ok").click(function(){
						
    					let that = $(this).parent().parent();
    					let flag = confirm("是否发货？");
    					if(flag){
    						let chipments = $(that).children().eq(1).text("已发货").css("color","green");
    						$(this).attr("disabled","disabled");
    						$.ajax({
    							url:"getUpdateOrdersdetails.htm",
				    			type:"post",
				    			data:{state:0,id:$(that).children().eq(0).text()},
				    			success: function(data){
				    				alert("发货成功！");
				    			}
    						});
    					}
    				});
					
					$(".btn-del").click(function(){
						let flag = confirm("是否删除？");
						let that = $(this).parent().parent();
						if (flag) {
							$(this).parent().parent().remove();
							$.ajax({
								url : "getUpdateOrdersdetails.htm",
								type : "post",
								data : {state : 1,id : $(that).children().eq(0).text()},
								success : function(data) {
									alert("删除成功！");
									let money = $(that).children().eq(8).text();
									let sum = $(".money").text();
									$(".money").empty();
									$(".money").append(parseInt(sum) - parseInt(money));
								}
							});
						}
					});
				}
			});
		});
	});
	
	
	function limit(ye){
		$(".tbody").empty();
		$(".money").text(0);
		$.ajax({
			url:"getOrdersdetails.htm",
			type:"post",
			data:{ye:ye},
			success: function(data){
				let msg = "";
				let caozuo;
				let money = 0;
				for(var i = 0; i < data.length; i++){
					msg += "<tr><td>"+data[i].o_ID + "</td>";
					if(data[i].d_Status == 1){
						msg += "<td style='color:green'>已发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary' disabled>发货</button>";
					} else {
						msg += "<td style='color:red'>未发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary'>发货</button>";
					}
						msg += "<tr><td>" + data[i].o_ID + "</td>";
						msg += "<td>" + data[i].u_Name + "</td>";
						msg += "<td>" + data[i].a_address + "</td>";
						msg += "<td>" + data[i].g_Name + "</td>";
						msg += "<td>" + data[i].d_Number + "(个)</td>";
						msg += "<td>" + data[i].d_Price + "</td>";
						msg += "<td>" + data[i].o_Date + "</td>";
						money += data[i].d_Price;
						if(data[i].o_Status == 0){
							msg += "<td style='color:red'>未收货</td>";
						} else if (data[i].o_Status == 1){
							msg += "<td style='color:green'>已收货</td>";
						} else {
							msg += "<td style='color:blue'>退货</td>";
						}
					msg += (caozuo + "<button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>");
					$(".money").empty();
						$(".money").append(money);
				}
				$(".tbody").append(msg);
				
				/* 发货  state:0 为发货*/
				$(".btn-ok").click(function(){
					let that = $(this).parent().parent();
					let flag = confirm("是否发货？");
					if(flag){
						let chipments = $(that).children().eq(1).text("已发货").css("color","green");
						$(this).attr("disabled","disabled");
						$.ajax({
							url:"getUpdateOrdersdetails.htm",
			    			type:"post",
			    			data:{state:0,id:$(that).children().eq(0).text()},
			    			success: function(data){
			    				alert("发货成功！");
			    			}
						});
					}
				});
				
				/* 删除 state:1 为删除 */
				$(".btn-del").click(function(){
					let flag = confirm("是否删除？");
					let that = $(this).parent().parent();
					if(flag){
						$(this).parent().parent().remove();
						$.ajax({
							url:"getUpdateOrdersdetails.htm",
			    			type:"post",
			    			data:{state:1,id:$(that).children().eq(0).text()},
			    			success: function(data){
			    				alert("删除成功！");
			    				let money = $(that).children().eq(8).text();
	    						let sum = $(".money").text();
	    						$(".money").empty();
	    						$(".money").append(parseInt(sum) - parseInt(money));
			    			}
						});
					}
				});	
			}
		});
	}
	
	/* 日期的分页 */
	function dateLimit(range,ye2){
		$(".tbody").empty();
		$(".money").text(0);
		if (range.indexOf("至")) {
            var arr = range.split("至");
            $.ajax({
            	url:"",
            	type:"post",
            	async: false,
            	data:{ye2:ye2, begin:arr[0], over:arr[1]},
            	success:function(data){
				let msg = "";
				let caozuo;
				let money = 0;
				for(var i = 0; i < data.length; i++){
					msg += "<tr><td>"+data[i].o_ID + "</td>";
					if(data[i].d_Status == 1){
						msg += "<td style='color:green'>已发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary' disabled>发货</button>";
					} else {
						msg += "<td style='color:red'>未发货</td>";
						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary'>发货</button>";
					}
						msg += "<tr><td>" + data[i].o_ID + "</td>";
						msg += "<td>" + data[i].u_Name + "</td>";
						msg += "<td>" + data[i].a_address + "</td>";
						msg += "<td>" + data[i].g_Name + "</td>";
						msg += "<td>" + data[i].d_Number + "(个)</td>";
						msg += "<td>" + data[i].d_Price + "</td>";
						msg += "<td>" + data[i].o_Date + "</td>";
						money += data[i].d_Price;
						if(data[i].o_Status == 0){
							msg += "<td style='color:red'>未收货</td>";
						} else if (data[i].o_Status == 1){
							msg += "<td style='color:green'>已收货</td>";
						} else {
							msg += "<td style='color:blue'>退货</td>";
						}
					msg += (caozuo + "<button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>");
					$(".money").empty();
						$(".money").append(money);
				}
				$(".tbody").append(msg);
				
				/* 发货  state:0 为发货*/
				$(".btn-ok").click(function(){
					let that = $(this).parent().parent();
					let flag = confirm("是否发货？");
					if(flag){
						let chipments = $(that).children().eq(1).text("已发货").css("color","green");
						$(this).attr("disabled","disabled");
						$.ajax({
							url:"../servlet/OrderManagerServlet",
			    			type:"get",
			    			data:{state:0,id:$(that).children().eq(0).text()},
			    			success: function(data){
			    				alert("发货成功！");
			    			}
						});
					}
				});
				
				/* 删除 state:1 为删除 */
				$(".btn-del").click(function(){
					let flag = confirm("是否删除？");
					let that = $(this).parent().parent();
					if(flag){
						$(this).parent().parent().remove();
						$.ajax({
							url:"",
			    			type:"get",
			    			data:{state:1,id:$(that).children().eq(0).text()},
			    			success: function(data){
			    				alert("删除成功！");
			    				let money = $(that).children().eq(8).text();
	    						let sum = $(".money").text();
	    						$(".money").empty();
	    						$(".money").append(parseInt(sum) - parseInt(money));
			    			}
						});
					}
				});
            	}
            });
        } 
	}
</script>
</head>
<body>
	<div class="container">
		<div style="margin-top: 10px; float: left;">
			<div class="input-group" style="width: 450px; margin-left: -5px;">
				<input class="form-control date-picker" id="dateTimeRange" value=""
					onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" type="text"
					style="width: 150px">
				<input class="form-control date-picker" id="dateTimeRan" value=""
					onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" type="text"
					style="width: 150px">
				<!-- <span
					class="input-group-addon"> <i
					class="fa fa-calendar bigger-110"></i>
				</span>  <input name="beginTime" id="beginTime" value="" type="hidden">
				<input name="endTime" id="endTime" value="" type="hidden">&nbsp;&nbsp;&nbsp;
				<button class="btn btn-xs btn-primary" type="button"
					onclick="begin_end_time_clear();">清除</button>
				&nbsp; -->
				<button class="btn btn-xs btn-primary" type="button"
					id="btnGetDatetime" style="margin: 10px 15px">查看订单</button>
			</div>
		</div>
		<br>
		<script type="text/javascript">
			$(function(){
				$("#btnGetDatetime").click(function(){
					var o_Date1 = $("#dateTimeRange").val();
					var o_Date2 = $("#dateTimeRan").val();
					$.ajax({
						url : "getOrdersByDate.htm",
						type : "post",
						data : {o_Date1:o_Date1,o_Date2:o_Date2},
						success : function(data){
							/* alert("查询成功!"); */
							console.log(data);
							let msg = "";
		    				let caozuo;
		    				let money = 0;
		    				for(var i = 0; i < data.length; i++){
		    					msg += "<tr><td>"+data[i].o_ID + "</td>";
		    					if(data[i].d_Status == 1){
		    						msg += "<td style='color:green'>已发货</td>";
		    						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary' disabled>发货</button>";
		    					} else {
		    						msg += "<td style='color:red'>未发货</td>";
		    						caozuo = "<td><button class='btn-ok btn btn-sm btn-primary'>发货</button>";
		    					}
		    						/* msg += "<tr><td>" + data[i].o_ID + "</td>"; */
		    						msg += "<td>" + data[i].u_Name + "</td>";
		    						msg += "<td>" + data[i].a_address + "</td>";
		    						msg += "<td>" + data[i].g_Name + "</td>";
		    						msg += "<td>" + data[i].d_Number + "(个)</td>";
		    						msg += "<td>" + data[i].d_Price + "</td>";
		    						msg += "<td>" + data[i].o_Date + "</td>";
		    						money += data[i].d_Price;
		    						if(data[i].o_Status == 0){
		    							msg += "<td style='color:red'>未收货</td>";
		    						} else if (data[i].o_Status == 1){
		    							msg += "<td style='color:green'>已收货</td>";
		    						} else {
		    							msg += "<td style='color:blue'>退货</td>";
		    						}
		    					msg += (caozuo + "<button class='btn-del btn btn-sm btn-warning'>删除</button></td></tr>");
		    					$(".money").empty();
		   						$(".money").append(money);
		    				}
		    				$(".tbody").empty();
		    				$(".tbody").append(msg);
						}
					})
				});
			});
		</script>
		
		<div class="right">
			<button class="btn-yfh btn btn-success">已发货</button>
			&nbsp;
			<button class="btn-wfh btn btn-warning">未发货</button>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>编号</th>
					<th>状态</th>
					<th>收件人</th>
					<th>地址</th>
					<th>商品名称</th>
					<th>数量</th>
					<th>金额</th>
					<th>时间</th>
					<th>是否收货</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody class="tbody">

			</tbody>
		</table>
		<div class="btn-group pull-left">
			<a href="javascript:;" class="btn btn-light">首页</a> <a
				href="javascript:;" class="btn btn-light">上一页</a> <a
				href="javascript:;" class="btn btn-light">下一页</a> <a
				href="javascript:;" class="btn btn-light">末页</a>
			<%-- <a
				class="btn btn-success">/<%= p %></a> --%>
		</div>
		<h4>
			总金额：&yen;<label class="money"></label>
		</h4>
		<div id="chart1"></div>
	</div>
</body>
</html>