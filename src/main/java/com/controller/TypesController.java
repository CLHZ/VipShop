package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Brand;
import com.entity.Types;
import com.service.BrandService;
import com.service.TypesService;

@Controller
public class TypesController {

	@Autowired
	private TypesService typesService;
	
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
		List<Types> shop = typesService.getShop(12);
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
