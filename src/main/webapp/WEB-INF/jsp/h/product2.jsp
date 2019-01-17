<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="font/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="css/module.css" rel="stylesheet" type="text/css" />
		<link href="css/pages.css" rel="stylesheet" type="text/css" />
		<title>商品管理</title>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="js/HUpages.js" type="text/javascript"></script>
		<script src="js/common.js" type="text/javascript"></script>
<title></title>
</head>
<body>
	<div class="bk-con-message message-section" id="pollmain">
           <!--编辑内容-->
           <div class="operation mb15">
           	<button class="btn button_btn btn-danger" type="button" onclick="del"><i class="iconfont"></i>&nbsp;删除所选</button>
           	<button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加商品</button>
           	<button class="btn button_btn bg-deep-gray" type="button" onclick=""><i class="iconfont"></i>&nbsp;添加分类</button>
           </div>
           <!--列表内容-->
           <div class="page_content clearfix mb15 table-module " style="overflow:scroll;width: 1130px;height:600px;">
           	<table class="gallery table table_list table_striped table-bordered " id="">
           	
           		<thead>
		        <tr>
				<th ><label><input type="checkbox" class="ace" id="all"><span class="lbl">全选</span></label></th>
				<th >分类</th>
				<th >图片</th>
				<th >商品名称</th>
				<th >价格</th>
				<th >折扣</th>
				<th >状态</th>                
				<th >操作</th>
		       </tr>
		       </thead>
		       <tbody>
		       <c:forEach items="${shop}" var="s">
           		<tr>
           		<td><label><input id="${s.t_ID}" type="checkbox" class="ace" name="sub"><span class="lbl"></span></label></td>
           		<td>${s.t_Name}</td>
           		<td><a href="images/ad/ad.jpg" class="zoomimg"><img src="images/ad/ad.jpg" width="100%" height="100%"/></a></td>
           		<td>${s.g_Name}</td>
           		<td>${s.g_Price}</td>
           		<td>${s.g_Discount}</td>
           		<td>${s.g_Status}</td>
           		<td><button class="btn button_btn bg-deep-blue" type="button" onclick=""><i class="iconfont"></i>&nbsp;修改</button><button class="btn button_btn btn-danger" type="button" onclick=""><i class="iconfont"></i>&nbsp;删除</button></td>
           		</tr>
           		</c:forEach>
           		
		       </tbody>
           	</table>
           </div>
    </div>
   <script type="text/javascript">
    //全选，全部选
    $("#all").click(function () {
        if ($("#all").attr("checked")) {
            $(":checkbox").attr("checked", true);
        } else {
            $(":checkbox").attr("checked", false);
        }
    });

   </script>
   <script type="text/javascript">
   
   function del(){
   	var items= $("#all:checked")
   	var len = items.length;
   	for(var i =0; i<len; i++){
   		$(items[i]).parents(".sub").remove();
   	}
   }
   </script>
</body>
</html>