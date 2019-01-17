package com.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Brand;
import com.entity.E;
import com.entity.Orders;
import com.entity.Ordersdetails;
import com.entity.SubType;
import com.entity.Types;
import com.junit.PageTool;
import com.service.BrandService;
import com.service.OrdersService;
import com.service.OrdersdetailsService;
import com.service.BrandService;
import com.service.TypesService;

@Controller
public class TypesController {

	@Autowired
	private TypesService typesService;
	
	@Autowired
	private OrdersdetailsService ordersdetailsService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private BrandService brandService;
	
	/**
	 * 一级菜单
	 * @param id
	 * @param 分类导航
	 * @return
	 */
	@RequestMapping("/getTypesByID.htm")
	public String getTypesByID(Model model) {
		List<Types> typesByID = typesService.getTypesByID();
		model.addAttribute("typesByID", typesByID);
		return "h/product_Manage";
	}
	
	@RequestMapping("/getShop.htm")
	public String getShop(Integer id,Model model) {

		List<SubType> shop = typesService.getShop1(id);
		model.addAttribute("shop", shop);
		return "h/product_Manage";
	}
	
	@RequestMapping("/login.htm")
    public String login(){
         return "h/login";
     }

    @RequestMapping("/index.htm")
    public String index(){
        return "h/index";
    }
    
    @RequestMapping("/index_home.htm")
    public String index_home(){
        return "h/index_home";
    }
    @RequestMapping("/administrators.htm")
    public String administrators(){
        return "h/administrators";
    }
    @RequestMapping("/system_info.htm")
    public String system_info(){
        return "h/system_info";
    }
    
    @RequestMapping("/product_Manage.htm")
    public String product_Manage(){
        return "h/product_Manage";
    }
    
    @RequestMapping("/Brand_Manage.htm")
    public String Brand_Manage(){
        return "h/Brand_Manage";
    }
    @RequestMapping("/order.htm")
    public String order(){
        return "h/order";
    }
    
    /**
     * 查询全部的订单
     * @param model
     * @return
     */
    @RequestMapping("/getOrdersdetails.htm")
    @ResponseBody
    public List<E> getOrdersdetails(HttpServletRequest request) {
    	String state = request.getParameter("state");
    	 return ordersdetailsService.getOrdersdetails();
    }
    
    @RequestMapping("/getUpdateOrdersdetails.htm")
    public int getUpdateOrdersdetails(String o_Status, Integer o_ID) {
    	System.out.println(o_Status);
    	if(o_Status.equals("1")) {
    		o_Status = "已发货";
    	} else if(o_Status.equals("0")) {
    		o_Status = "未发货";
    	}
    	System.out.println(o_Status);
    	return ordersdetailsService.getUpdateOrdersdetails(o_Status, o_ID);
    }
    
    @RequestMapping("/getOrdersdetailsfy.htm")
    public String getOrdersdetails(Integer currentPageNo,Model model) {
    	if(currentPageNo == null) {
			currentPageNo = 1;
		}
    	int totalCount = ordersdetailsService.getOrdersdetailsCont();
    	PageTool pagetool = new PageTool();
		pagetool.setTotalCount(totalCount);
		pagetool.setCurrentPageNo(currentPageNo);
		List<Ordersdetails> ordersdetails = ordersdetailsService.getOrdersdetailsfy(currentPageNo, pagetool.getPrePage());
		model.addAttribute("ordersdetails", ordersdetails);
		model.addAttribute("totalCount", totalCount);
    	return "h/order";
    }
    
    @RequestMapping("/getOrdersByDate.htm")
    @ResponseBody
    public List<E> getOrdersByDate(String o_Date1,String o_Date2) {
    	System.out.println(o_Date1+","+o_Date2);
    	return ordersService.getOrdersByDate(o_Date1,o_Date2);
    }
    
    @RequestMapping("/getOrdersdetailsStatus.htm")
    @ResponseBody
    public List<E> getOrdersdetailsStatus(String d_State){
    	System.out.println(d_State);
    	if(d_State.equals("已发货")) {
    		d_State = "1";
    	}else if(d_State.equals("未发货") ){
    		d_State="0";
    	}
    	System.out.println(d_State);
    	
    	return ordersdetailsService.getOrdersdetailsStatus(d_State);
    }
    @RequestMapping("/brandmanage.htm")
    @ResponseBody
    public List<Brand> getBrand(){
        return brandService.getBrand();
    }
    
    @RequestMapping("/deleteBrand.htm")
    public void deleteBrand(String[] id){
    	/*if(id[0].equals("deleteAll")) {
    		brandService.
    	}*/
    	for (int i = 0; i < id.length; i++) {
    		brandService.deleteByPrimaryKey(id[i]);    		
		}
    }
    
    @RequestMapping("/searchBrand.htm")
    @ResponseBody
    public List<Brand> searchBrand(String brandname) {
    	if(brandname == "") {
    		brandname = null;
    	}
    	return brandService.searchBrand(brandname);
    }
}
