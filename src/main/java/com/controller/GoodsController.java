package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Brand;
import com.entity.Goods;
import com.junit.PageTool;
import com.service.BrandService;
import com.service.GoodsService;

@Controller
@RequestMapping("/hth")
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private BrandService brandService;
	
	@RequestMapping("/Goods.htm")
	public String Goods(Integer id,String name,Model model,Integer currentPageNo) {
		System.out.println(name+""+id);
		List<Goods> goodsNameById = goodsService.getGoodsNameById(id, name);
    	List<Brand> brand = brandService.getBrand();
    	if(currentPageNo == null) {
			currentPageNo = 1;
		}
    	int totalCount =goodsService.getGoodsCont(id);
    	PageTool pagetool = new PageTool();
		pagetool.setTotalCount(totalCount);
		pagetool.setCurrentPageNo(currentPageNo);
		List<Goods> goodslist = goodsService.getGoods(currentPageNo, pagetool.getPageSize(), id);
		model.addAttribute("brand", brand);
    	model.addAttribute("goodsNameById", goodsNameById);
		/*System.out.println(goodslist.size());*/
		model.addAttribute("goodslist", goodslist);
		model.addAttribute("pagetool", pagetool);
		return "q/tx";
	}
	
	@RequestMapping("/hash.htm")
	public String refrash() {
		return "q/xiangqing";
	}
	/**
	 * 查询指定为T恤的商品
	 * @param id
	 * @param model
	 * @return
	 */
    @RequestMapping("/getGoodsNameById.htm")
    public String getGoodsNameById(Integer id,Model model,String name) {
    	List<Goods> goodsNameById = goodsService.getGoodsNameById(id, "T恤");
    	model.addAttribute("goodsNameById", goodsNameById);
    	return "q/tx";
    }
    
    /**
     * 查询全部的品牌
     * @param model
     * @return
     */
    @RequestMapping("/getBrand.htm")
    public String getBrand(Model model) {
    	List<Brand> brand = brandService.getBrand();
    	model.addAttribute("brand", brand);
    	/*for (Brand brand2 : brand) {
			System.out.println(brand2.getB_Name());
		}*/
    	return "q/tx";
    }
    
    /**
     * 分页
     * @param currentPageNo
     * @param model
     * @return
     */
    @RequestMapping("/getGoods.htm")
    public String getGoods(Integer currentPageNo,Model model,Integer id) {
    	if(currentPageNo == null) {
			currentPageNo = 1;
		}
    	int totalCount =goodsService.getGoodsCont(id);
    	PageTool pagetool = new PageTool();
		pagetool.setTotalCount(totalCount);
		pagetool.setCurrentPageNo(currentPageNo);
		List<Goods> goodslist = goodsService.getGoods(currentPageNo, pagetool.getPrePage(), id);
		model.addAttribute("goodslist", goodslist);
		model.addAttribute("pagetool", pagetool);
    	return "q/tx";
    }
    
    /**
     * 模糊查询内容
     * @param name
     * @param model
     * @return
     */
    @RequestMapping("/getGoodsByName.htm")
    public String getGoodsByName(String name,Integer logid,Model model) {
    	/*g_Name like CONCAT('%',#{g_Name},'%')*/
		System.out.println(name);
		System.out.println(logid);
		List<Goods> goodsByNameList = new ArrayList<Goods>();
		
		goodsByNameList = goodsService.getGoodsByName(name,logid);
		System.out.println(goodsByNameList.size());
		model.addAttribute("goodslist", goodsByNameList);
    	return "q/tx";
    }
    
    /**
     * 根据id查询全部信息
     * @param g_BID 品牌编号，外键
     * @param b_ID 品牌编号，主键
     * @param g_ID 商品编号
     * @return
     */
    @RequestMapping("/getGoodsByGid.htm")
    public String getGoodsByGid(Integer id,Integer bid,Model model) {
    	System.out.println(id+","+bid);
    	List<Brand> goodsByGid = brandService.getGoodsByGid(id, bid);
    	/*System.out.println(goodsByGid.size());*/
    	 model.addAttribute("goodsByGid", goodsByGid);
    	return "q/xiangqing";
    }
}
