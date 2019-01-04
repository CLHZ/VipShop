package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Brand;
import com.entity.Goods;
import com.mapper.GoodsMapper;
import com.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private GoodsMapper goodsMapper;

	@Override
	public List<Goods> getGoodsNameById(Integer t_ID,String t_Name) {
		
		return goodsMapper.getGoodsNameById(t_ID,t_Name);
	}

	@Override
	public Goods reviewByID(Integer id) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Goods> getGoods(Integer currentPageNo, Integer pageSize,Integer t_ID) {
		
		Integer startIndex = (currentPageNo -1)*pageSize;
		/*System.out.println(currentPageNo+","+pageSize+","+t_ID+","+startIndex);*/
		return goodsMapper.getGoods(startIndex, pageSize, t_ID);
	}

	@Override
	public int getGoodsCont(Integer t_ID) {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsCont(t_ID);
	}

	@Override
	public List<Goods> getGoodsByName(String g_Name ,Integer logid) {
		/*System.out.println(g_Name);*/
		return goodsMapper.getGoodsByName(g_Name , logid);
	}

	/*@Override
	public List<Brand> getGoodsByGid(Integer g_ID,Integer b_Id) {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsByGid(g_ID, b_Id);
	}*/
}
