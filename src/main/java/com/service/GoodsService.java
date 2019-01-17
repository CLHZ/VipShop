package com.service;

import java.util.List;

import com.entity.Goods;

public interface GoodsService {

	List<Goods> getGoodsNameById(Integer t_ID,String t_Name);
	
	Goods reviewByID(Integer id);
	
	List<Goods> getGoods(Integer currentPageNo,Integer pageSize,Integer t_ID);
	
	int getGoodsCont(Integer t_ID);
	
	List<Goods> getGoodsByName(String name,Integer logid);
	
	/*List<Brand> getGoodsByGid(Integer g_ID,Integer b_Id);*/
}
