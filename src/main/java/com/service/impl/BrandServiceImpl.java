package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Brand;
import com.mapper.BrandMapper;
import com.service.BrandService;

@Service("brandService")
public class BrandServiceImpl implements BrandService {

	@Autowired
	private BrandMapper brandMapper;
	
	@Override
	public List<Brand> getBrand() {
		// TODO Auto-generated method stub
		return brandMapper.getBrand();
	}

	@Override
	public List<Brand> getGoodsByGid(Integer g_ID, Integer b_Id) {
		// TODO Auto-generated method stub
		return brandMapper.getGoodsByGid(g_ID, b_Id);
	}

	@Override
	public int deleteByPrimaryKey(String b_ID) {
		return brandMapper.deleteByPrimaryKey(b_ID);
	}

	@Override
	public List<Brand> searchBrand(String b_Name) {
		return brandMapper.searchBrand(b_Name);
	}

}
